; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib4_rule_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_rules.c_fib4_rule_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i32, i64, i64 }
%struct.fib4_rule = type { i64, i32, i64, i32, i64, i32 }

@FRA_DST = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@FRA_FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*)* @fib4_rule_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib4_rule_fill(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fib_rule_hdr*, align 8
  %8 = alloca %struct.fib4_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %7, align 8
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.fib4_rule*
  store %struct.fib4_rule* %10, %struct.fib4_rule** %8, align 8
  %11 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %12 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %17 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %22 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %27 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = load i32, i32* @FRA_DST, align 4
  %33 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %34 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %3
  %38 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %39 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load i32, i32* @FRA_SRC, align 4
  %45 = load %struct.fib4_rule*, %struct.fib4_rule** %8, align 8
  %46 = getelementptr inbounds %struct.fib4_rule, %struct.fib4_rule* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @NLA_PUT_BE32(%struct.sk_buff* %43, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  store i32 0, i32* %4, align 4
  br label %53

50:                                               ; No predecessors!
  %51 = load i32, i32* @ENOBUFS, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %49
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @NLA_PUT_BE32(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
