; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lane2_associate_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lane2_associate_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i8* }
%struct.lec_priv = type { i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@l_associate_req = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"lec.c: lane2_associate_req() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i8*)* @lane2_associate_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lane2_associate_req(%struct.net_device* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.lec_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.lec_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.lec_priv* %14, %struct.lec_priv** %12, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @compare_ether_addr(i32* %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %65

22:                                               ; preds = %4
  %23 = load %struct.lec_priv*, %struct.lec_priv** %12, align 8
  %24 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32* @kmemdup(i32* %27, i8* %28, i32 %29)
  %31 = load %struct.lec_priv*, %struct.lec_priv** %12, align 8
  %32 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  %33 = load %struct.lec_priv*, %struct.lec_priv** %12, align 8
  %34 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %65

38:                                               ; preds = %22
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.lec_priv*, %struct.lec_priv** %12, align 8
  %41 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.sk_buff* @alloc_skb(i8* %42, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %11, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = icmp eq %struct.sk_buff* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %65

48:                                               ; preds = %38
  %49 = load i8*, i8** %9, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %52, i32* %53, i8* %54)
  %56 = load %struct.lec_priv*, %struct.lec_priv** %12, align 8
  %57 = load i32, i32* @l_associate_req, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = call i32 @send_to_lecd(%struct.lec_priv* %56, i32 %57, i32* null, i32* null, %struct.sk_buff* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %48
  store i32 1, i32* %5, align 4
  br label %65

65:                                               ; preds = %64, %47, %37, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.lec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @compare_ether_addr(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32* @kmemdup(i32*, i8*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i8*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i8*) #1

declare dso_local i32 @send_to_lecd(%struct.lec_priv*, i32, i32*, i32*, %struct.sk_buff*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
