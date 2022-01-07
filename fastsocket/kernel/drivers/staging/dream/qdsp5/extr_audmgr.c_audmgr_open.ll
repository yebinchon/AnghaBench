; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_audmgr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audmgr = type { i64, i32*, i32*, i32 }

@STATE_CLOSED = common dso_local global i64 0, align 8
@AUDMGR_PROG = common dso_local global i32 0, align 4
@AUDMGR_VERS = common dso_local global i32 0, align 4
@MSM_RPC_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"audmgr: failed to connect to audmgr svc\0A\00", align 1
@audmgr_rpc_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"audmgr_rpc\00", align 1
@STATE_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audmgr_open(%struct.audmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.audmgr*, align 8
  %4 = alloca i32, align 4
  store %struct.audmgr* %0, %struct.audmgr** %3, align 8
  %5 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %6 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @STATE_CLOSED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* @AUDMGR_PROG, align 4
  %13 = load i32, i32* @AUDMGR_VERS, align 4
  %14 = load i32, i32* @MSM_RPC_UNINTERRUPTIBLE, align 4
  %15 = call i32* @msm_rpc_connect(i32 %12, i32 %13, i32 %14)
  %16 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %17 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %19 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %18, i32 0, i32 3
  %20 = call i32 @init_waitqueue_head(i32* %19)
  %21 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %22 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %11
  %27 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %28 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @PTR_ERR(i32* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %32 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %11
  %36 = load i32, i32* @audmgr_rpc_thread, align 4
  %37 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %38 = call i32* @kthread_run(i32 %36, %struct.audmgr* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %40 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %42 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = call i64 @IS_ERR(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %35
  %47 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %48 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %52 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  %53 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %54 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @msm_rpc_close(i32* %55)
  %57 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %58 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %57, i32 0, i32 1
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %35
  %61 = load i64, i64* @STATE_DISABLED, align 8
  %62 = load %struct.audmgr*, %struct.audmgr** %3, align 8
  %63 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %46, %26, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32* @msm_rpc_connect(i32, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32* @kthread_run(i32, %struct.audmgr*, i8*) #1

declare dso_local i32 @msm_rpc_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
