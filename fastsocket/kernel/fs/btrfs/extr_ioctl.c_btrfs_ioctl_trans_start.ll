; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_ioctl_trans_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_ioctl.c_btrfs_ioctl_trans_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_6__, %struct.btrfs_trans_handle* }
%struct.TYPE_6__ = type { i32 }
%struct.btrfs_trans_handle = type { i32 }
%struct.inode = type { i32 }
%struct.btrfs_root = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.inode* }
%struct.TYPE_8__ = type { %struct.btrfs_root* }

@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*)* @btrfs_ioctl_trans_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btrfs_ioctl_trans_start(%struct.file* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca %struct.btrfs_trans_handle*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = call %struct.TYPE_7__* @fdentry(%struct.file* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %11, %struct.inode** %4, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.TYPE_8__* @BTRFS_I(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %14, align 8
  store %struct.btrfs_root* %15, %struct.btrfs_root** %5, align 8
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %75

22:                                               ; preds = %1
  %23 = load i32, i32* @EINPROGRESS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.file*, %struct.file** %3, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 1
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %26, align 8
  %28 = icmp ne %struct.btrfs_trans_handle* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %75

30:                                               ; preds = %22
  %31 = load i32, i32* @EROFS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  %33 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %34 = call i64 @btrfs_root_readonly(%struct.btrfs_root* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %75

37:                                               ; preds = %30
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = getelementptr inbounds %struct.file, %struct.file* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mnt_want_write(i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %75

46:                                               ; preds = %37
  %47 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %48 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %55 = call %struct.btrfs_trans_handle* @btrfs_start_ioctl_transaction(%struct.btrfs_root* %54)
  store %struct.btrfs_trans_handle* %55, %struct.btrfs_trans_handle** %6, align 8
  %56 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %57 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %64

60:                                               ; preds = %46
  %61 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %6, align 8
  %62 = load %struct.file*, %struct.file** %3, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 1
  store %struct.btrfs_trans_handle* %61, %struct.btrfs_trans_handle** %63, align 8
  store i64 0, i64* %2, align 8
  br label %78

64:                                               ; preds = %59
  %65 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %66 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 @atomic_dec(i32* %68)
  %70 = load %struct.file*, %struct.file** %3, align 8
  %71 = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @mnt_drop_write(i32 %73)
  br label %75

75:                                               ; preds = %64, %45, %36, %29, %21
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %2, align 8
  br label %78

78:                                               ; preds = %75, %60
  %79 = load i64, i64* %2, align 8
  ret i64 %79
}

declare dso_local %struct.TYPE_7__* @fdentry(%struct.file*) #1

declare dso_local %struct.TYPE_8__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @btrfs_root_readonly(%struct.btrfs_root*) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_ioctl_transaction(%struct.btrfs_root*) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mnt_drop_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
