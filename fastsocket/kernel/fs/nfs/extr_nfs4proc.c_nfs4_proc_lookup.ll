; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_clnt*, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)* @nfs4_proc_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_proc_lookup(%struct.rpc_clnt* %0, %struct.inode* %1, %struct.qstr* %2, %struct.nfs_fh* %3, %struct.nfs_fattr* %4) #0 {
  %6 = alloca %struct.rpc_clnt*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.nfs_fh*, align 8
  %10 = alloca %struct.nfs_fattr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.rpc_clnt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %6, align 8
  store %struct.inode* %1, %struct.inode** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.nfs_fh* %3, %struct.nfs_fh** %9, align 8
  store %struct.nfs_fattr* %4, %struct.nfs_fattr** %10, align 8
  %13 = load %struct.inode*, %struct.inode** %7, align 8
  %14 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %13)
  store %struct.rpc_clnt* %14, %struct.rpc_clnt** %12, align 8
  %15 = load %struct.inode*, %struct.inode** %7, align 8
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = load %struct.nfs_fh*, %struct.nfs_fh** %9, align 8
  %18 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %19 = call i32 @nfs4_proc_lookup_common(%struct.rpc_clnt** %12, %struct.inode* %15, %struct.qstr* %16, %struct.nfs_fh* %17, %struct.nfs_fattr* %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = call %struct.rpc_clnt* @NFS_CLIENT(%struct.inode* %21)
  %23 = icmp ne %struct.rpc_clnt* %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.rpc_clnt*, %struct.rpc_clnt** %12, align 8
  %26 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %25)
  %27 = load %struct.nfs_fattr*, %struct.nfs_fattr** %10, align 8
  %28 = call i32 @nfs_fixup_secinfo_attributes(%struct.nfs_fattr* %27)
  br label %29

29:                                               ; preds = %24, %5
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local %struct.rpc_clnt* @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs4_proc_lookup_common(%struct.rpc_clnt**, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

declare dso_local i32 @nfs_fixup_secinfo_attributes(%struct.nfs_fattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
