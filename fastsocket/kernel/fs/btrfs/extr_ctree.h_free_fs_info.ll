; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.h_free_fs_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ctree.h_free_fs_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info*, %struct.btrfs_fs_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*)* @free_fs_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_fs_info(%struct.btrfs_fs_info* %0) #0 {
  %2 = alloca %struct.btrfs_fs_info*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %2, align 8
  %3 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %4 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %3, i32 0, i32 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %6 = call i32 @kfree(%struct.btrfs_fs_info* %5)
  %7 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %8 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %7, i32 0, i32 7
  %9 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %8, align 8
  %10 = call i32 @kfree(%struct.btrfs_fs_info* %9)
  %11 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %12 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %11, i32 0, i32 6
  %13 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %14 = call i32 @kfree(%struct.btrfs_fs_info* %13)
  %15 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %16 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %15, i32 0, i32 5
  %17 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %16, align 8
  %18 = call i32 @kfree(%struct.btrfs_fs_info* %17)
  %19 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %20 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %19, i32 0, i32 4
  %21 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %20, align 8
  %22 = call i32 @kfree(%struct.btrfs_fs_info* %21)
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %24 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %23, i32 0, i32 3
  %25 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %24, align 8
  %26 = call i32 @kfree(%struct.btrfs_fs_info* %25)
  %27 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %28 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %27, i32 0, i32 2
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %28, align 8
  %30 = call i32 @kfree(%struct.btrfs_fs_info* %29)
  %31 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %32 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %31, i32 0, i32 1
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %32, align 8
  %34 = call i32 @kfree(%struct.btrfs_fs_info* %33)
  %35 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %36 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %35, i32 0, i32 0
  %37 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %36, align 8
  %38 = call i32 @kfree(%struct.btrfs_fs_info* %37)
  %39 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %2, align 8
  %40 = call i32 @kfree(%struct.btrfs_fs_info* %39)
  ret void
}

declare dso_local i32 @kfree(%struct.btrfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
