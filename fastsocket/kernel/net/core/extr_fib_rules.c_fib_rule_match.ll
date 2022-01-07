; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_fib_rule_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_fib_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i64, i32, i32, i32 }
%struct.fib_rules_ops = type { i32 (%struct.fib_rule.0*, %struct.flowi*, i32)* }
%struct.fib_rule.0 = type opaque
%struct.flowi = type { i64, i32 }

@FIB_RULE_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.fib_rules_ops*, %struct.flowi*, i32)* @fib_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fib_rule_match(%struct.fib_rule* %0, %struct.fib_rules_ops* %1, %struct.flowi* %2, i32 %3) #0 {
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.fib_rules_ops*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.fib_rules_ops* %1, %struct.fib_rules_ops** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %11 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %4
  %15 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %16 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.flowi*, %struct.flowi** %7, align 8
  %19 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %46

23:                                               ; preds = %14, %4
  %24 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %25 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.flowi*, %struct.flowi** %7, align 8
  %28 = getelementptr inbounds %struct.flowi, %struct.flowi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %26, %29
  %31 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %32 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %46

37:                                               ; preds = %23
  %38 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %39 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %38, i32 0, i32 0
  %40 = load i32 (%struct.fib_rule.0*, %struct.flowi*, i32)*, i32 (%struct.fib_rule.0*, %struct.flowi*, i32)** %39, align 8
  %41 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %42 = bitcast %struct.fib_rule* %41 to %struct.fib_rule.0*
  %43 = load %struct.flowi*, %struct.flowi** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %40(%struct.fib_rule.0* %42, %struct.flowi* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %37, %36, %22
  %47 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %48 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FIB_RULE_INVERT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* %9, align 4
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi i32 [ %57, %53 ], [ %59, %58 ]
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
