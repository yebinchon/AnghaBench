; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.sk_buff = type { i32 }
%struct.fib_rule_hdr = type { i64, i64, i64 }
%struct.dn_fib_rule = type { i32, i64, i32, i64 }

@FRA_DST = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.sk_buff*, %struct.fib_rule_hdr*)* @dn_fib_rule_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_fill(%struct.fib_rule* %0, %struct.sk_buff* %1, %struct.fib_rule_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.fib_rule_hdr*, align 8
  %8 = alloca %struct.dn_fib_rule*, align 8
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.fib_rule_hdr* %2, %struct.fib_rule_hdr** %7, align 8
  %9 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %10 = bitcast %struct.fib_rule* %9 to %struct.dn_fib_rule*
  store %struct.dn_fib_rule* %10, %struct.dn_fib_rule** %8, align 8
  %11 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %12 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %15 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %14, i32 0, i32 2
  store i64 %13, i64* %15, align 8
  %16 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %17 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %20 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %19, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  %23 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %24 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = load i32, i32* @FRA_DST, align 4
  %30 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %31 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @NLA_PUT_LE16(%struct.sk_buff* %28, i32 %29, i32 %32)
  br label %34

34:                                               ; preds = %27, %3
  %35 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %36 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load i32, i32* @FRA_SRC, align 4
  %42 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %43 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @NLA_PUT_LE16(%struct.sk_buff* %40, i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %39, %34
  store i32 0, i32* %4, align 4
  br label %50

47:                                               ; No predecessors!
  %48 = load i32, i32* @ENOBUFS, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %46
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @NLA_PUT_LE16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
