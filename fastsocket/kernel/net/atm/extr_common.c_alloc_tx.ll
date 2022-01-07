; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_alloc_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_common.c_alloc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.atm_vcc = type { i32 }
%struct.sock = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Sorry: wmem_alloc = %d, size = %d, sndbuf = %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"AlTx %d += %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.atm_vcc*, i32)* @alloc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @alloc_tx(%struct.atm_vcc* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.atm_vcc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %9 = call %struct.sock* @sk_atm(%struct.atm_vcc* %8)
  store %struct.sock* %9, %struct.sock** %7, align 8
  %10 = load %struct.sock*, %struct.sock** %7, align 8
  %11 = call i64 @sk_wmem_alloc_get(%struct.sock* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.atm_vcc*, %struct.atm_vcc** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @atm_may_send(%struct.atm_vcc* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %13
  %19 = load %struct.sock*, %struct.sock** %7, align 8
  %20 = call i64 @sk_wmem_alloc_get(%struct.sock* %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.sock*, %struct.sock** %7, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %21, i32 %24)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %49

26:                                               ; preds = %13, %2
  br label %27

27:                                               ; preds = %33, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_buff* @alloc_skb(i32 %28, i32 %29)
  store %struct.sk_buff* %30, %struct.sk_buff** %6, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = call i32 (...) @schedule()
  br label %27

35:                                               ; preds = %27
  %36 = load %struct.sock*, %struct.sock** %7, align 8
  %37 = call i64 @sk_wmem_alloc_get(%struct.sock* %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i64, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sock*, %struct.sock** %7, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = call i32 @atomic_add(i32 %44, i32* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %3, align 8
  br label %49

49:                                               ; preds = %35, %18
  %50 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %50
}

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i64 @sk_wmem_alloc_get(%struct.sock*) #1

declare dso_local i32 @atm_may_send(%struct.atm_vcc*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32, ...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
