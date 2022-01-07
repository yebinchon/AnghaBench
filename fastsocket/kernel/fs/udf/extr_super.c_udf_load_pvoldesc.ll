; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_pvoldesc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_super.c_udf_load_pvoldesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.primaryVolDesc = type { i32, i32, %struct.timestamp }
%struct.timestamp = type { i32, i32, i32, i32, i32, i32 }
%struct.ustr = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@TAG_IDENT_PVD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"volIdent[] = '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"volSetIdent[] = '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @udf_load_pvoldesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_load_pvoldesc(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.primaryVolDesc*, align 8
  %7 = alloca %struct.ustr*, align 8
  %8 = alloca %struct.ustr*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timestamp, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %11, align 4
  %13 = load i32, i32* @GFP_NOFS, align 4
  %14 = call %struct.ustr* @kmalloc(i32 8, i32 %13)
  store %struct.ustr* %14, %struct.ustr** %7, align 8
  %15 = load %struct.ustr*, %struct.ustr** %7, align 8
  %16 = icmp ne %struct.ustr* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %118

18:                                               ; preds = %2
  %19 = load i32, i32* @GFP_NOFS, align 4
  %20 = call %struct.ustr* @kmalloc(i32 8, i32 %19)
  store %struct.ustr* %20, %struct.ustr** %8, align 8
  %21 = load %struct.ustr*, %struct.ustr** %8, align 8
  %22 = icmp ne %struct.ustr* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %114

24:                                               ; preds = %18
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.buffer_head* @udf_read_tagged(%struct.super_block* %25, i32 %26, i32 %27, i64* %10)
  store %struct.buffer_head* %28, %struct.buffer_head** %9, align 8
  %29 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %30 = icmp ne %struct.buffer_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  br label %111

32:                                               ; preds = %24
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @TAG_IDENT_PVD, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.primaryVolDesc*
  store %struct.primaryVolDesc* %41, %struct.primaryVolDesc** %6, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %46 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %45, i32 0, i32 2
  %47 = bitcast %struct.timestamp* %12 to i8*
  %48 = bitcast %struct.timestamp* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 4 %48, i64 24, i1 false)
  %49 = call i64 @udf_disk_stamp_to_time(i32* %44, %struct.timestamp* byval(%struct.timestamp) align 8 %12)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51, %32
  %53 = load %struct.ustr*, %struct.ustr** %7, align 8
  %54 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %55 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @udf_build_ustr(%struct.ustr* %53, i32 %56, i32 32)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %52
  %60 = load %struct.ustr*, %struct.ustr** %8, align 8
  %61 = load %struct.ustr*, %struct.ustr** %7, align 8
  %62 = call i64 @udf_CS0toUTF8(%struct.ustr* %60, %struct.ustr* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %59
  %65 = load %struct.super_block*, %struct.super_block** %4, align 8
  %66 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ustr*, %struct.ustr** %8, align 8
  %70 = getelementptr inbounds %struct.ustr, %struct.ustr* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ustr*, %struct.ustr** %8, align 8
  %73 = getelementptr inbounds %struct.ustr, %struct.ustr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 31
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %81

77:                                               ; preds = %64
  %78 = load %struct.ustr*, %struct.ustr** %8, align 8
  %79 = getelementptr inbounds %struct.ustr, %struct.ustr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %81

81:                                               ; preds = %77, %76
  %82 = phi i32 [ 31, %76 ], [ %80, %77 ]
  %83 = call i32 @strncpy(i32 %68, i32 %71, i32 %82)
  %84 = load %struct.super_block*, %struct.super_block** %4, align 8
  %85 = call %struct.TYPE_2__* @UDF_SB(%struct.super_block* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %81, %59
  br label %90

90:                                               ; preds = %89, %52
  %91 = load %struct.ustr*, %struct.ustr** %7, align 8
  %92 = load %struct.primaryVolDesc*, %struct.primaryVolDesc** %6, align 8
  %93 = getelementptr inbounds %struct.primaryVolDesc, %struct.primaryVolDesc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @udf_build_ustr(%struct.ustr* %91, i32 %94, i32 128)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %90
  %98 = load %struct.ustr*, %struct.ustr** %8, align 8
  %99 = load %struct.ustr*, %struct.ustr** %7, align 8
  %100 = call i64 @udf_CS0toUTF8(%struct.ustr* %98, %struct.ustr* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %97
  %103 = load %struct.ustr*, %struct.ustr** %8, align 8
  %104 = getelementptr inbounds %struct.ustr, %struct.ustr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i8*, i32, ...) @udf_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  br label %108

108:                                              ; preds = %107, %90
  %109 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %110 = call i32 @brelse(%struct.buffer_head* %109)
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %31
  %112 = load %struct.ustr*, %struct.ustr** %8, align 8
  %113 = call i32 @kfree(%struct.ustr* %112)
  br label %114

114:                                              ; preds = %111, %23
  %115 = load %struct.ustr*, %struct.ustr** %7, align 8
  %116 = call i32 @kfree(%struct.ustr* %115)
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %17
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local %struct.ustr* @kmalloc(i32, i32) #1

declare dso_local %struct.buffer_head* @udf_read_tagged(%struct.super_block*, i32, i32, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @udf_disk_stamp_to_time(i32*, %struct.timestamp* byval(%struct.timestamp) align 8) #1

declare dso_local %struct.TYPE_2__* @UDF_SB(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @udf_build_ustr(%struct.ustr*, i32, i32) #1

declare dso_local i64 @udf_CS0toUTF8(%struct.ustr*, %struct.ustr*) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

declare dso_local i32 @udf_debug(i8*, i32, ...) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.ustr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
