; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_file.c_udf_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_file.c_udf_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, %struct.file* }
%struct.file = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.iovec = type { i32 }
%struct.udf_inode_info = type { i64, i32 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@O_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"udf_expand_adinicb: err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @udf_file_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.file*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.udf_inode_info*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %18 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %17, i32 0, i32 1
  %19 = load %struct.file*, %struct.file** %18, align 8
  store %struct.file* %19, %struct.file** %11, align 8
  %20 = load %struct.file*, %struct.file** %11, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %12, align 8
  %26 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %27 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %29)
  store %struct.udf_inode_info* %30, %struct.udf_inode_info** %16, align 8
  %31 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %32 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %107

36:                                               ; preds = %4
  %37 = load %struct.file*, %struct.file** %11, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @O_APPEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %14, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load %struct.inode*, %struct.inode** %12, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.inode*, %struct.inode** %12, align 8
  %56 = call i64 @udf_file_entry_alloc_offset(%struct.inode* %55)
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i64, i64* %15, align 8
  %61 = add i64 %59, %60
  %62 = icmp ult i64 %54, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %49
  %64 = load %struct.inode*, %struct.inode** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %15, align 8
  %68 = add i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @udf_expand_file_adinicb(%struct.inode* %64, i32 %69, i32* %13)
  %71 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %72 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %63
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @udf_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %120

80:                                               ; preds = %63
  br label %106

81:                                               ; preds = %49
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %15, align 8
  %85 = add i64 %83, %84
  %86 = load %struct.inode*, %struct.inode** %12, align 8
  %87 = getelementptr inbounds %struct.inode, %struct.inode* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = icmp ugt i64 %85, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %81
  %92 = load i32, i32* %14, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %98 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  br label %105

99:                                               ; preds = %81
  %100 = load %struct.inode*, %struct.inode** %12, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.udf_inode_info*, %struct.udf_inode_info** %16, align 8
  %104 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %91
  br label %106

106:                                              ; preds = %105, %80
  br label %107

107:                                              ; preds = %106, %4
  %108 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %109 = load %struct.iovec*, %struct.iovec** %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @generic_file_aio_write(%struct.kiocb* %108, %struct.iovec* %109, i64 %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load %struct.inode*, %struct.inode** %12, align 8
  %117 = call i32 @mark_inode_dirty(%struct.inode* %116)
  br label %118

118:                                              ; preds = %115, %107
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %118, %76
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #1

declare dso_local i64 @udf_file_entry_alloc_offset(%struct.inode*) #1

declare dso_local i32 @udf_expand_file_adinicb(%struct.inode*, i32, i32*) #1

declare dso_local i32 @udf_debug(i8*, i32) #1

declare dso_local i32 @generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
