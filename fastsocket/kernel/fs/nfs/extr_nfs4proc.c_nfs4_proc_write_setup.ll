; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_write_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_proc_write_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_write_data = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.nfs_server*, i32* }
%struct.nfs_server = type { i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.rpc_message = type { i32* }

@nfs4_write_done_cb = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfs_write_data*, %struct.rpc_message*)* @nfs4_proc_write_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfs4_proc_write_setup(%struct.nfs_write_data* %0, %struct.rpc_message* %1) #0 {
  %3 = alloca %struct.nfs_write_data*, align 8
  %4 = alloca %struct.rpc_message*, align 8
  %5 = alloca %struct.nfs_server*, align 8
  store %struct.nfs_write_data* %0, %struct.nfs_write_data** %3, align 8
  store %struct.rpc_message* %1, %struct.rpc_message** %4, align 8
  %6 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %7 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.nfs_server* @NFS_SERVER(i32 %10)
  store %struct.nfs_server* %11, %struct.nfs_server** %5, align 8
  %12 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %13 = call i32 @nfs4_write_need_cache_consistency_data(%struct.nfs_write_data* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %17 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32* null, i32** %21, align 8
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %27 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  store i32* %25, i32** %28, align 8
  br label %29

29:                                               ; preds = %22, %15
  %30 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %31 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i64, i64* @nfs4_write_done_cb, align 8
  %36 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %37 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %36, i32 0, i32 3
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load %struct.nfs_server*, %struct.nfs_server** %5, align 8
  %40 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %41 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store %struct.nfs_server* %39, %struct.nfs_server** %42, align 8
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %45 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** @nfs4_procedures, align 8
  %47 = load i64, i64* @NFSPROC4_CLNT_WRITE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load %struct.rpc_message*, %struct.rpc_message** %4, align 8
  %50 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %52 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.nfs_write_data*, %struct.nfs_write_data** %3, align 8
  %55 = getelementptr inbounds %struct.nfs_write_data, %struct.nfs_write_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @nfs41_init_sequence(i32* %53, i32* %56, i32 1)
  ret void
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local i32 @nfs4_write_need_cache_consistency_data(%struct.nfs_write_data*) #1

declare dso_local i32 @nfs41_init_sequence(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
