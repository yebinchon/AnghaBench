; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32 }
%struct.pts_fs_info = type { %struct.pts_mount_opts }
%struct.pts_mount_opts = type { i32, i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c",uid=%u\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c",gid=%u\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c",mode=%03o\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @devpts_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devpts_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.pts_fs_info*, align 8
  %6 = alloca %struct.pts_mount_opts*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %7 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %8 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.pts_fs_info* @DEVPTS_SB(i32 %9)
  store %struct.pts_fs_info* %10, %struct.pts_fs_info** %5, align 8
  %11 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %12 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %11, i32 0, i32 0
  store %struct.pts_mount_opts* %12, %struct.pts_mount_opts** %6, align 8
  %13 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %14 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %20 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %25 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %31 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.pts_mount_opts*, %struct.pts_mount_opts** %6, align 8
  %37 = getelementptr inbounds %struct.pts_mount_opts, %struct.pts_mount_opts* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  ret i32 0
}

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
