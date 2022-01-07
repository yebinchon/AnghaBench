; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.gre_protocol = type { i32 (%struct.sk_buff*)* }

@GREPROTO_MAX = common dso_local global i64 0, align 8
@gre_proto = common dso_local global i32* null, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @gre_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gre_rcv(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.gre_protocol*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call i32 @pskb_may_pull(%struct.sk_buff* %7, i32 12)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 127
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @GREPROTO_MAX, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %48

23:                                               ; preds = %11
  %24 = call i32 (...) @rcu_read_lock()
  %25 = load i32*, i32** @gre_proto, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.gre_protocol* @rcu_dereference(i32 %28)
  store %struct.gre_protocol* %29, %struct.gre_protocol** %4, align 8
  %30 = load %struct.gre_protocol*, %struct.gre_protocol** %4, align 8
  %31 = icmp ne %struct.gre_protocol* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load %struct.gre_protocol*, %struct.gre_protocol** %4, align 8
  %34 = getelementptr inbounds %struct.gre_protocol, %struct.gre_protocol* %33, i32 0, i32 0
  %35 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %34, align 8
  %36 = icmp ne i32 (%struct.sk_buff*)* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %23
  br label %46

38:                                               ; preds = %32
  %39 = load %struct.gre_protocol*, %struct.gre_protocol** %4, align 8
  %40 = getelementptr inbounds %struct.gre_protocol, %struct.gre_protocol* %39, i32 0, i32 0
  %41 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %43 = call i32 %41(%struct.sk_buff* %42)
  store i32 %43, i32* %6, align 4
  %44 = call i32 (...) @rcu_read_unlock()
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %52

46:                                               ; preds = %37
  %47 = call i32 (...) @rcu_read_unlock()
  br label %48

48:                                               ; preds = %46, %22, %10
  %49 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %50 = call i32 @kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gre_protocol* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
