; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_read_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_read_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_read_data = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rpc_message = type { i32* }

@jiffies = common dso_local global i32 0, align 4
@nfs4_read_done_cb = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_read_data*, %struct.rpc_message*)* @nfs4_proc_read_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_read_setup(%struct.nfs_read_data* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.nfs_read_data*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  store %struct.nfs_read_data* %0, %struct.nfs_read_data** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %5 = load i32, i32* @jiffies, align 4
  %6 = load %struct.nfs_read_data*, %struct.nfs_read_data** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @nfs4_read_done_cb, align 4
  %9 = load %struct.nfs_read_data*, %struct.nfs_read_data** %3, align 8
  %10 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load i32*, i32** @nfs4_procedures, align 8
  %12 = load i64, i64* @NFSPROC4_CLNT_READ, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %14, i32 0, i32 0
  store i32* %13, i32** %15, align 8
  %16 = load %struct.nfs_read_data*, %struct.nfs_read_data** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.nfs_read_data*, %struct.nfs_read_data** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_read_data, %struct.nfs_read_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @nfs41_init_sequence(i32* %18, i32* %21, i32 0)
  ret void
}

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
