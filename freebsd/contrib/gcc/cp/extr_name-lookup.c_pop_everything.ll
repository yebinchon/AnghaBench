; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pop_everything.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_pop_everything.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@ENABLE_SCOPE_CHECKING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"XXX entering pop_everything ()\0A\00", align 1
@current_binding_level = common dso_local global %struct.TYPE_2__* null, align 8
@sk_class = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"XXX leaving pop_everything ()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pop_everything() #0 {
  %1 = load i64, i64* @ENABLE_SCOPE_CHECKING, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @verbatim(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %5

5:                                                ; preds = %3, %0
  br label %6

6:                                                ; preds = %20, %5
  %7 = call i32 (...) @toplevel_bindings_p()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_binding_level, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @sk_class, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 (...) @pop_nested_class()
  br label %20

18:                                               ; preds = %10
  %19 = call i32 @poplevel(i32 0, i32 0, i32 0)
  br label %20

20:                                               ; preds = %18, %16
  br label %6

21:                                               ; preds = %6
  %22 = load i64, i64* @ENABLE_SCOPE_CHECKING, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @verbatim(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %21
  ret void
}

declare dso_local i32 @verbatim(i8*) #1

declare dso_local i32 @toplevel_bindings_p(...) #1

declare dso_local i32 @pop_nested_class(...) #1

declare dso_local i32 @poplevel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
