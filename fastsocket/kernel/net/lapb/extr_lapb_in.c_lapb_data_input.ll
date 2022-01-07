; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_in.c_lapb_data_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/lapb/extr_lapb_in.c_lapb_data_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.lapb_frame = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_data_input(%struct.lapb_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.lapb_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.lapb_frame, align 4
  store %struct.lapb_cb* %0, %struct.lapb_cb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i64 @lapb_decode(%struct.lapb_cb* %6, %struct.sk_buff* %7, %struct.lapb_frame* %5)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i32 @kfree_skb(%struct.sk_buff* %11)
  br label %40

13:                                               ; preds = %2
  %14 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %15 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %37 [
    i32 132, label %17
    i32 131, label %21
    i32 130, label %25
    i32 129, label %29
    i32 128, label %33
  ]

17:                                               ; preds = %13
  %18 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i32 @lapb_state0_machine(%struct.lapb_cb* %18, %struct.sk_buff* %19, %struct.lapb_frame* %5)
  br label %37

21:                                               ; preds = %13
  %22 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @lapb_state1_machine(%struct.lapb_cb* %22, %struct.sk_buff* %23, %struct.lapb_frame* %5)
  br label %37

25:                                               ; preds = %13
  %26 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @lapb_state2_machine(%struct.lapb_cb* %26, %struct.sk_buff* %27, %struct.lapb_frame* %5)
  br label %37

29:                                               ; preds = %13
  %30 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @lapb_state3_machine(%struct.lapb_cb* %30, %struct.sk_buff* %31, %struct.lapb_frame* %5)
  br label %37

33:                                               ; preds = %13
  %34 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @lapb_state4_machine(%struct.lapb_cb* %34, %struct.sk_buff* %35, %struct.lapb_frame* %5)
  br label %37

37:                                               ; preds = %13, %33, %29, %25, %21, %17
  %38 = load %struct.lapb_cb*, %struct.lapb_cb** %3, align 8
  %39 = call i32 @lapb_kick(%struct.lapb_cb* %38)
  br label %40

40:                                               ; preds = %37, %10
  ret void
}

declare dso_local i64 @lapb_decode(%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lapb_state0_machine(%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*) #1

declare dso_local i32 @lapb_state1_machine(%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*) #1

declare dso_local i32 @lapb_state2_machine(%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*) #1

declare dso_local i32 @lapb_state3_machine(%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*) #1

declare dso_local i32 @lapb_state4_machine(%struct.lapb_cb*, %struct.sk_buff*, %struct.lapb_frame*) #1

declare dso_local i32 @lapb_kick(%struct.lapb_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
