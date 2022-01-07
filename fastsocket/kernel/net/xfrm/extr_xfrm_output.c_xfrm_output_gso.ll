; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_output.c_xfrm_output_gso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_output.c_xfrm_output_gso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @xfrm_output_gso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_output_gso(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.sk_buff* @skb_gso_segment(%struct.sk_buff* %7, i32 0)
  store %struct.sk_buff* %8, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call i32 @kfree_skb(%struct.sk_buff* %9)
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.sk_buff* %15)
  store i32 %16, i32* %2, align 4
  br label %49

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %45, %17
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @xfrm_output2(%struct.sk_buff* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %33, %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = icmp ne %struct.sk_buff* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  br label %30

41:                                               ; preds = %30
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %18
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %4, align 8
  br label %45

45:                                               ; preds = %43
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %18, label %48

48:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %41, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.sk_buff* @skb_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @xfrm_output2(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
