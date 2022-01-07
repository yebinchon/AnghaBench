; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_execute_set_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_execute_set_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8*, i8* }
%struct.nlattr = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlattr*)* @execute_set_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_set_action(%struct.sk_buff* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %7 = call i32 @nla_type(%struct.nlattr* %6)
  switch i32 %7, label %49 [
    i32 131, label %8
    i32 130, label %13
    i32 133, label %18
    i32 135, label %24
    i32 134, label %29
    i32 132, label %34
    i32 129, label %39
    i32 128, label %44
  ]

8:                                                ; preds = %2
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = call i8* @nla_get_u32(%struct.nlattr* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  store i8* %10, i8** %12, align 8
  br label %49

13:                                               ; preds = %2
  %14 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %15 = call i8* @nla_get_u32(%struct.nlattr* %14)
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %20 = call i32 @nla_data(%struct.nlattr* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %22 = call %struct.TYPE_2__* @OVS_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %27 = call i32 @nla_data(%struct.nlattr* %26)
  %28 = call i32 @set_eth_addr(%struct.sk_buff* %25, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %32 = call i32 @nla_data(%struct.nlattr* %31)
  %33 = call i32 @set_ipv4(%struct.sk_buff* %30, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %37 = call i32 @nla_data(%struct.nlattr* %36)
  %38 = call i32 @set_ipv6(%struct.sk_buff* %35, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %49

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %42 = call i32 @nla_data(%struct.nlattr* %41)
  %43 = call i32 @set_tcp(%struct.sk_buff* %40, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %2
  %45 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %46 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %47 = call i32 @nla_data(%struct.nlattr* %46)
  %48 = call i32 @set_udp(%struct.sk_buff* %45, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %2, %44, %39, %34, %29, %24, %18, %13, %8
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local %struct.TYPE_2__* @OVS_CB(%struct.sk_buff*) #1

declare dso_local i32 @set_eth_addr(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_ipv4(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_ipv6(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_tcp(%struct.sk_buff*, i32) #1

declare dso_local i32 @set_udp(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
