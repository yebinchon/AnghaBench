; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_wait_for_busy_core.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/llc/extr_af_llc.c_llc_ui_wait_for_busy_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.llc_sock = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i64)* @llc_ui_wait_for_busy_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_wait_for_busy_core(%struct.sock* %0, i64 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.llc_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @wait, align 4
  %8 = call i32 @DEFINE_WAIT(i32 %7)
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.llc_sock* @llc_sk(%struct.sock* %9)
  store %struct.llc_sock* %10, %struct.llc_sock** %5, align 8
  br label %11

11:                                               ; preds = %2, %62
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %16 = call i32 @prepare_to_wait(i32 %14, i32* @wait, i32 %15)
  store i32 0, i32* %6, align 4
  %17 = load %struct.sock*, %struct.sock** %3, align 8
  %18 = load %struct.sock*, %struct.sock** %3, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RCV_SHUTDOWN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %11
  %25 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %26 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @llc_data_accept_state(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %32 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load %struct.llc_sock*, %struct.llc_sock** %5, align 8
  %37 = getelementptr inbounds %struct.llc_sock, %struct.llc_sock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %30, %24
  %42 = phi i1 [ false, %30 ], [ false, %24 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %11
  %44 = phi i1 [ true, %11 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @sk_wait_event(%struct.sock* %17, i64* %4, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %63

49:                                               ; preds = %43
  %50 = load i32, i32* @ERESTARTSYS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @current, align 4
  %53 = call i64 @signal_pending(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %63

56:                                               ; preds = %49
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  %59 = load i64, i64* %4, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56
  br label %63

62:                                               ; preds = %56
  br label %11

63:                                               ; preds = %61, %55, %48
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @finish_wait(i32 %66, i32* @wait)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.llc_sock* @llc_sk(%struct.sock*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i64 @sk_wait_event(%struct.sock*, i64*, i32) #1

declare dso_local i32 @llc_data_accept_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
