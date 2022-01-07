; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_frag_reinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_ip_fragment.c_ip_frag_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sk_buff*, i64, i64, i64, %struct.TYPE_4__*, i32, i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq*)* @ip_frag_reinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_frag_reinit(%struct.ipq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipq*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.ipq* %0, %struct.ipq** %3, align 8
  %6 = load %struct.ipq*, %struct.ipq** %3, align 8
  %7 = getelementptr inbounds %struct.ipq, %struct.ipq* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 6
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.ipq*, %struct.ipq** %3, align 8
  %11 = getelementptr inbounds %struct.ipq, %struct.ipq* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %9, %15
  %17 = call i32 @mod_timer(i32* %8, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.ipq*, %struct.ipq** %3, align 8
  %21 = getelementptr inbounds %struct.ipq, %struct.ipq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  %23 = call i32 @atomic_inc(i32* %22)
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %60

26:                                               ; preds = %1
  %27 = load %struct.ipq*, %struct.ipq** %3, align 8
  %28 = getelementptr inbounds %struct.ipq, %struct.ipq* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %4, align 8
  br label %31

31:                                               ; preds = %42, %26
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %5, align 8
  %35 = load %struct.ipq*, %struct.ipq** %3, align 8
  %36 = getelementptr inbounds %struct.ipq, %struct.ipq* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @frag_kfree_skb(%struct.TYPE_4__* %38, %struct.sk_buff* %39, i32* null)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %41, %struct.sk_buff** %4, align 8
  br label %42

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %31, label %45

45:                                               ; preds = %42
  %46 = load %struct.ipq*, %struct.ipq** %3, align 8
  %47 = getelementptr inbounds %struct.ipq, %struct.ipq* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.ipq*, %struct.ipq** %3, align 8
  %50 = getelementptr inbounds %struct.ipq, %struct.ipq* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.ipq*, %struct.ipq** %3, align 8
  %53 = getelementptr inbounds %struct.ipq, %struct.ipq* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.ipq*, %struct.ipq** %3, align 8
  %56 = getelementptr inbounds %struct.ipq, %struct.ipq* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %57, align 8
  %58 = load %struct.ipq*, %struct.ipq** %3, align 8
  %59 = getelementptr inbounds %struct.ipq, %struct.ipq* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %45, %19
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @frag_kfree_skb(%struct.TYPE_4__*, %struct.sk_buff*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
