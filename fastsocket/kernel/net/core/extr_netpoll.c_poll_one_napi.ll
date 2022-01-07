; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_poll_one_napi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_poll_one_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll_info = type { i32 }
%struct.napi_struct = type { i32 (%struct.napi_struct*, i32)*, i32 }

@NAPI_STATE_SCHED = common dso_local global i32 0, align 4
@NETPOLL_RX_DROP = common dso_local global i32 0, align 4
@trapped = common dso_local global i32 0, align 4
@NAPI_STATE_NPSVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netpoll_info*, %struct.napi_struct*, i32)* @poll_one_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_one_napi(%struct.netpoll_info* %0, %struct.napi_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netpoll_info*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.netpoll_info* %0, %struct.netpoll_info** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @NAPI_STATE_SCHED, align 4
  %10 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %11 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %10, i32 0, i32 1
  %12 = call i32 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %4, align 4
  br label %49

16:                                               ; preds = %3
  %17 = load i32, i32* @NETPOLL_RX_DROP, align 4
  %18 = load %struct.netpoll_info*, %struct.netpoll_info** %5, align 8
  %19 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = call i32 @atomic_inc(i32* @trapped)
  %23 = load i32, i32* @NAPI_STATE_NPSVC, align 4
  %24 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %25 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %24, i32 0, i32 1
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %28 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %27, i32 0, i32 0
  %29 = load i32 (%struct.napi_struct*, i32)*, i32 (%struct.napi_struct*, i32)** %28, align 8
  %30 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 %29(%struct.napi_struct* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %34 = call i32 @trace_napi_poll(%struct.napi_struct* %33)
  %35 = load i32, i32* @NAPI_STATE_NPSVC, align 4
  %36 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %37 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %36, i32 0, i32 1
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = call i32 @atomic_dec(i32* @trapped)
  %40 = load i32, i32* @NETPOLL_RX_DROP, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.netpoll_info*, %struct.netpoll_info** %5, align 8
  %43 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %16, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @trace_napi_poll(%struct.napi_struct*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
