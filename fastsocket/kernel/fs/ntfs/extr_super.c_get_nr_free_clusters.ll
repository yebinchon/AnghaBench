; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_get_nr_free_clusters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ntfs/extr_super.c_get_nr_free_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Entering.\00", align 1
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Reading $Bitmap, max_index = 0x%lx, max_size = 0x%lx.\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"read_mapping_page() error. Skipping page (index 0x%lx).\00", align 1
@KM_USER0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Finished reading $Bitmap, last index = 0x%lx.\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Exiting.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*)* @get_nr_free_clusters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_nr_free_clusters(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.address_space*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.address_space*, %struct.address_space** %16, align 8
  store %struct.address_space* %17, %struct.address_space** %5, align 8
  %18 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = call i32 @down_read(i32* %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 7
  %26 = ashr i64 %25, 3
  %27 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = sub nsw i64 %29, 1
  %31 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %32 = zext i32 %31 to i64
  %33 = ashr i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %37 = sdiv i32 %36, 4
  %38 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %86, %1
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %39
  %44 = load %struct.address_space*, %struct.address_space** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.page* @read_mapping_page(%struct.address_space* %44, i32 %45, i32* null)
  store %struct.page* %46, %struct.page** %6, align 8
  %47 = load %struct.page*, %struct.page** %6, align 8
  %48 = call i64 @IS_ERR(%struct.page* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %54 = mul nsw i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %3, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %3, align 8
  br label %86

58:                                               ; preds = %43
  %59 = load %struct.page*, %struct.page** %6, align 8
  %60 = load i32, i32* @KM_USER0, align 4
  %61 = call i64 @kmap_atomic(%struct.page* %59, i32 %60)
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %4, align 8
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %77, %58
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %66 = sdiv i32 %65, 4
  %67 = icmp ult i32 %64, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @hweight32(i32 %73)
  %75 = load i64, i64* %3, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %3, align 8
  br label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %9, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %63

80:                                               ; preds = %63
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* @KM_USER0, align 4
  %83 = call i32 @kunmap_atomic(i32* %81, i32 %82)
  %84 = load %struct.page*, %struct.page** %6, align 8
  %85 = call i32 @page_cache_release(%struct.page* %84)
  br label %86

86:                                               ; preds = %80, %50
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %39

89:                                               ; preds = %39
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %90, 1
  %92 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = and i64 %95, 63
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %89
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = and i64 %101, 63
  %103 = sub nsw i64 64, %102
  %104 = load i64, i64* %3, align 8
  %105 = add nsw i64 %104, %103
  store i64 %105, i64* %3, align 8
  br label %106

106:                                              ; preds = %98, %89
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = call i32 @up_read(i32* %108)
  %110 = load i64, i64* %3, align 8
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i64 0, i64* %3, align 8
  br label %113

113:                                              ; preds = %112, %106
  %114 = call i32 (i8*, ...) @ntfs_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i32 @ntfs_debug(i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @kmap_atomic(%struct.page*, i32) #1

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
