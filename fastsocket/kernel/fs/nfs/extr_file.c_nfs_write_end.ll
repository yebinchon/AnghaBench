; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_write_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_file.c_nfs_write_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.address_space = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGECACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"NFS: write_end(%s/%s(%ld), %u@%lld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, i32, i32, i32, %struct.page*, i8*)* @nfs_write_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_write_end(%struct.file* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4, %struct.page* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.address_space*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.address_space* %1, %struct.address_space** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.page* %5, %struct.page** %14, align 8
  store i8* %6, i8** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = and i32 %20, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @PAGECACHE, align 4
  %25 = load %struct.file*, %struct.file** %9, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.file*, %struct.file** %9, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.address_space*, %struct.address_space** %10, align 8
  %42 = getelementptr inbounds %struct.address_space, %struct.address_space* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = call i32 @dfprintk(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %40, i32 %45, i32 %46, i64 %48)
  %50 = load %struct.page*, %struct.page** %14, align 8
  %51 = call i32 @PageUptodate(%struct.page* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %91, label %53

53:                                               ; preds = %7
  %54 = load %struct.page*, %struct.page** %14, align 8
  %55 = call i32 @nfs_page_length(%struct.page* %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %12, align 4
  %58 = add i32 %56, %57
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %18, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = load i32, i32* %16, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %66 = call i32 @zero_user_segments(%struct.page* %62, i32 0, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.page*, %struct.page** %14, align 8
  %68 = call i32 @SetPageUptodate(%struct.page* %67)
  br label %90

69:                                               ; preds = %53
  %70 = load i32, i32* %19, align 4
  %71 = load i32, i32* %18, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load %struct.page*, %struct.page** %14, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %77 = call i32 @zero_user_segment(%struct.page* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load %struct.page*, %struct.page** %14, align 8
  %82 = call i32 @SetPageUptodate(%struct.page* %81)
  br label %83

83:                                               ; preds = %80, %73
  br label %89

84:                                               ; preds = %69
  %85 = load %struct.page*, %struct.page** %14, align 8
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %88 = call i32 @zero_user_segment(%struct.page* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %83
  br label %90

90:                                               ; preds = %89, %61
  br label %91

91:                                               ; preds = %90, %7
  %92 = load %struct.file*, %struct.file** %9, align 8
  %93 = load %struct.page*, %struct.page** %14, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @nfs_updatepage(%struct.file* %92, %struct.page* %93, i32 %94, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load %struct.page*, %struct.page** %14, align 8
  %98 = call i32 @unlock_page(%struct.page* %97)
  %99 = load %struct.page*, %struct.page** %14, align 8
  %100 = call i32 @page_cache_release(%struct.page* %99)
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i32, i32* %17, align 4
  store i32 %104, i32* %8, align 4
  br label %107

105:                                              ; preds = %91
  %106 = load i32, i32* %13, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i32, i32* %8, align 4
  ret i32 %108
}

declare dso_local i32 @dfprintk(i32, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @nfs_page_length(%struct.page*) #1

declare dso_local i32 @zero_user_segments(%struct.page*, i32, i32, i32, i32) #1

declare dso_local i32 @SetPageUptodate(%struct.page*) #1

declare dso_local i32 @zero_user_segment(%struct.page*, i32, i32) #1

declare dso_local i32 @nfs_updatepage(%struct.file*, %struct.page*, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
