; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_fib_default_rule_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_fib_rules.c_fib_default_rule_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib_rules_ops = type { i32, i32, i32 }
%struct.fib_rule = type { i32, i32, i8*, i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FR_ACT_TO_TBL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fib_default_rule_add(%struct.fib_rules_ops* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fib_rules_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fib_rule*, align 8
  store %struct.fib_rules_ops* %0, %struct.fib_rules_ops** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %12 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.fib_rule* @kzalloc(i32 %13, i32 %14)
  store %struct.fib_rule* %15, %struct.fib_rule** %10, align 8
  %16 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %17 = icmp eq %struct.fib_rule* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %48

21:                                               ; preds = %4
  %22 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %23 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %22, i32 0, i32 6
  %24 = call i32 @atomic_set(i32* %23, i32 1)
  %25 = load i32, i32* @FR_ACT_TO_TBL, align 4
  %26 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %27 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %30 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %33 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %36 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %38 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @hold_net(i32 %39)
  %41 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %42 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.fib_rule*, %struct.fib_rule** %10, align 8
  %44 = getelementptr inbounds %struct.fib_rule, %struct.fib_rule* %43, i32 0, i32 0
  %45 = load %struct.fib_rules_ops*, %struct.fib_rules_ops** %6, align 8
  %46 = getelementptr inbounds %struct.fib_rules_ops, %struct.fib_rules_ops* %45, i32 0, i32 0
  %47 = call i32 @list_add_tail(i32* %44, i32* %46)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %21, %18
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.fib_rule* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hold_net(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
