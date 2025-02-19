; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_raw.c_atm_pop_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_raw.c_atm_pop_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sock = type { i32 (%struct.sock*)*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"APopR (%d) %d -= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*, %struct.sk_buff*)* @atm_pop_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_pop_raw(%struct.atm_vcc* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %7 = call %struct.sock* @sk_atm(%struct.atm_vcc* %6)
  store %struct.sock* %7, %struct.sock** %5, align 8
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %9 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = call i32 @sk_wmem_alloc_get(%struct.sock* %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = call i32 @atomic_sub(i32 %19, i32* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %23)
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 0
  %27 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call i32 %27(%struct.sock* %28)
  ret void
}

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @sk_wmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
