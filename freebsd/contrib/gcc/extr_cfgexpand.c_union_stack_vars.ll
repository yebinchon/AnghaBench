; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_union_stack_vars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgexpand.c_union_stack_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i32 }

@EOC = common dso_local global i64 0, align 8
@stack_vars = common dso_local global %struct.TYPE_2__* null, align 8
@stack_vars_num = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @union_stack_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @union_stack_vars(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  store i64 %9, i64* %7, align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %29, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @EOC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %17 = load i64, i64* %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %15
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 %24, i64* %28, align 8
  br label %29

29:                                               ; preds = %14
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %7, align 8
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %41, i64* %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i64 %46, i64* %50, align 8
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %55, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %36
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @stack_vars, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %62, %36
  %73 = load i64, i64* @stack_vars_num, align 8
  store i64 %73, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %74

74:                                               ; preds = %88, %72
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ult i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @stack_var_conflict_p(i64 %79, i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i64, i64* %4, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @add_stack_var_conflict(i64 %84, i64 %85)
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %74

91:                                               ; preds = %74
  ret void
}

declare dso_local i64 @stack_var_conflict_p(i64, i64) #1

declare dso_local i32 @add_stack_var_conflict(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
