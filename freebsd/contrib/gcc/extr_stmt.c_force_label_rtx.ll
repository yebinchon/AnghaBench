; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_force_label_rtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_force_label_rtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.function = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@current_function_decl = common dso_local global i64 0, align 8
@cfun = common dso_local global %struct.function* null, align 8
@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @force_label_rtx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.function*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = call i32 @label_rtx(i64 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @decl_function_context(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @gcc_assert(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @current_function_decl, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.function* @find_function_data(i64 %16)
  store %struct.function* %17, %struct.function** %5, align 8
  br label %20

18:                                               ; preds = %1
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %19, %struct.function** %5, align 8
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i32, i32* @VOIDmode, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.function*, %struct.function** %5, align 8
  %24 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gen_rtx_EXPR_LIST(i32 %21, i32 %22, i32 %27)
  %29 = load %struct.function*, %struct.function** %5, align 8
  %30 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 4
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @label_rtx(i64) #1

declare dso_local i64 @decl_function_context(i64) #1

declare dso_local i32 @gcc_assert(i64) #1

declare dso_local %struct.function* @find_function_data(i64) #1

declare dso_local i32 @gen_rtx_EXPR_LIST(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
