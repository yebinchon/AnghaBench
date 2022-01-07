; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_get_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fsinfo = type { i32 }

@NFS4ERR_WRONGSEC = common dso_local global i32 0, align 4
@NFS_MOUNT_SECFLAVOUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*)* @nfs4_proc_get_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_get_root(%struct.nfs_server* %0, %struct.nfs_fh* %1, %struct.nfs_fsinfo* %2) #0 {
  %4 = alloca %struct.nfs_server*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca %struct.nfs_fsinfo*, align 8
  %7 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  store %struct.nfs_fsinfo* %2, %struct.nfs_fsinfo** %6, align 8
  %8 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %9 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %10 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %11 = call i32 @nfs4_lookup_root(%struct.nfs_server* %8, %struct.nfs_fh* %9, %struct.nfs_fsinfo* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NFS4ERR_WRONGSEC, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %18 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFS_MOUNT_SECFLAVOUR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %25 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %26 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %27 = call i32 @nfs4_find_root_sec(%struct.nfs_server* %24, %struct.nfs_fh* %25, %struct.nfs_fsinfo* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %16, %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %33 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %34 = call i32 @nfs4_server_capabilities(%struct.nfs_server* %32, %struct.nfs_fh* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.nfs_server*, %struct.nfs_server** %4, align 8
  %40 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %41 = load %struct.nfs_fsinfo*, %struct.nfs_fsinfo** %6, align 8
  %42 = call i32 @nfs4_do_fsinfo(%struct.nfs_server* %39, %struct.nfs_fh* %40, %struct.nfs_fsinfo* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @nfs4_map_errors(i32 %44)
  ret i32 %45
}

declare dso_local i32 @nfs4_lookup_root(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs4_find_root_sec(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs4_server_capabilities(%struct.nfs_server*, %struct.nfs_fh*) #1

declare dso_local i32 @nfs4_do_fsinfo(%struct.nfs_server*, %struct.nfs_fh*, %struct.nfs_fsinfo*) #1

declare dso_local i32 @nfs4_map_errors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
