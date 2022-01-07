; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_submit_bio_hook.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_disk-io.c_btree_submit_bio_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.bio = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@REQ_WRITE = common dso_local global i32 0, align 4
@__btree_submit_bio_start = common dso_local global i32 0, align 4
@__btree_submit_bio_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, %struct.bio*, i32, i64, i32)* @btree_submit_bio_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_submit_bio_hook(%struct.inode* %0, i32 %1, %struct.bio* %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bio*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.bio* %2, %struct.bio** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @REQ_WRITE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %6
  %20 = load %struct.inode*, %struct.inode** %8, align 8
  %21 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.bio*, %struct.bio** %10, align 8
  %27 = call i32 @btrfs_bio_wq_end_io(i32 %25, %struct.bio* %26, i32 1)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* %7, align 4
  br label %56

32:                                               ; preds = %19
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  %34 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.bio*, %struct.bio** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @btrfs_map_bio(%struct.TYPE_3__* %36, i32 %37, %struct.bio* %38, i32 %39, i32 0)
  store i32 %40, i32* %7, align 4
  br label %56

41:                                               ; preds = %6
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %42)
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.bio*, %struct.bio** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @__btree_submit_bio_start, align 4
  %54 = load i32, i32* @__btree_submit_bio_done, align 4
  %55 = call i32 @btrfs_wq_submit_bio(i32 %47, %struct.inode* %48, i32 %49, %struct.bio* %50, i32 %51, i32 0, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %41, %32, %30
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @btrfs_bio_wq_end_io(i32, %struct.bio*, i32) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @btrfs_map_bio(%struct.TYPE_3__*, i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @btrfs_wq_submit_bio(i32, %struct.inode*, i32, %struct.bio*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
