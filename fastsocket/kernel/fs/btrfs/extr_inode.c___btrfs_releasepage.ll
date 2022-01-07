; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_releasepage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c___btrfs_releasepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.extent_map_tree = type { i32 }
%struct.TYPE_4__ = type { %struct.extent_map_tree, %struct.extent_io_tree }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @__btrfs_releasepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__btrfs_releasepage(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_io_tree*, align 8
  %6 = alloca %struct.extent_map_tree*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @BTRFS_I(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.extent_io_tree* %14, %struct.extent_io_tree** %5, align 8
  %15 = load %struct.page*, %struct.page** %3, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.TYPE_4__* @BTRFS_I(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.extent_map_tree* %21, %struct.extent_map_tree** %6, align 8
  %22 = load %struct.extent_map_tree*, %struct.extent_map_tree** %6, align 8
  %23 = load %struct.extent_io_tree*, %struct.extent_io_tree** %5, align 8
  %24 = load %struct.page*, %struct.page** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @try_release_extent_mapping(%struct.extent_map_tree* %22, %struct.extent_io_tree* %23, %struct.page* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.page*, %struct.page** %3, align 8
  %31 = call i32 @ClearPagePrivate(%struct.page* %30)
  %32 = load %struct.page*, %struct.page** %3, align 8
  %33 = call i32 @set_page_private(%struct.page* %32, i32 0)
  %34 = load %struct.page*, %struct.page** %3, align 8
  %35 = call i32 @page_cache_release(%struct.page* %34)
  br label %36

36:                                               ; preds = %29, %2
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @BTRFS_I(i32) #1

declare dso_local i32 @try_release_extent_mapping(%struct.extent_map_tree*, %struct.extent_io_tree*, %struct.page*, i32) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
