; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_rules.c_dn_fib_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rule = type { i32 }
%struct.flowi = type { i32, i32 }
%struct.dn_fib_rule = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib_rule*, %struct.flowi*, i32)* @dn_fib_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_rule_match(%struct.fib_rule* %0, %struct.flowi* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fib_rule*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dn_fib_rule*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fib_rule* %0, %struct.fib_rule** %5, align 8
  store %struct.flowi* %1, %struct.flowi** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.fib_rule*, %struct.fib_rule** %5, align 8
  %12 = bitcast %struct.fib_rule* %11 to %struct.dn_fib_rule*
  store %struct.dn_fib_rule* %12, %struct.dn_fib_rule** %8, align 8
  %13 = load %struct.flowi*, %struct.flowi** %6, align 8
  %14 = getelementptr inbounds %struct.flowi, %struct.flowi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.flowi*, %struct.flowi** %6, align 8
  %17 = getelementptr inbounds %struct.flowi, %struct.flowi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %21 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %19, %22
  %24 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %25 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %32 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %30, %33
  %35 = load %struct.dn_fib_rule*, %struct.dn_fib_rule** %8, align 8
  %36 = getelementptr inbounds %struct.dn_fib_rule, %struct.dn_fib_rule* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29, %3
  store i32 0, i32* %4, align 4
  br label %42

41:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %40
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
