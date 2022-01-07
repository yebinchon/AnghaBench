; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_nfa.c_new_rule.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_nfa.c_new_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_rules = common dso_local global i64 0, align 8
@current_max_rules = common dso_local global i64 0, align 8
@num_reallocs = common dso_local global i32 0, align 4
@MAX_RULES_INCREMENT = common dso_local global i64 0, align 8
@rule_type = common dso_local global i32* null, align 8
@rule_linenum = common dso_local global i32* null, align 8
@rule_useful = common dso_local global i32* null, align 8
@rule_has_nl = common dso_local global i32* null, align 8
@MAX_RULE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"too many rules (> %d)!\00", align 1
@linenum = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_rule() #0 {
  %1 = load i64, i64* @num_rules, align 8
  %2 = add nsw i64 %1, 1
  store i64 %2, i64* @num_rules, align 8
  %3 = load i64, i64* @current_max_rules, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %23

5:                                                ; preds = %0
  %6 = load i32, i32* @num_reallocs, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @num_reallocs, align 4
  %8 = load i64, i64* @MAX_RULES_INCREMENT, align 8
  %9 = load i64, i64* @current_max_rules, align 8
  %10 = add nsw i64 %9, %8
  store i64 %10, i64* @current_max_rules, align 8
  %11 = load i32*, i32** @rule_type, align 8
  %12 = load i64, i64* @current_max_rules, align 8
  %13 = call i32* @reallocate_integer_array(i32* %11, i64 %12)
  store i32* %13, i32** @rule_type, align 8
  %14 = load i32*, i32** @rule_linenum, align 8
  %15 = load i64, i64* @current_max_rules, align 8
  %16 = call i32* @reallocate_integer_array(i32* %14, i64 %15)
  store i32* %16, i32** @rule_linenum, align 8
  %17 = load i32*, i32** @rule_useful, align 8
  %18 = load i64, i64* @current_max_rules, align 8
  %19 = call i32* @reallocate_integer_array(i32* %17, i64 %18)
  store i32* %19, i32** @rule_useful, align 8
  %20 = load i32*, i32** @rule_has_nl, align 8
  %21 = load i64, i64* @current_max_rules, align 8
  %22 = call i32* @reallocate_bool_array(i32* %20, i64 %21)
  store i32* %22, i32** @rule_has_nl, align 8
  br label %23

23:                                               ; preds = %5, %0
  %24 = load i64, i64* @num_rules, align 8
  %25 = load i64, i64* @MAX_RULE, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @MAX_RULE, align 8
  %30 = call i32 @lerrif(i32 %28, i64 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @linenum, align 4
  %33 = load i32*, i32** @rule_linenum, align 8
  %34 = load i64, i64* @num_rules, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i32*, i32** @rule_useful, align 8
  %37 = load i64, i64* @num_rules, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load i32*, i32** @rule_has_nl, align 8
  %40 = load i64, i64* @num_rules, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 0, i32* %41, align 4
  ret void
}

declare dso_local i32* @reallocate_integer_array(i32*, i64) #1

declare dso_local i32* @reallocate_bool_array(i32*, i64) #1

declare dso_local i32 @lerrif(i32, i64) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
