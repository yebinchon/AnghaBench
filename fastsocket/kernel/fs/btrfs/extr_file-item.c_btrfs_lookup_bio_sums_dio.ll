; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file-item.c_btrfs_lookup_bio_sums_dio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_file-item.c_btrfs_lookup_bio_sums_dio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.inode = type { i32 }
%struct.bio = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_lookup_bio_sums_dio(%struct.btrfs_root* %0, %struct.inode* %1, %struct.bio* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.btrfs_root*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.bio* %2, %struct.bio** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = load %struct.bio*, %struct.bio** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32*, i32** %10, align 8
  %16 = call i32 @__btrfs_lookup_bio_sums(%struct.btrfs_root* %11, %struct.inode* %12, %struct.bio* %13, i32 %14, i32* %15, i32 1)
  ret i32 %16
}

declare dso_local i32 @__btrfs_lookup_bio_sums(%struct.btrfs_root*, %struct.inode*, %struct.bio*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
