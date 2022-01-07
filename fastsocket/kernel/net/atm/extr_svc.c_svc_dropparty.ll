; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_dropparty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_dropparty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.atm_vcc = type { i32 }

@wait = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@as_dropparty = common dso_local global i32 0, align 4
@sigd = common dso_local global i64 0, align 8
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32)* @svc_dropparty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_dropparty(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.atm_vcc*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @wait, align 4
  %9 = call i32 @DEFINE_WAIT(i32 %8)
  %10 = load %struct.socket*, %struct.socket** %3, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %5, align 8
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %13)
  store %struct.atm_vcc* %14, %struct.atm_vcc** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %5, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  %17 = load i32, i32* @ATM_VF_WAITING, align 4
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %19 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %18, i32 0, i32 0
  %20 = call i32 @set_bit(i32 %17, i32* %19)
  %21 = load %struct.sock*, %struct.sock** %5, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %25 = call i32 @prepare_to_wait(i32 %23, i32* @wait, i32 %24)
  %26 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %27 = load i32, i32* @as_dropparty, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @sigd_enq2(%struct.atm_vcc* %26, i32 %27, i32* null, i32* null, i32* null, i32* null, i32 %28)
  br label %30

30:                                               ; preds = %41, %2
  %31 = load i32, i32* @ATM_VF_WAITING, align 4
  %32 = load %struct.atm_vcc*, %struct.atm_vcc** %6, align 8
  %33 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %32, i32 0, i32 0
  %34 = call i64 @test_bit(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i64, i64* @sigd, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i1 [ false, %30 ], [ %38, %36 ]
  br i1 %40, label %41, label %48

41:                                               ; preds = %39
  %42 = call i32 (...) @schedule()
  %43 = load %struct.sock*, %struct.sock** %5, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %47 = call i32 @prepare_to_wait(i32 %45, i32* @wait, i32 %46)
  br label %30

48:                                               ; preds = %39
  %49 = load %struct.sock*, %struct.sock** %5, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @finish_wait(i32 %51, i32* @wait)
  %53 = load i64, i64* @sigd, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* @EUNATCH, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = call i32 @xchg(i32* %60, i32 0)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %55
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @release_sock(%struct.sock* %63)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sigd_enq2(%struct.atm_vcc*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
