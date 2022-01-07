; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_to_atmarpd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_clip.c_to_atmarpd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 (%struct.sock*, i32)*, i32 }
%struct.atmarp_ctrl = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"to_atmarpd(%d)\0A\00", align 1
@atmarpd = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @to_atmarpd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @to_atmarpd(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.atmarp_ctrl*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @atmarpd, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EUNATCH, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %58

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 12, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = call i64 @skb_put(%struct.sk_buff* %27, i32 12)
  %29 = inttoptr i64 %28 to %struct.atmarp_ctrl*
  store %struct.atmarp_ctrl* %29, %struct.atmarp_ctrl** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.atmarp_ctrl*, %struct.atmarp_ctrl** %9, align 8
  %32 = getelementptr inbounds %struct.atmarp_ctrl, %struct.atmarp_ctrl* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.atmarp_ctrl*, %struct.atmarp_ctrl** %9, align 8
  %35 = getelementptr inbounds %struct.atmarp_ctrl, %struct.atmarp_ctrl* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.atmarp_ctrl*, %struct.atmarp_ctrl** %9, align 8
  %38 = getelementptr inbounds %struct.atmarp_ctrl, %struct.atmarp_ctrl* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @atmarpd, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @atm_force_charge(i32 %39, i32 %42)
  %44 = load i32, i32* @atmarpd, align 4
  %45 = call %struct.sock* @sk_atm(i32 %44)
  store %struct.sock* %45, %struct.sock** %8, align 8
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 1
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = call i32 @skb_queue_tail(i32* %47, %struct.sk_buff* %48)
  %50 = load %struct.sock*, %struct.sock** %8, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 0
  %52 = load i32 (%struct.sock*, i32)*, i32 (%struct.sock*, i32)** %51, align 8
  %53 = load %struct.sock*, %struct.sock** %8, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 %52(%struct.sock* %53, i32 %56)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %26, %23, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @atm_force_charge(i32, i32) #1

declare dso_local %struct.sock* @sk_atm(i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
