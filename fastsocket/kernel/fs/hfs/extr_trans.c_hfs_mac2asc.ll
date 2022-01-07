; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_trans.c_hfs_mac2asc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_trans.c_hfs_mac2asc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.hfs_name = type { i8*, i32 }
%struct.nls_table = type { i32 (i8*, i32, i8*)*, i32 (i8, i8*, i32)* }
%struct.TYPE_2__ = type { %struct.nls_table*, %struct.nls_table* }

@HFS_MAX_NAMELEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfs_mac2asc(%struct.super_block* %0, i8* %1, %struct.hfs_name* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hfs_name*, align 8
  %7 = alloca %struct.nls_table*, align 8
  %8 = alloca %struct.nls_table*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.hfs_name* %2, %struct.hfs_name** %6, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.nls_table*, %struct.nls_table** %18, align 8
  store %struct.nls_table* %19, %struct.nls_table** %7, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call %struct.TYPE_2__* @HFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nls_table*, %struct.nls_table** %22, align 8
  store %struct.nls_table* %23, %struct.nls_table** %8, align 8
  %24 = load %struct.hfs_name*, %struct.hfs_name** %6, align 8
  %25 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %9, align 8
  %27 = load %struct.hfs_name*, %struct.hfs_name** %6, align 8
  %28 = getelementptr inbounds %struct.hfs_name, %struct.hfs_name* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %11, align 4
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i32, i32* @HFS_MAX_NAMELEN, align 4
  store i32 %31, i32* %12, align 4
  %32 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %33 = icmp ne %struct.nls_table* %32, null
  br i1 %33, label %34, label %97

34:                                               ; preds = %3
  br label %35

35:                                               ; preds = %88, %34
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %96

38:                                               ; preds = %35
  %39 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %40 = icmp ne %struct.nls_table* %39, null
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load %struct.nls_table*, %struct.nls_table** %7, align 8
  %43 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %42, i32 0, i32 0
  %44 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %43, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 %44(i8* %45, i32 %46, i8* %14)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i8 63, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %13, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %9, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %65

59:                                               ; preds = %38
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %9, align 8
  %62 = load i8, i8* %60, align 1
  store i8 %62, i8* %14, align 1
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %59, %51
  %66 = load i8, i8* %14, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 47
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i8 58, i8* %14, align 1
  br label %70

70:                                               ; preds = %69, %65
  %71 = load %struct.nls_table*, %struct.nls_table** %8, align 8
  %72 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %71, i32 0, i32 1
  %73 = load i32 (i8, i8*, i32)*, i32 (i8, i8*, i32)** %72, align 8
  %74 = load i8, i8* %14, align 1
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 %73(i8 signext %74, i8* %75, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @ENAMETOOLONG, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %119

86:                                               ; preds = %80
  %87 = load i8*, i8** %10, align 8
  store i8 63, i8* %87, align 1
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %70
  %89 = load i32, i32* %13, align 4
  %90 = load i8*, i8** %10, align 8
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8* %92, i8** %10, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %35

96:                                               ; preds = %35
  br label %118

97:                                               ; preds = %3
  br label %98

98:                                               ; preds = %112, %97
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %11, align 4
  %101 = icmp sge i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  %105 = load i8, i8* %103, align 1
  store i8 %105, i8* %15, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 47
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %112

109:                                              ; preds = %102
  %110 = load i8, i8* %15, align 1
  %111 = sext i8 %110 to i32
  br label %112

112:                                              ; preds = %109, %108
  %113 = phi i32 [ 58, %108 ], [ %111, %109 ]
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  store i8 %114, i8* %115, align 1
  br label %98

117:                                              ; preds = %98
  br label %118

118:                                              ; preds = %117, %96
  br label %119

119:                                              ; preds = %118, %85
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  ret i32 %125
}

declare dso_local %struct.TYPE_2__* @HFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
