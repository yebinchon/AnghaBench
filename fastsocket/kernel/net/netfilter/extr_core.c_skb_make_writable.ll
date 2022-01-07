; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_skb_make_writable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_skb_make_writable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_make_writable(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_cloned(%struct.sk_buff* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @skb_headlen(%struct.sk_buff* %18)
  %20 = icmp ule i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %49

22:                                               ; preds = %16
  br label %30

23:                                               ; preds = %12
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @skb_clone_writable(%struct.sk_buff* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %49

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @skb_headlen(%struct.sk_buff* %32)
  %34 = icmp ule i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %41

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @skb_headlen(%struct.sk_buff* %37)
  %39 = load i32, i32* %5, align 4
  %40 = sub i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @__pskb_pull_tail(%struct.sk_buff* %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %28, %21, %11
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @skb_clone_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
