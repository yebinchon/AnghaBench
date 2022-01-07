; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_find_device_for_logical.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_volumes.c_btrfs_find_device_for_logical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_device = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.btrfs_mapping_tree }
%struct.btrfs_mapping_tree = type { i32 }
%struct.btrfs_bio = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.btrfs_device* }

@WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.btrfs_device* @btrfs_find_device_for_logical(%struct.btrfs_root* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_device*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_mapping_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btrfs_bio*, align 8
  %12 = alloca %struct.btrfs_device*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %14 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.btrfs_mapping_tree* %16, %struct.btrfs_mapping_tree** %8, align 8
  store i32 0, i32* %10, align 4
  store %struct.btrfs_bio* null, %struct.btrfs_bio** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.btrfs_mapping_tree*, %struct.btrfs_mapping_tree** %8, align 8
  %22 = load i32, i32* @WRITE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @btrfs_map_block(%struct.btrfs_mapping_tree* %21, i32 %22, i32 %23, i32* %10, %struct.btrfs_bio** %11, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %30 = icmp ne %struct.btrfs_bio* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  store %struct.btrfs_device* null, %struct.btrfs_device** %4, align 8
  br label %53

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %36 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %42 = getelementptr inbounds %struct.btrfs_bio, %struct.btrfs_bio* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.btrfs_device*, %struct.btrfs_device** %48, align 8
  store %struct.btrfs_device* %49, %struct.btrfs_device** %12, align 8
  %50 = load %struct.btrfs_bio*, %struct.btrfs_bio** %11, align 8
  %51 = call i32 @kfree(%struct.btrfs_bio* %50)
  %52 = load %struct.btrfs_device*, %struct.btrfs_device** %12, align 8
  store %struct.btrfs_device* %52, %struct.btrfs_device** %4, align 8
  br label %53

53:                                               ; preds = %33, %28
  %54 = load %struct.btrfs_device*, %struct.btrfs_device** %4, align 8
  ret %struct.btrfs_device* %54
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_map_block(%struct.btrfs_mapping_tree*, i32, i32, i32*, %struct.btrfs_bio**, i32) #1

declare dso_local i32 @kfree(%struct.btrfs_bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
