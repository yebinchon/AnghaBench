; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_update_iflags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_update_iflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_inode = type { i32 }

@S_SYNC = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@S_DIRSYNC = common dso_local global i32 0, align 4
@BTRFS_INODE_SYNC = common dso_local global i32 0, align 4
@BTRFS_INODE_IMMUTABLE = common dso_local global i32 0, align 4
@BTRFS_INODE_APPEND = common dso_local global i32 0, align 4
@BTRFS_INODE_NOATIME = common dso_local global i32 0, align 4
@BTRFS_INODE_DIRSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btrfs_update_iflags(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.btrfs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.btrfs_inode* @BTRFS_I(%struct.inode* %4)
  store %struct.btrfs_inode* %5, %struct.btrfs_inode** %3, align 8
  %6 = load i32, i32* @S_SYNC, align 4
  %7 = load i32, i32* @S_APPEND, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @S_IMMUTABLE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @S_NOATIME, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @S_DIRSYNC, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.inode*, %struct.inode** %2, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %21 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BTRFS_INODE_SYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @S_SYNC, align 4
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %1
  %33 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %34 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BTRFS_INODE_IMMUTABLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @S_IMMUTABLE, align 4
  %41 = load %struct.inode*, %struct.inode** %2, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %47 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @BTRFS_INODE_APPEND, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* @S_APPEND, align 4
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %45
  %59 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %60 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @BTRFS_INODE_NOATIME, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load i32, i32* @S_NOATIME, align 4
  %67 = load %struct.inode*, %struct.inode** %2, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %58
  %72 = load %struct.btrfs_inode*, %struct.btrfs_inode** %3, align 8
  %73 = getelementptr inbounds %struct.btrfs_inode, %struct.btrfs_inode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BTRFS_INODE_DIRSYNC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load i32, i32* @S_DIRSYNC, align 4
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %71
  ret void
}

declare dso_local %struct.btrfs_inode* @BTRFS_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
