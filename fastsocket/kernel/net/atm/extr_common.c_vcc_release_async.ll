; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_release_async.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_vcc_release_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sock = type { i32, i32 (%struct.sock*)*, i32 }

@ATM_VF_CLOSE = common dso_local global i32 0, align 4
@RCV_SHUTDOWN = common dso_local global i32 0, align 4
@ATM_VF_WAITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcc_release_async(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %7 = call %struct.sock* @sk_atm(%struct.atm_vcc* %6)
  store %struct.sock* %7, %struct.sock** %5, align 8
  %8 = load i32, i32* @ATM_VF_CLOSE, align 4
  %9 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %10 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %9, i32 0, i32 0
  %11 = call i32 @set_bit(i32 %8, i32* %10)
  %12 = load i32, i32* @RCV_SHUTDOWN, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 0, %17
  %19 = load %struct.sock*, %struct.sock** %5, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @ATM_VF_WAITING, align 4
  %22 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %23 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call i32 %27(%struct.sock* %28)
  ret void
}

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
