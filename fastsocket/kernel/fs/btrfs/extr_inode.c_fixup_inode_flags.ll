; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_fixup_inode_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_inode.c_fixup_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_inode = type { i32 }

@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@BTRFS_INODE_COMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.inode*)* @fixup_inode_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_inode_flags(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btrfs_inode*, align 8
  %6 = alloca %struct.btrfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %7)
  store %struct.btrfs_inode* %8, %struct.btrfs_inode** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %9)
  store %struct.btrfs_inode* %10, %struct.btrfs_inode** %6, align 8
  %11 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %12 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %19 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %20 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %27 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %23, %17
  %31 = load %struct.btrfs_inode*, %struct.btrfs_inode** %5, align 8
  %32 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %39 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %40 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %46 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %58

49:                                               ; preds = %30
  %50 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %51 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.btrfs_inode*, %struct.btrfs_inode** %6, align 8
  %55 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %49, %37
  ret void
}

declare dso_local %struct.btrfs_inode* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
