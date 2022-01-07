; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_sample.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.nlattr*)* @sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sample(%struct.datapath* %0, %struct.sk_buff* %1, %struct.nlattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.datapath*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca %struct.nlattr*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.nlattr* %2, %struct.nlattr** %7, align 8
  store %struct.nlattr* null, %struct.nlattr** %8, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %12 = call %struct.nlattr* @nla_data(%struct.nlattr* %11)
  store %struct.nlattr* %12, %struct.nlattr** %9, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %31, %3
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %20 = call i32 @nla_type(%struct.nlattr* %19)
  switch i32 %20, label %30 [
    i32 128, label %21
    i32 129, label %28
  ]

21:                                               ; preds = %18
  %22 = call i32 (...) @net_random()
  %23 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %24 = call i32 @nla_get_u32(%struct.nlattr* %23)
  %25 = icmp sge i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %42

27:                                               ; preds = %21
  br label %30

28:                                               ; preds = %18
  %29 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  store %struct.nlattr* %29, %struct.nlattr** %8, align 8
  br label %30

30:                                               ; preds = %18, %28, %27
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  %33 = call %struct.nlattr* @nla_next(%struct.nlattr* %32, i32* %10)
  store %struct.nlattr* %33, %struct.nlattr** %9, align 8
  br label %15

34:                                               ; preds = %15
  %35 = load %struct.datapath*, %struct.datapath** %5, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %38 = call %struct.nlattr* @nla_data(%struct.nlattr* %37)
  %39 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %40 = call i32 @nla_len(%struct.nlattr* %39)
  %41 = call i32 @do_execute_actions(%struct.datapath* %35, %struct.sk_buff* %36, %struct.nlattr* %38, i32 %40, i32 1)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %34, %26
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.nlattr* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i32 @do_execute_actions(%struct.datapath*, %struct.sk_buff*, %struct.nlattr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
