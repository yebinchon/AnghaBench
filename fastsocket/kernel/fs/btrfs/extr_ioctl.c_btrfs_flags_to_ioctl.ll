; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_flags_to_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_flags_to_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTRFS_INODE_SYNC = common dso_local global i32 0, align 4
@FS_SYNC_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_IMMUTABLE = common dso_local global i32 0, align 4
@FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_APPEND = common dso_local global i32 0, align 4
@FS_APPEND_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_NODUMP = common dso_local global i32 0, align 4
@FS_NODUMP_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_NOATIME = common dso_local global i32 0, align 4
@FS_NOATIME_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_DIRSYNC = common dso_local global i32 0, align 4
@FS_DIRSYNC_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_NODATACOW = common dso_local global i32 0, align 4
@FS_NOCOW_FL = common dso_local global i32 0, align 4
@BTRFS_INODE_COMPRESS = common dso_local global i32 0, align 4
@BTRFS_INODE_NOCOMPRESS = common dso_local global i32 0, align 4
@FS_COMPR_FL = common dso_local global i32 0, align 4
@FS_NOCOMP_FL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @btrfs_flags_to_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_flags_to_ioctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @BTRFS_INODE_SYNC, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @FS_SYNC_FL, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @BTRFS_INODE_IMMUTABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @FS_IMMUTABLE_FL, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @BTRFS_INODE_APPEND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @FS_APPEND_FL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @BTRFS_INODE_NODUMP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @FS_NODUMP_FL, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @BTRFS_INODE_NOATIME, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @FS_NOATIME_FL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* @BTRFS_INODE_DIRSYNC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @FS_DIRSYNC_FL, align 4
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @BTRFS_INODE_NODATACOW, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @FS_NOCOW_FL, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* @BTRFS_INODE_COMPRESS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @FS_COMPR_FL, align 4
  %78 = load i32, i32* %3, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %3, align 4
  br label %90

80:                                               ; preds = %71, %66
  %81 = load i32, i32* %2, align 4
  %82 = load i32, i32* @BTRFS_INODE_NOCOMPRESS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load i32, i32* @FS_NOCOMP_FL, align 4
  %87 = load i32, i32* %3, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %80
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
