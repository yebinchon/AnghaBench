; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_file-nommu.c_ramfs_nommu_expand_for_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ramfs/extr_file-nommu.c_ramfs_nommu_expand_for_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.page = type { i32 }

@MAX_ORDER = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ramfs_nommu_expand_for_mapping(%struct.inode* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.page*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @get_order(i64 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @MAX_ORDER, align 4
  %19 = icmp uge i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EFBIG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %124

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @inode_newsize_ok(%struct.inode* %27, i64 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %26
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @i_size_write(%struct.inode* %35, i64 %36)
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mapping_gfp_mask(i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = call %struct.page* @alloc_pages(i32 %41, i32 %42)
  store %struct.page* %43, %struct.page** %10, align 8
  %44 = load %struct.page*, %struct.page** %10, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %124

49:                                               ; preds = %34
  %50 = load i32, i32* %11, align 4
  %51 = zext i32 %50 to i64
  %52 = shl i64 1, %51
  store i64 %52, i64* %7, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @PAGE_SIZE, align 8
  %55 = add i64 %53, %54
  %56 = sub i64 %55, 1
  %57 = load i64, i64* @PAGE_SHIFT, align 8
  %58 = lshr i64 %56, %57
  store i64 %58, i64* %6, align 8
  %59 = load %struct.page*, %struct.page** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @split_page(%struct.page* %59, i32 %60)
  %62 = load i64, i64* %6, align 8
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %72, %49
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %63
  %68 = load %struct.page*, %struct.page** %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.page, %struct.page* %68, i64 %69
  %71 = call i32 @__free_page(%struct.page* %70)
  br label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  br label %63

75:                                               ; preds = %63
  %76 = load i64, i64* @PAGE_SIZE, align 8
  %77 = load i64, i64* %6, align 8
  %78 = mul i64 %76, %77
  store i64 %78, i64* %5, align 8
  %79 = load %struct.page*, %struct.page** %10, align 8
  %80 = call i8* @page_address(%struct.page* %79)
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @memset(i8* %81, i32 0, i64 %82)
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %107, %75
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load %struct.page*, %struct.page** %10, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.page, %struct.page* %89, i64 %90
  store %struct.page* %91, %struct.page** %14, align 8
  %92 = load %struct.page*, %struct.page** %14, align 8
  %93 = load %struct.inode*, %struct.inode** %4, align 8
  %94 = getelementptr inbounds %struct.inode, %struct.inode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %8, align 8
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i32 @add_to_page_cache_lru(%struct.page* %92, i32 %95, i64 %96, i32 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %111

102:                                              ; preds = %88
  %103 = load %struct.page*, %struct.page** %14, align 8
  %104 = call i32 @SetPageDirty(%struct.page* %103)
  %105 = load %struct.page*, %struct.page** %14, align 8
  %106 = call i32 @unlock_page(%struct.page* %105)
  br label %107

107:                                              ; preds = %102
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %8, align 8
  br label %84

110:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %124

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %116, %111
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %6, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load %struct.page*, %struct.page** %10, align 8
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  %120 = getelementptr inbounds %struct.page, %struct.page* %117, i64 %118
  %121 = call i32 @__free_page(%struct.page* %120)
  br label %112

122:                                              ; preds = %112
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %110, %46, %32, %23
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @inode_newsize_ok(%struct.inode*, i64) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(i32) #1

declare dso_local i32 @split_page(%struct.page*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @add_to_page_cache_lru(%struct.page*, i32, i64, i32) #1

declare dso_local i32 @SetPageDirty(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
