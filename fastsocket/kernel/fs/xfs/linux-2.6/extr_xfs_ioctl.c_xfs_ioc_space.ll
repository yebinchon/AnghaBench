; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_ioctl.c_xfs_ioc_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_ioctl.c_xfs_ioc_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32, i32 }
%struct.file = type { i32, i32, i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@XFS_ATTR_NONBLOCK = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@XFS_ATTR_SYNC = common dso_local global i32 0, align 4
@IO_INVIS = common dso_local global i32 0, align 4
@XFS_ATTR_DMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ioc_space(%struct.xfs_inode* %0, %struct.inode* %1, %struct.file* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xfs_inode* %0, %struct.xfs_inode** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store %struct.file* %2, %struct.file** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %17 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @xfs_sb_version_hasextflgbit(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  %28 = call i32 @XFS_ERROR(i32 %27)
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %117

30:                                               ; preds = %22, %6
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @S_IMMUTABLE, align 4
  %35 = load i32, i32* @S_APPEND, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @EPERM, align 4
  %41 = call i32 @XFS_ERROR(i32 %40)
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %117

43:                                               ; preds = %30
  %44 = load %struct.file*, %struct.file** %10, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FMODE_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @EBADF, align 4
  %52 = call i32 @XFS_ERROR(i32 %51)
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %117

54:                                               ; preds = %43
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @S_ISREG(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = call i32 @XFS_ERROR(i32 %61)
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %7, align 4
  br label %117

64:                                               ; preds = %54
  %65 = load %struct.file*, %struct.file** %10, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @O_NDELAY, align 4
  %69 = load i32, i32* @O_NONBLOCK, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* @XFS_ATTR_NONBLOCK, align 4
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %73, %64
  %78 = load %struct.file*, %struct.file** %10, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @O_SYNC, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @XFS_ATTR_SYNC, align 4
  %86 = load i32, i32* %14, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @IO_INVIS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @XFS_ATTR_DMI, align 4
  %95 = load i32, i32* %14, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %14, align 4
  br label %97

97:                                               ; preds = %93, %88
  %98 = load %struct.file*, %struct.file** %10, align 8
  %99 = call i32 @mnt_want_write_file(%struct.file* %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %7, align 4
  br label %117

104:                                              ; preds = %97
  %105 = load %struct.xfs_inode*, %struct.xfs_inode** %8, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32*, i32** %13, align 8
  %108 = load %struct.file*, %struct.file** %10, align 8
  %109 = getelementptr inbounds %struct.file, %struct.file* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @xfs_change_file_space(%struct.xfs_inode* %105, i32 %106, i32* %107, i32 %110, i32 %111)
  store i32 %112, i32* %15, align 4
  %113 = load %struct.file*, %struct.file** %10, align 8
  %114 = call i32 @mnt_drop_write_file(%struct.file* %113)
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %104, %102, %60, %50, %39, %26
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @xfs_sb_version_hasextflgbit(i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @XFS_ERROR(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @mnt_want_write_file(%struct.file*) #1

declare dso_local i32 @xfs_change_file_space(%struct.xfs_inode*, i32, i32*, i32, i32) #1

declare dso_local i32 @mnt_drop_write_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
