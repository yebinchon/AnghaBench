; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_commit_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_commit_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_commit_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32*, i32 }
%struct.TYPE_4__ = type { i32, %struct.nfs_server* }
%struct.nfs_server = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_message = type { i32* }

@nfs4_commit_done_cb = common dso_local global i32* null, align 8
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_COMMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_commit_data*, %struct.rpc_message*)* @nfs4_proc_commit_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_commit_setup(%struct.nfs_commit_data* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.nfs_commit_data*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_commit_data* %0, %struct.nfs_commit_data** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %6 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.nfs_server* @NFS_SERVER(i32 %8)
  store %struct.nfs_server* %9, %struct.nfs_server** %5, align 8
  %10 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %3, align 8
  %11 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32*, i32** @nfs4_commit_done_cb, align 8
  %16 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %20 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %3, align 8
  %21 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store %struct.nfs_server* %19, %struct.nfs_server** %22, align 8
  %23 = load i32*, i32** @nfs4_procedures, align 8
  %24 = load i64, i64* @NFSPROC4_CLNT_COMMIT, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %27 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  %28 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %3, align 8
  %29 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.nfs_commit_data*, %struct.nfs_commit_data** %3, align 8
  %32 = getelementptr inbounds %struct.nfs_commit_data, %struct.nfs_commit_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @nfs41_init_sequence(i32* %30, i32* %33, i32 1)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
