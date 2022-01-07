; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_do_execute_actions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/openvswitch/extr_actions.c_do_execute_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.datapath = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlattr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.datapath*, %struct.sk_buff*, %struct.nlattr*, i32, i32)* @do_execute_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_execute_actions(%struct.datapath* %0, %struct.sk_buff* %1, %struct.nlattr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.datapath*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nlattr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nlattr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.datapath* %0, %struct.datapath** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store %struct.nlattr* %2, %struct.nlattr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %16 = load %struct.nlattr*, %struct.nlattr** %9, align 8
  store %struct.nlattr* %16, %struct.nlattr** %13, align 8
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %14, align 4
  br label %18

18:                                               ; preds = %75, %5
  %19 = load i32, i32* %14, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %78

21:                                               ; preds = %18
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.datapath*, %struct.datapath** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %26, i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @do_output(%struct.datapath* %25, %struct.sk_buff* %28, i32 %29)
  store i32 -1, i32* %12, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %33 = call i32 @nla_type(%struct.nlattr* %32)
  switch i32 %33, label %66 [
    i32 133, label %34
    i32 128, label %37
    i32 131, label %42
    i32 132, label %53
    i32 129, label %56
    i32 130, label %61
  ]

34:                                               ; preds = %31
  %35 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %36 = call i32 @nla_get_u32(%struct.nlattr* %35)
  store i32 %36, i32* %12, align 4
  br label %66

37:                                               ; preds = %31
  %38 = load %struct.datapath*, %struct.datapath** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %40 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %41 = call i32 @output_userspace(%struct.datapath* %38, %struct.sk_buff* %39, %struct.nlattr* %40)
  br label %66

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %45 = call i32 @nla_data(%struct.nlattr* %44)
  %46 = call i32 @push_vlan(%struct.sk_buff* %43, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %101

52:                                               ; preds = %42
  br label %66

53:                                               ; preds = %31
  %54 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %55 = call i32 @pop_vlan(%struct.sk_buff* %54)
  store i32 %55, i32* %15, align 4
  br label %66

56:                                               ; preds = %31
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %59 = call i32 @nla_data(%struct.nlattr* %58)
  %60 = call i32 @execute_set_action(%struct.sk_buff* %57, i32 %59)
  store i32 %60, i32* %15, align 4
  br label %66

61:                                               ; preds = %31
  %62 = load %struct.datapath*, %struct.datapath** %7, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %65 = call i32 @sample(%struct.datapath* %62, %struct.sk_buff* %63, %struct.nlattr* %64)
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %31, %61, %56, %53, %52, %37, %34
  %67 = load i32, i32* %15, align 4
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %101

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %77 = call %struct.nlattr* @nla_next(%struct.nlattr* %76, i32* %14)
  store %struct.nlattr* %77, %struct.nlattr** %13, align 8
  br label %18

78:                                               ; preds = %18
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, -1
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %85, i32 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %8, align 8
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.datapath*, %struct.datapath** %7, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @do_output(%struct.datapath* %89, %struct.sk_buff* %90, i32 %91)
  br label %100

93:                                               ; preds = %78
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %98 = call i32 @consume_skb(%struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %96, %93
  br label %100

100:                                              ; preds = %99, %88
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %100, %70, %50
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local i32 @do_output(%struct.datapath*, %struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_type(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @output_userspace(%struct.datapath*, %struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @push_vlan(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pop_vlan(%struct.sk_buff*) #1

declare dso_local i32 @execute_set_action(%struct.sk_buff*, i32) #1

declare dso_local i32 @sample(%struct.datapath*, %struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_next(%struct.nlattr*, i32*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
