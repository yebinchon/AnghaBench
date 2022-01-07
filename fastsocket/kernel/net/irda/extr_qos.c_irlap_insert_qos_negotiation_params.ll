; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_qos.c_irlap_insert_qos_negotiation_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_qos.c_irlap_insert_qos_negotiation_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { i32 }
%struct.sk_buff = type { i32 }

@PI_BAUD_RATE = common dso_local global i32 0, align 4
@irlap_param_info = common dso_local global i32 0, align 4
@PI_MAX_TURN_TIME = common dso_local global i32 0, align 4
@PI_DATA_SIZE = common dso_local global i32 0, align 4
@PI_WINDOW_SIZE = common dso_local global i32 0, align 4
@PI_ADD_BOFS = common dso_local global i32 0, align 4
@PI_MIN_TURN_TIME = common dso_local global i32 0, align 4
@PI_LINK_DISC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irlap_insert_qos_negotiation_params(%struct.irlap_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irlap_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.irlap_cb* %0, %struct.irlap_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %8 = load i32, i32* @PI_BAUD_RATE, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call i32 @skb_tail_pointer(%struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i32 @skb_tailroom(%struct.sk_buff* %11)
  %13 = call i32 @irda_param_insert(%struct.irlap_cb* %7, i32 %8, i32 %10, i32 %12, i32* @irlap_param_info)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %112

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @skb_put(%struct.sk_buff* %19, i32 %20)
  %22 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %23 = load i32, i32* @PI_MAX_TURN_TIME, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_tail_pointer(%struct.sk_buff* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @skb_tailroom(%struct.sk_buff* %26)
  %28 = call i32 @irda_param_insert(%struct.irlap_cb* %22, i32 %23, i32 %25, i32 %27, i32* @irlap_param_info)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %112

33:                                               ; preds = %18
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @skb_put(%struct.sk_buff* %34, i32 %35)
  %37 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %38 = load i32, i32* @PI_DATA_SIZE, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = call i32 @skb_tail_pointer(%struct.sk_buff* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @skb_tailroom(%struct.sk_buff* %41)
  %43 = call i32 @irda_param_insert(%struct.irlap_cb* %37, i32 %38, i32 %40, i32 %42, i32* @irlap_param_info)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %112

48:                                               ; preds = %33
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @skb_put(%struct.sk_buff* %49, i32 %50)
  %52 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %53 = load i32, i32* @PI_WINDOW_SIZE, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = call i32 @skb_tail_pointer(%struct.sk_buff* %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call i32 @skb_tailroom(%struct.sk_buff* %56)
  %58 = call i32 @irda_param_insert(%struct.irlap_cb* %52, i32 %53, i32 %55, i32 %57, i32* @irlap_param_info)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %112

63:                                               ; preds = %48
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @skb_put(%struct.sk_buff* %64, i32 %65)
  %67 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %68 = load i32, i32* @PI_ADD_BOFS, align 4
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @skb_tail_pointer(%struct.sk_buff* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @skb_tailroom(%struct.sk_buff* %71)
  %73 = call i32 @irda_param_insert(%struct.irlap_cb* %67, i32 %68, i32 %70, i32 %72, i32* @irlap_param_info)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %112

78:                                               ; preds = %63
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @skb_put(%struct.sk_buff* %79, i32 %80)
  %82 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %83 = load i32, i32* @PI_MIN_TURN_TIME, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i32 @skb_tail_pointer(%struct.sk_buff* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 @skb_tailroom(%struct.sk_buff* %86)
  %88 = call i32 @irda_param_insert(%struct.irlap_cb* %82, i32 %83, i32 %85, i32 %87, i32* @irlap_param_info)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %78
  %92 = load i32, i32* %6, align 4
  store i32 %92, i32* %3, align 4
  br label %112

93:                                               ; preds = %78
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @skb_put(%struct.sk_buff* %94, i32 %95)
  %97 = load %struct.irlap_cb*, %struct.irlap_cb** %4, align 8
  %98 = load i32, i32* @PI_LINK_DISC, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @skb_tail_pointer(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i32 @skb_tailroom(%struct.sk_buff* %101)
  %103 = call i32 @irda_param_insert(%struct.irlap_cb* %97, i32 %98, i32 %100, i32 %102, i32* @irlap_param_info)
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %112

108:                                              ; preds = %93
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @skb_put(%struct.sk_buff* %109, i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %108, %106, %91, %76, %61, %46, %31, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @irda_param_insert(%struct.irlap_cb*, i32, i32, i32, i32*) #1

declare dso_local i32 @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
