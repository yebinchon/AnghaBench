; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_frag_kfree_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_frag_kfree_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netns_frags = type { i32 }
%struct.inet_frags = type { i32 (%struct.sk_buff*)* }
%struct.sk_buff = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netns_frags*, %struct.inet_frags*, %struct.sk_buff*, i32*)* @frag_kfree_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frag_kfree_skb(%struct.netns_frags* %0, %struct.inet_frags* %1, %struct.sk_buff* %2, i32* %3) #0 {
  %5 = alloca %struct.netns_frags*, align 8
  %6 = alloca %struct.inet_frags*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  store %struct.netns_frags* %0, %struct.netns_frags** %5, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %17, %14
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  br label %20

20:                                               ; preds = %11, %4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.netns_frags*, %struct.netns_frags** %5, align 8
  %25 = getelementptr inbounds %struct.netns_frags, %struct.netns_frags* %24, i32 0, i32 0
  %26 = call i32 @atomic_sub(i64 %23, i32* %25)
  %27 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %28 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %27, i32 0, i32 0
  %29 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %28, align 8
  %30 = icmp ne i32 (%struct.sk_buff*)* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %20
  %32 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %33 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %32, i32 0, i32 0
  %34 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = call i32 %34(%struct.sk_buff* %35)
  br label %37

37:                                               ; preds = %31, %20
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @kfree_skb(%struct.sk_buff* %38)
  ret void
}

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
