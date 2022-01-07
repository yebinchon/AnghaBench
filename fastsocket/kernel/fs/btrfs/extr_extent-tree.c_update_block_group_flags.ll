; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_update_block_group_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_extent-tree.c_update_block_group_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@BTRFS_BLOCK_GROUP_RAID0 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID1 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_RAID10 = common dso_local global i32 0, align 4
@BTRFS_BLOCK_GROUP_DUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32)* @update_block_group_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_block_group_flags(%struct.btrfs_root* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %9 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @get_restripe_target(%struct.TYPE_4__* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @extended_to_chunk(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %20 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %27 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %25, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %35 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %67

41:                                               ; preds = %18
  %42 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID0, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %93

55:                                               ; preds = %41
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %58 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID10, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %3, align 4
  br label %93

66:                                               ; preds = %55
  br label %91

67:                                               ; preds = %18
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %3, align 4
  br label %93

74:                                               ; preds = %67
  %75 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @BTRFS_BLOCK_GROUP_DUP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %74
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @BTRFS_BLOCK_GROUP_RAID1, align 4
  %89 = or i32 %87, %88
  store i32 %89, i32* %3, align 4
  br label %93

90:                                               ; preds = %74
  br label %91

91:                                               ; preds = %90, %66
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %91, %86, %72, %62, %53, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @get_restripe_target(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @extended_to_chunk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
