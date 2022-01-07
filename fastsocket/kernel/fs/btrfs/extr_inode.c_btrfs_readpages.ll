; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_readpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_btrfs_readpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.address_space = type { i32 }
%struct.list_head = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_2__ = type { %struct.extent_io_tree }

@btrfs_get_extent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)* @btrfs_readpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_readpages(%struct.file* %0, %struct.address_space* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.extent_io_tree*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.address_space* %1, %struct.address_space** %6, align 8
  store %struct.list_head* %2, %struct.list_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.address_space*, %struct.address_space** %6, align 8
  %11 = getelementptr inbounds %struct.address_space, %struct.address_space* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_2__* @BTRFS_I(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.extent_io_tree* %14, %struct.extent_io_tree** %9, align 8
  %15 = load %struct.extent_io_tree*, %struct.extent_io_tree** %9, align 8
  %16 = load %struct.address_space*, %struct.address_space** %6, align 8
  %17 = load %struct.list_head*, %struct.list_head** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @btrfs_get_extent, align 4
  %20 = call i32 @extent_readpages(%struct.extent_io_tree* %15, %struct.address_space* %16, %struct.list_head* %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local %struct.TYPE_2__* @BTRFS_I(i32) #1

declare dso_local i32 @extent_readpages(%struct.extent_io_tree*, %struct.address_space*, %struct.list_head*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
