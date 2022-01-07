; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_mon_unmon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_mon.c_nsm_mon_unmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsm_handle = type { i32, i32 }
%struct.nsm_res = type { i32 }
%struct.rpc_clnt = type { i32* }
%struct.nsm_args = type { i32, i32, i32, i32, i32* }
%struct.rpc_message = type { i32*, %struct.nsm_res*, %struct.nsm_args* }

@NLMPROC_NSM_NOTIFY = common dso_local global i32 0, align 4
@NLM_PROGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"lockd: failed to create NSM upcall transport, status=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"lockd: NSM upcall RPC failed, status=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsm_handle*, i64, %struct.nsm_res*)* @nsm_mon_unmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsm_mon_unmon(%struct.nsm_handle* %0, i64 %1, %struct.nsm_res* %2) #0 {
  %4 = alloca %struct.nsm_handle*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nsm_res*, align 8
  %7 = alloca %struct.rpc_clnt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nsm_args, align 8
  %10 = alloca %struct.rpc_message, align 8
  store %struct.nsm_handle* %0, %struct.nsm_handle** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nsm_res* %2, %struct.nsm_res** %6, align 8
  %11 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %9, i32 0, i32 0
  store i32 3, i32* %11, align 8
  %12 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %9, i32 0, i32 1
  %13 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %14 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %9, i32 0, i32 2
  %17 = load i32, i32* @NLMPROC_NSM_NOTIFY, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %9, i32 0, i32 3
  %19 = load i32, i32* @NLM_PROGRAM, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.nsm_args, %struct.nsm_args* %9, i32 0, i32 4
  %21 = load %struct.nsm_handle*, %struct.nsm_handle** %4, align 8
  %22 = getelementptr inbounds %struct.nsm_handle, %struct.nsm_handle* %21, i32 0, i32 1
  store i32* %22, i32** %20, align 8
  %23 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  %25 = load %struct.nsm_res*, %struct.nsm_res** %6, align 8
  store %struct.nsm_res* %25, %struct.nsm_res** %24, align 8
  %26 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 2
  store %struct.nsm_args* %9, %struct.nsm_args** %26, align 8
  %27 = call %struct.rpc_clnt* (...) @nsm_create()
  store %struct.rpc_clnt* %27, %struct.rpc_clnt** %7, align 8
  %28 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %29 = call i64 @IS_ERR(%struct.rpc_clnt* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %33 = call i32 @PTR_ERR(%struct.rpc_clnt* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @dprintk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %56

36:                                               ; preds = %3
  %37 = load %struct.nsm_res*, %struct.nsm_res** %6, align 8
  %38 = call i32 @memset(%struct.nsm_res* %37, i32 0, i32 4)
  %39 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %40 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store i32* %43, i32** %44, align 8
  %45 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %46 = call i32 @rpc_call_sync(%struct.rpc_clnt* %45, %struct.rpc_message* %10, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  %55 = call i32 @rpc_shutdown_client(%struct.rpc_clnt* %54)
  br label %56

56:                                               ; preds = %53, %31
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local %struct.rpc_clnt* @nsm_create(...) #1

declare dso_local i64 @IS_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @PTR_ERR(%struct.rpc_clnt*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @memset(%struct.nsm_res*, i32, i32) #1

declare dso_local i32 @rpc_call_sync(%struct.rpc_clnt*, %struct.rpc_message*, i32) #1

declare dso_local i32 @rpc_shutdown_client(%struct.rpc_clnt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
