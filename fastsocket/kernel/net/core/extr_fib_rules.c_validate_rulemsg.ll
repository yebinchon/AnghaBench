; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_validate_rulemsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_validate_rulemsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule_hdr = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.fib_rules_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FRA_SRC = common dso_local global i64 0, align 8
@FRA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule_hdr*, %struct.nlattr**, %struct.fib_rules_ops*)* @validate_rulemsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_rulemsg(%struct.fib_rule_hdr* %0, %struct.nlattr** %1, %struct.fib_rules_ops* %2) #0 {
  %4 = alloca %struct.fib_rule_hdr*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.fib_rules_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.fib_rule_hdr* %0, %struct.fib_rule_hdr** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.fib_rules_ops* %2, %struct.fib_rules_ops** %6, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %4, align 8
  %11 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %3
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i64, i64* @FRA_SRC, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp eq %struct.nlattr* %18, null
  br i1 %19, label %39, label %20

20:                                               ; preds = %14
  %21 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %4, align 8
  %22 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %25 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 8
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %20
  %30 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %31 = load i64, i64* @FRA_SRC, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i32 @nla_len(%struct.nlattr* %33)
  %35 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %36 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29, %20, %14
  br label %74

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %3
  %42 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %4, align 8
  %43 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %48 = load i64, i64* @FRA_DST, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp eq %struct.nlattr* %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %46
  %53 = load %struct.fib_rule_hdr*, %struct.fib_rule_hdr** %4, align 8
  %54 = getelementptr inbounds %struct.fib_rule_hdr, %struct.fib_rule_hdr* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %57 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 8
  %60 = icmp sgt i32 %55, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %52
  %62 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %63 = load i64, i64* @FRA_DST, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @nla_len(%struct.nlattr* %65)
  %67 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %68 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61, %52, %46
  br label %74

72:                                               ; preds = %61
  br label %73

73:                                               ; preds = %72, %41
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %71, %39
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
