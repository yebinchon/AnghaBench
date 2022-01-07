; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_process_rpc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/qdsp5/extr_audmgr.c_process_rpc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audmgr = type { i32 }

@AUDMGR_CB_FUNC_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"audmgr: unknown rpc proc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i8*, i32, i8*)* @process_rpc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rpc_request(i64 %0, i64 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.audmgr*, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.audmgr*
  store %struct.audmgr* %14, %struct.audmgr** %11, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %12, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @AUDMGR_CB_FUNC_PTR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.audmgr*, %struct.audmgr** %11, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @process_audmgr_callback(%struct.audmgr* %21, i8* %22, i32 %23)
  br label %28

25:                                               ; preds = %5
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.audmgr*, %struct.audmgr** %11, align 8
  %30 = getelementptr inbounds %struct.audmgr, %struct.audmgr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @rpc_ack(i32 %31, i64 %32)
  ret void
}

declare dso_local i32 @process_audmgr_callback(%struct.audmgr*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @rpc_ack(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
