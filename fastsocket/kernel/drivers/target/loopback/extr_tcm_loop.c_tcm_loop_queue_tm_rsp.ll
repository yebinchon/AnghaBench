; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_queue_tm_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/loopback/extr_tcm_loop.c_tcm_loop_queue_tm_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { %struct.se_tmr_req* }
%struct.se_tmr_req = type { %struct.tcm_loop_tmr* }
%struct.tcm_loop_tmr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.se_cmd*)* @tcm_loop_queue_tm_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm_loop_queue_tm_rsp(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca %struct.se_tmr_req*, align 8
  %4 = alloca %struct.tcm_loop_tmr*, align 8
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  %5 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %5, i32 0, i32 0
  %7 = load %struct.se_tmr_req*, %struct.se_tmr_req** %6, align 8
  store %struct.se_tmr_req* %7, %struct.se_tmr_req** %3, align 8
  %8 = load %struct.se_tmr_req*, %struct.se_tmr_req** %3, align 8
  %9 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %8, i32 0, i32 0
  %10 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %9, align 8
  store %struct.tcm_loop_tmr* %10, %struct.tcm_loop_tmr** %4, align 8
  %11 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %4, align 8
  %12 = getelementptr inbounds %struct.tcm_loop_tmr, %struct.tcm_loop_tmr* %11, i32 0, i32 1
  %13 = call i32 @atomic_set(i32* %12, i32 1)
  %14 = load %struct.tcm_loop_tmr*, %struct.tcm_loop_tmr** %4, align 8
  %15 = getelementptr inbounds %struct.tcm_loop_tmr, %struct.tcm_loop_tmr* %14, i32 0, i32 0
  %16 = call i32 @wake_up(i32* %15)
  ret i32 0
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
