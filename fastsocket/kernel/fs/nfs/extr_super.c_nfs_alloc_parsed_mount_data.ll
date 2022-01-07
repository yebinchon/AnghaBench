; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_alloc_parsed_mount_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_super.c_nfs_alloc_parsed_mount_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i32, i32, i32, i64, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@NFS_DEF_ACREGMIN = common dso_local global i32 0, align 4
@NFS_DEF_ACREGMAX = common dso_local global i32 0, align 4
@NFS_DEF_ACDIRMIN = common dso_local global i32 0, align 4
@NFS_DEF_ACDIRMAX = common dso_local global i32 0, align 4
@NFS_UNSPEC_PORT = common dso_local global i8* null, align 8
@XPRT_TRANSPORT_TCP = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs_parsed_mount_data* (i32)* @nfs_alloc_parsed_mount_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs_parsed_mount_data* @nfs_alloc_parsed_mount_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfs_parsed_mount_data*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.nfs_parsed_mount_data* @kzalloc(i32 72, i32 %4)
  store %struct.nfs_parsed_mount_data* %5, %struct.nfs_parsed_mount_data** %3, align 8
  %6 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %7 = icmp ne %struct.nfs_parsed_mount_data* %6, null
  br i1 %7, label %8, label %48

8:                                                ; preds = %1
  %9 = load i32, i32* @NFS_DEF_ACREGMIN, align 4
  %10 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %10, i32 0, i32 10
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @NFS_DEF_ACREGMAX, align 4
  %13 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %14 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @NFS_DEF_ACDIRMIN, align 4
  %16 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %16, i32 0, i32 8
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @NFS_DEF_ACDIRMAX, align 4
  %19 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** @NFS_UNSPEC_PORT, align 8
  %22 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %23 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* %21, i8** %24, align 8
  %25 = load i8*, i8** @NFS_UNSPEC_PORT, align 8
  %26 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i8* %25, i8** %28, align 8
  %29 = load i32, i32* @XPRT_TRANSPORT_TCP, align 4
  %30 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @RPC_AUTH_UNIX, align 4
  %34 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %35 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %39 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %2, align 4
  %41 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %42 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %44 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  %46 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %45, i32 0, i32 2
  %47 = call i32 @security_init_mnt_opts(i32* %46)
  br label %48

48:                                               ; preds = %8, %1
  %49 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %3, align 8
  ret %struct.nfs_parsed_mount_data* %49
}

declare dso_local %struct.nfs_parsed_mount_data* @kzalloc(i32, i32) #1

declare dso_local i32 @security_init_mnt_opts(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
