; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_misc.c_atm_alloc_charge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_atm_misc.c_atm_alloc_charge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.atm_vcc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @atm_alloc_charge(%struct.atm_vcc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.atm_vcc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %12 = call %struct.sock* @sk_atm(%struct.atm_vcc* %11)
  store %struct.sock* %12, %struct.sock** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @atm_guess_pdu2truesize(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @atm_force_charge(%struct.atm_vcc* %15, i32 %16)
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 1
  %20 = call i64 @atomic_read(i32* %19)
  %21 = load %struct.sock*, %struct.sock** %8, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.sk_buff* @alloc_skb(i32 %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = sub nsw i64 %34, %36
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 1
  %40 = call i32 @atomic_add(i64 %37, i32* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %41, %struct.sk_buff** %4, align 8
  br label %52

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @atm_return(%struct.atm_vcc* %44, i32 %45)
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %5, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @atomic_inc(i32* %50)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %52

52:                                               ; preds = %43, %31
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %53
}

declare dso_local %struct.sock* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @atm_guess_pdu2truesize(i32) #1

declare dso_local i32 @atm_force_charge(%struct.atm_vcc*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @atomic_add(i64, i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
