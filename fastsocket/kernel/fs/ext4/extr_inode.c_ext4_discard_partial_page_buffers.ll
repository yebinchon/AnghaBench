; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_discard_partial_page_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_inode.c_ext4_discard_partial_page_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.address_space = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.page = type { i32 }

@PAGE_CACHE_SHIFT = common dso_local global i32 0, align 4
@__GFP_FS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_discard_partial_page_buffers(i32* %0, %struct.address_space* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.address_space* %1, %struct.address_space** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.address_space*, %struct.address_space** %8, align 8
  %16 = getelementptr inbounds %struct.address_space, %struct.address_space* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.address_space*, %struct.address_space** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PAGE_CACHE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  %22 = load %struct.address_space*, %struct.address_space** %8, align 8
  %23 = call i32 @mapping_gfp_mask(%struct.address_space* %22)
  %24 = load i32, i32* @__GFP_FS, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call %struct.page* @find_or_create_page(%struct.address_space* %18, i32 %21, i32 %26)
  store %struct.page* %27, %struct.page** %13, align 8
  %28 = load %struct.page*, %struct.page** %13, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %46

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %12, align 8
  %36 = load %struct.page*, %struct.page** %13, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ext4_discard_partial_page_buffers_no_lock(i32* %34, %struct.inode* %35, %struct.page* %36, i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  %41 = load %struct.page*, %struct.page** %13, align 8
  %42 = call i32 @unlock_page(%struct.page* %41)
  %43 = load %struct.page*, %struct.page** %13, align 8
  %44 = call i32 @page_cache_release(%struct.page* %43)
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %33, %30
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.page* @find_or_create_page(%struct.address_space*, i32, i32) #1

declare dso_local i32 @mapping_gfp_mask(%struct.address_space*) #1

declare dso_local i32 @ext4_discard_partial_page_buffers_no_lock(i32*, %struct.inode*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
