; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_do_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs3proc.c_nfs3_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nfs3_createdata = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.nfs3_createdata*)* @nfs3_do_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs3_do_create(%struct.inode* %0, %struct.dentry* %1, %struct.nfs3_createdata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nfs3_createdata*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nfs3_createdata* %2, %struct.nfs3_createdata** %6, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call i32 @NFS_CLIENT(%struct.inode* %8)
  %10 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %6, align 8
  %11 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %10, i32 0, i32 1
  %12 = call i32 @rpc_call_sync(i32 %9, i32* %11, i32 0)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %6, align 8
  %15 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nfs_post_op_update_inode(%struct.inode* %13, i32 %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %6, align 8
  %24 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfs3_createdata*, %struct.nfs3_createdata** %6, align 8
  %28 = getelementptr inbounds %struct.nfs3_createdata, %struct.nfs3_createdata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nfs_instantiate(%struct.dentry* %22, i32 %26, i32 %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %21, %3
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @rpc_call_sync(i32, i32*, i32) #1

declare dso_local i32 @NFS_CLIENT(%struct.inode*) #1

declare dso_local i32 @nfs_post_op_update_inode(%struct.inode*, i32) #1

declare dso_local i32 @nfs_instantiate(%struct.dentry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
