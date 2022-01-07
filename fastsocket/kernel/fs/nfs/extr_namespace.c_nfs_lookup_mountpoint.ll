; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_namespace.c_nfs_lookup_mountpoint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_namespace.c_nfs_lookup_mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { i32 }
%struct.inode = type { i32 }
%struct.qstr = type { i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs_fattr = type { i32 }
%struct.TYPE_4__ = type { i32 (i32, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rpc_clnt* (%struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)* @nfs_lookup_mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rpc_clnt* @nfs_lookup_mountpoint(%struct.inode* %0, %struct.qstr* %1, %struct.nfs_fh* %2, %struct.nfs_fattr* %3) #0 {
  %5 = alloca %struct.rpc_clnt*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.nfs_fh*, align 8
  %9 = alloca %struct.nfs_fattr*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.nfs_fh* %2, %struct.nfs_fh** %8, align 8
  store %struct.nfs_fattr* %3, %struct.nfs_fattr** %9, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = call %struct.TYPE_4__* @NFS_PROTO(%struct.inode* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32 (i32, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)*, i32 (i32, %struct.inode*, %struct.qstr*, %struct.nfs_fh*, %struct.nfs_fattr*)** %13, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = load %struct.qstr*, %struct.qstr** %7, align 8
  %21 = load %struct.nfs_fh*, %struct.nfs_fh** %8, align 8
  %22 = load %struct.nfs_fattr*, %struct.nfs_fattr** %9, align 8
  %23 = call i32 %14(i32 %18, %struct.inode* %19, %struct.qstr* %20, %struct.nfs_fh* %21, %struct.nfs_fattr* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %4
  %27 = load i32, i32* %10, align 4
  %28 = call %struct.rpc_clnt* @ERR_PTR(i32 %27)
  store %struct.rpc_clnt* %28, %struct.rpc_clnt** %5, align 8
  br label %35

29:                                               ; preds = %4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = call %struct.TYPE_3__* @NFS_SERVER(%struct.inode* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rpc_clnt* @rpc_clone_client(i32 %33)
  store %struct.rpc_clnt* %34, %struct.rpc_clnt** %5, align 8
  br label %35

35:                                               ; preds = %29, %26
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  ret %struct.rpc_clnt* %36
}

declare dso_local %struct.TYPE_4__* @NFS_PROTO(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.rpc_clnt* @ERR_PTR(i32) #1

declare dso_local %struct.rpc_clnt* @rpc_clone_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
