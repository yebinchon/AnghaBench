; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_addparty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_addparty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.sockaddr_atmsvc = type { i32 }

@wait = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@as_addparty = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"svc_addparty added wait queue\0A\00", align 1
@sigd = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @svc_addparty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svc_addparty(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sock*, align 8
  %10 = alloca %struct.atm_vcc*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @wait, align 4
  %13 = call i32 @DEFINE_WAIT(i32 %12)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %9, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = call %struct.atm_vcc* @ATM_SD(%struct.socket* %17)
  store %struct.atm_vcc* %18, %struct.atm_vcc** %10, align 8
  %19 = load %struct.sock*, %struct.sock** %9, align 8
  %20 = call i32 @lock_sock(%struct.sock* %19)
  %21 = load i32, i32* @ATM_VF_WAITING, align 4
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %23 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %22, i32 0, i32 0
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load %struct.sock*, %struct.sock** %9, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %29 = call i32 @prepare_to_wait(i32 %27, i32* @wait, i32 %28)
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %31 = load i32, i32* @as_addparty, align 4
  %32 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %33 = bitcast %struct.sockaddr* %32 to %struct.sockaddr_atmsvc*
  %34 = call i32 @sigd_enq(%struct.atm_vcc* %30, i32 %31, i32* null, i32* null, %struct.sockaddr_atmsvc* %33)
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.sock*, %struct.sock** %9, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @finish_wait(i32 %42, i32* @wait)
  %44 = load i32, i32* @EINPROGRESS, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %74

46:                                               ; preds = %4
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %59, %46
  %49 = load i32, i32* @ATM_VF_WAITING, align 4
  %50 = load %struct.atm_vcc*, %struct.atm_vcc** %10, align 8
  %51 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i64, i64* @sigd, align 8
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i1 [ false, %48 ], [ %56, %54 ]
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = call i32 (...) @schedule()
  %61 = load %struct.sock*, %struct.sock** %9, align 8
  %62 = getelementptr inbounds %struct.sock, %struct.sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %65 = call i32 @prepare_to_wait(i32 %63, i32* @wait, i32 %64)
  br label %48

66:                                               ; preds = %57
  %67 = load %struct.sock*, %struct.sock** %9, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @finish_wait(i32 %69, i32* @wait)
  %71 = load %struct.sock*, %struct.sock** %9, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 0
  %73 = call i32 @xchg(i32* %72, i32 0)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %66, %39
  %75 = load %struct.sock*, %struct.sock** %9, align 8
  %76 = call i32 @release_sock(%struct.sock* %75)
  %77 = load i32, i32* %11, align 4
  ret i32 %77
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.atm_vcc* @ATM_SD(%struct.socket*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, %struct.sockaddr_atmsvc*) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @xchg(i32*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
