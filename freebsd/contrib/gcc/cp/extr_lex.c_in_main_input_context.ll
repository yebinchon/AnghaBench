; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_in_main_input_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_lex.c_in_main_input_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_input_filename = common dso_local global i32 0, align 4
@input_filename = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in_main_input_context() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @outermost_tinst_level()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @main_input_filename, align 4
  %8 = load i64, i64* %2, align 8
  %9 = call i32 @TINST_LOCATION(i64 %8)
  %10 = call i32 @LOCATION_FILE(i32 %9)
  %11 = call i64 @strcmp(i32 %7, i32 %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %1, align 4
  br label %20

14:                                               ; preds = %0
  %15 = load i32, i32* @main_input_filename, align 4
  %16 = load i32, i32* @input_filename, align 4
  %17 = call i64 @strcmp(i32 %15, i32 %16)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %14, %6
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64 @outermost_tinst_level(...) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @LOCATION_FILE(i32) #1

declare dso_local i32 @TINST_LOCATION(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
