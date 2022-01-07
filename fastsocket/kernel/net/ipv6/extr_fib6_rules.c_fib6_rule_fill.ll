; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_fib6_rules.c_fib6_rule_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i32, i64, i64 }
%struct.fib6_rule = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i64 }

@FRA_DST = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*)* @fib6_rule_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib6_rule_fill(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fib_rule_hdr*, align 8
  %8 = alloca %struct.fib6_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %7, align 8
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.fib6_rule*
  store %struct.fib6_rule* %10, %struct.fib6_rule** %8, align 8
  %11 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %12 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %16 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %15, i32 0, i32 2
  store i64 %14, i64* %16, align 8
  %17 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %18 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %24 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %29 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @FRA_DST, align 4
  %36 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %37 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @NLA_PUT(%struct.sk_buff* %34, i32 %35, i32 4, i32* %38)
  br label %40

40:                                               ; preds = %33, %3
  %41 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %42 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %48 = load i32, i32* @FRA_SRC, align 4
  %49 = load %struct.fib6_rule*, %struct.fib6_rule** %8, align 8
  %50 = getelementptr inbounds %struct.fib6_rule, %struct.fib6_rule* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @NLA_PUT(%struct.sk_buff* %47, i32 %48, i32 4, i32* %51)
  br label %53

53:                                               ; preds = %46, %40
  store i32 0, i32* %4, align 4
  br label %57

54:                                               ; No predecessors!
  %55 = load i32, i32* @ENOBUFS, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
