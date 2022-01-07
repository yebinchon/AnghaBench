; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_delegation_recall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_open_delegation_recall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_open_context = type { i32 }
%struct.nfs4_state = type { i32 }
%struct.nfs_server = type { i32 }
%struct.nfs4_opendata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NFS4_OPEN_CLAIM_DELEG_CUR_FH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_open_delegation_recall(%struct.nfs_open_context* %0, %struct.nfs4_state* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_open_context*, align 8
  %6 = alloca %struct.nfs4_state*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nfs_server*, align 8
  %9 = alloca %struct.nfs4_opendata*, align 8
  %10 = alloca i32, align 4
  store %struct.nfs_open_context* %0, %struct.nfs_open_context** %5, align 8
  store %struct.nfs4_state* %1, %struct.nfs4_state** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %12 = getelementptr inbounds %struct.nfs4_state, %struct.nfs4_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nfs_server* @NFS_SERVER(i32 %13)
  store %struct.nfs_server* %14, %struct.nfs_server** %8, align 8
  %15 = load %struct.nfs_open_context*, %struct.nfs_open_context** %5, align 8
  %16 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %17 = load i32, i32* @NFS4_OPEN_CLAIM_DELEG_CUR_FH, align 4
  %18 = call %struct.nfs4_opendata* @nfs4_open_recoverdata_alloc(%struct.nfs_open_context* %15, %struct.nfs4_state* %16, i32 %17)
  store %struct.nfs4_opendata* %18, %struct.nfs4_opendata** %9, align 8
  %19 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %9, align 8
  %20 = call i64 @IS_ERR(%struct.nfs4_opendata* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %9, align 8
  %24 = call i32 @PTR_ERR(%struct.nfs4_opendata* %23)
  store i32 %24, i32* %4, align 4
  br label %42

25:                                               ; preds = %3
  %26 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %9, align 8
  %27 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @nfs4_stateid_copy(i32* %29, i32* %30)
  %32 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %9, align 8
  %33 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %34 = call i32 @nfs4_open_recover(%struct.nfs4_opendata* %32, %struct.nfs4_state* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %9, align 8
  %36 = call i32 @nfs4_opendata_put(%struct.nfs4_opendata* %35)
  %37 = load %struct.nfs_server*, %struct.nfs_server** %8, align 8
  %38 = load %struct.nfs4_state*, %struct.nfs4_state** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @nfs4_handle_delegation_recall_error(%struct.nfs_server* %37, %struct.nfs4_state* %38, i32* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %25, %22
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.nfs_server* @NFS_SERVER(i32) #1

declare dso_local %struct.nfs4_opendata* @nfs4_open_recoverdata_alloc(%struct.nfs_open_context*, %struct.nfs4_state*, i32) #1

declare dso_local i64 @IS_ERR(%struct.nfs4_opendata*) #1

declare dso_local i32 @PTR_ERR(%struct.nfs4_opendata*) #1

declare dso_local i32 @nfs4_stateid_copy(i32*, i32*) #1

declare dso_local i32 @nfs4_open_recover(%struct.nfs4_opendata*, %struct.nfs4_state*) #1

declare dso_local i32 @nfs4_opendata_put(%struct.nfs4_opendata*) #1

declare dso_local i32 @nfs4_handle_delegation_recall_error(%struct.nfs_server*, %struct.nfs4_state*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
