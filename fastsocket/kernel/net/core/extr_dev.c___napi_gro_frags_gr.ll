; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___napi_gro_frags_gr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___napi_gro_frags_gr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.sk_buff = type { i32 }

@GRO_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*)* @__napi_gro_frags_gr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__napi_gro_frags_gr(%struct.napi_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  %5 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %6 = call %struct.sk_buff* @napi_frags_skb(%struct.napi_struct* %5)
  store %struct.sk_buff* %6, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @GRO_DROP, align 4
  store i32 %10, i32* %2, align 4
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @__napi_gro_receive(%struct.napi_struct* %14, %struct.sk_buff* %15)
  %17 = call i32 @napi_frags_finish(%struct.napi_struct* %12, %struct.sk_buff* %13, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %11, %9
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.sk_buff* @napi_frags_skb(%struct.napi_struct*) #1

declare dso_local i32 @napi_frags_finish(%struct.napi_struct*, %struct.sk_buff*, i32) #1

declare dso_local i32 @__napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
