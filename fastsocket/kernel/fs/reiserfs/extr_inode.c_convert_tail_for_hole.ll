; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_convert_tail_for_hole.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_convert_tail_for_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32, %struct.page* }
%struct.page = type { i64 }

@EIO = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i32 0, align 4
@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i32)* @convert_tail_for_hole to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_tail_for_hole(%struct.inode* %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 1
  %16 = load %struct.page*, %struct.page** %15, align 8
  store %struct.page* %16, %struct.page** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %19 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %17, %21
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %96

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @PAGE_CACHE_SIZE, align 4
  %30 = sub nsw i32 %29, 1
  %31 = and i32 %28, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = or i64 %33, %38
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %8, align 8
  %45 = load %struct.page*, %struct.page** %12, align 8
  %46 = icmp ne %struct.page* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %27
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.page*, %struct.page** %12, align 8
  %50 = getelementptr inbounds %struct.page, %struct.page* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %47, %27
  %54 = load %struct.inode*, %struct.inode** %5, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call %struct.page* @grab_cache_page(i32 %56, i64 %57)
  store %struct.page* %58, %struct.page** %11, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.page*, %struct.page** %11, align 8
  %62 = icmp ne %struct.page* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %94

64:                                               ; preds = %53
  br label %67

65:                                               ; preds = %47
  %66 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %66, %struct.page** %11, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = load %struct.page*, %struct.page** %11, align 8
  %69 = call i32 @fix_tail_page_for_writing(%struct.page* %68)
  %70 = load %struct.page*, %struct.page** %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @reiserfs_prepare_write(i32* null, %struct.page* %70, i64 %71, i64 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  br label %84

77:                                               ; preds = %67
  %78 = load %struct.page*, %struct.page** %11, align 8
  %79 = call i32 @flush_dcache_page(%struct.page* %78)
  %80 = load %struct.page*, %struct.page** %11, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = call i32 @reiserfs_commit_write(i32* null, %struct.page* %80, i64 %81, i64 %82)
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %77, %76
  %85 = load %struct.page*, %struct.page** %11, align 8
  %86 = load %struct.page*, %struct.page** %12, align 8
  %87 = icmp ne %struct.page* %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.page*, %struct.page** %11, align 8
  %90 = call i32 @unlock_page(%struct.page* %89)
  %91 = load %struct.page*, %struct.page** %11, align 8
  %92 = call i32 @page_cache_release(%struct.page* %91)
  br label %93

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %24
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.page* @grab_cache_page(i32, i64) #1

declare dso_local i32 @fix_tail_page_for_writing(%struct.page*) #1

declare dso_local i32 @reiserfs_prepare_write(i32*, %struct.page*, i64, i64) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @reiserfs_commit_write(i32*, %struct.page*, i64, i64) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
