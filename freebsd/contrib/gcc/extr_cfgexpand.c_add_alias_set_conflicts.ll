; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_add_alias_set_conflicts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_add_alias_set_conflicts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@stack_vars_num = common dso_local global i64 0, align 8
@stack_vars = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_alias_set_conflicts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_alias_set_conflicts() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i64, i64* @stack_vars_num, align 8
  store i64 %9, i64* %3, align 8
  store i64 0, i64* %1, align 8
  br label %10

10:                                               ; preds = %58, %0
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* %3, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %16 = load i64, i64* %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TREE_TYPE(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @AGGREGATE_TYPE_P(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @aggregate_contains_union_type(i32 %23)
  store i32 %24, i32* %6, align 4
  store i64 0, i64* %2, align 8
  br label %25

25:                                               ; preds = %54, %14
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* %1, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %57

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %31 = load i64, i64* %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @TREE_TYPE(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @AGGREGATE_TYPE_P(i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @objects_must_conflict_p(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46, %41, %29
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* %2, align 8
  %52 = call i32 @add_stack_var_conflict(i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %2, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %2, align 8
  br label %25

57:                                               ; preds = %25
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %1, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %1, align 8
  br label %10

61:                                               ; preds = %10
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @aggregate_contains_union_type(i32) #1

declare dso_local i32 @objects_must_conflict_p(i32, i32) #1

declare dso_local i32 @add_stack_var_conflict(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
