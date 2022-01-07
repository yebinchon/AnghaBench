; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mount_fs.c_compute_nfs_common_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_mount_fs.c_compute_nfs_common_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_common_args = type { i32, i32, i32, i8*, i8* }

@MNTTAB_OPT_RSIZE = common dso_local global i32 0, align 4
@NFS_VERSION = common dso_local global i64 0, align 8
@MNTTAB_OPT_WSIZE = common dso_local global i32 0, align 4
@MNTTAB_OPT_TIMEO = common dso_local global i32 0, align 4
@MNTTAB_OPT_RETRANS = common dso_local global i32 0, align 4
@MNT2_GEN_OPT_RONLY = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_COMPRESS = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_INT = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_INTR = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NOACL = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NOCONN = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NOCTO = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NODEVS = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NOINT = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NOINTR = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_NONLM = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_PRIVATE = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_PROPLIST = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_RESVPORT = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_RETRANS = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_RONLY = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_RSIZE = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_SOFT = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_SPONGY = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_TCP = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_TIMEO = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_WSIZE = common dso_local global i32 0, align 4
@MNT2_NFS_OPT_XLATECOOKIE = common dso_local global i32 0, align 4
@MNTTAB_OPT_COMPRESS = common dso_local global i32 0, align 4
@MNTTAB_OPT_CONN = common dso_local global i32 0, align 4
@MNTTAB_OPT_INTR = common dso_local global i32 0, align 4
@MNTTAB_OPT_NOACL = common dso_local global i32 0, align 4
@MNTTAB_OPT_NOCONN = common dso_local global i32 0, align 4
@MNTTAB_OPT_NOCTO = common dso_local global i32 0, align 4
@MNTTAB_OPT_NODEVS = common dso_local global i32 0, align 4
@MNTTAB_OPT_NOLOCK = common dso_local global i32 0, align 4
@MNTTAB_OPT_PRIVATE = common dso_local global i32 0, align 4
@MNTTAB_OPT_PROPLIST = common dso_local global i32 0, align 4
@MNTTAB_OPT_RESVPORT = common dso_local global i32 0, align 4
@MNTTAB_OPT_SOFT = common dso_local global i32 0, align 4
@MNTTAB_OPT_SPONGY = common dso_local global i32 0, align 4
@MNTTAB_OPT_XLATECOOKIE = common dso_local global i32 0, align 4
@XLOG_USER = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@flags = common dso_local global i32* null, align 8
@genflags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_common_args*, i32*, i8*, i64)* @compute_nfs_common_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_nfs_common_args(%struct.nfs_common_args* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.nfs_common_args*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.nfs_common_args* %0, %struct.nfs_common_args** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* @MNTTAB_OPT_RSIZE, align 4
  %11 = call i8* @hasmntval(i32* %9, i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %14 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @NFS_VERSION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 8192
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %25 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %24, i32 0, i32 1
  store i32 8192, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %18, %4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @MNTTAB_OPT_WSIZE, align 4
  %29 = call i8* @hasmntval(i32* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @NFS_VERSION, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 8192
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %42, i32 0, i32 2
  store i32 8192, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %36, %26
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @MNTTAB_OPT_TIMEO, align 4
  %47 = call i8* @hasmntval(i32* %45, i32 %46)
  %48 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %49 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %48, i32 0, i32 4
  store i8* %47, i8** %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @MNTTAB_OPT_RETRANS, align 4
  %52 = call i8* @hasmntval(i32* %50, i32 %51)
  %53 = load %struct.nfs_common_args*, %struct.nfs_common_args** %5, align 8
  %54 = getelementptr inbounds %struct.nfs_common_args, %struct.nfs_common_args* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  ret void
}

declare dso_local i8* @hasmntval(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
