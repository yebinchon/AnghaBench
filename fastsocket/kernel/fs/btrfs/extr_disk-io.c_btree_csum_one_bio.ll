; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_csum_one_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_csum_one_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, %struct.bio_vec* }
%struct.bio_vec = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.btrfs_root = type { i32 }
%struct.TYPE_6__ = type { %struct.btrfs_root* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @btree_csum_one_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_csum_one_bio(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_vec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 1
  %9 = load %struct.bio_vec*, %struct.bio_vec** %8, align 8
  store %struct.bio_vec* %9, %struct.bio_vec** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.bio*, %struct.bio** %2, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  br label %16

16:                                               ; preds = %41, %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bio*, %struct.bio** %2, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %24 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.TYPE_6__* @BTRFS_I(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.btrfs_root*, %struct.btrfs_root** %31, align 8
  store %struct.btrfs_root* %32, %struct.btrfs_root** %5, align 8
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %34 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %35 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 @csum_dirty_buffer(%struct.btrfs_root* %33, %struct.TYPE_5__* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  br label %46

41:                                               ; preds = %22
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  %44 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %45 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %44, i32 1
  store %struct.bio_vec* %45, %struct.bio_vec** %3, align 8
  br label %16

46:                                               ; preds = %40, %16
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @csum_dirty_buffer(%struct.btrfs_root*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
