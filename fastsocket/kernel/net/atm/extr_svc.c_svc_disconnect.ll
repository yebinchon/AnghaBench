; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_svc.c_svc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"svc_disconnect %p\0A\00", align 1
@ATM_VF_REGIS = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@as_close = common dso_local global i32 0, align 4
@ATM_VF_RELEASED = common dso_local global i32 0, align 4
@sigd = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"LISTEN REL\0A\00", align 1
@as_reject = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @svc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_disconnect(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %5 = load i32, i32* @wait, align 4
  %6 = call i32 @DEFINE_WAIT(i32 %5)
  %7 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %8 = call %struct.sock* @sk_atm(%struct.atm_vcc* %7)
  store %struct.sock* %8, %struct.sock** %4, align 8
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %10 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.atm_vcc* %9)
  %11 = load i32, i32* @ATM_VF_REGIS, align 4
  %12 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %13 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %12, i32 0, i32 0
  %14 = call i64 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = getelementptr inbounds %struct.sock, %struct.sock* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %21 = call i32 @prepare_to_wait(i32 %19, i32* @wait, i32 %20)
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %23 = load i32, i32* @as_close, align 4
  %24 = call i32 @sigd_enq(%struct.atm_vcc* %22, i32 %23, i32* null, i32* null, i32* null)
  br label %25

25:                                               ; preds = %36, %16
  %26 = load i32, i32* @ATM_VF_RELEASED, align 4
  %27 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %28 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i64, i64* @sigd, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ]
  br i1 %35, label %36, label %43

36:                                               ; preds = %34
  %37 = call i32 (...) @schedule()
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %42 = call i32 @prepare_to_wait(i32 %40, i32* @wait, i32 %41)
  br label %25

43:                                               ; preds = %34
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @finish_wait(i32 %46, i32* @wait)
  br label %48

48:                                               ; preds = %43, %1
  br label %49

49:                                               ; preds = %54, %48
  %50 = load %struct.sock*, %struct.sock** %4, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = call %struct.sk_buff* @skb_dequeue(i32* %51)
  store %struct.sk_buff* %52, %struct.sk_buff** %3, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %54, label %68

54:                                               ; preds = %49
  %55 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @atm_return(%struct.atm_vcc* %55, i32 %58)
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @as_reject, align 4
  %62 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %63 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %64 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %63, i32 0, i32 1
  %65 = call i32 @sigd_enq2(i32* null, i32 %61, %struct.atm_vcc* %62, i32* null, i32* null, i32* %64, i32 0)
  %66 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %67 = call i32 @dev_kfree_skb(%struct.sk_buff* %66)
  br label %49

68:                                               ; preds = %49
  %69 = load i32, i32* @ATM_VF_REGIS, align 4
  %70 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %71 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %70, i32 0, i32 0
  %72 = call i32 @clear_bit(i32 %69, i32* %71)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @prepare_to_wait(i32, i32*, i32) #1

declare dso_local i32 @sigd_enq(%struct.atm_vcc*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @sigd_enq2(i32*, i32, %struct.atm_vcc*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
