; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_update_nonlocal_goto_save_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_explow.c_update_nonlocal_goto_save_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@ARRAY_REF = common dso_local global i32 0, align 4
@ptr_type_node = common dso_local global i32 0, align 4
@cfun = common dso_local global %struct.TYPE_2__* null, align 8
@integer_one_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@EXPAND_WRITE = common dso_local global i32 0, align 4
@SAVE_NONLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_nonlocal_goto_save_area() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @ARRAY_REF, align 4
  %4 = load i32, i32* @ptr_type_node, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cfun, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @integer_one_node, align 4
  %9 = load i32, i32* @NULL_TREE, align 4
  %10 = load i32, i32* @NULL_TREE, align 4
  %11 = call i32 @build4(i32 %3, i32 %4, i32 %7, i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @NULL_RTX, align 4
  %14 = load i32, i32* @VOIDmode, align 4
  %15 = load i32, i32* @EXPAND_WRITE, align 4
  %16 = call i32 @expand_expr(i32 %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* @SAVE_NONLOCAL, align 4
  %18 = load i32, i32* @NULL_RTX, align 4
  %19 = call i32 @emit_stack_save(i32 %17, i32* %2, i32 %18)
  ret void
}

declare dso_local i32 @build4(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @expand_expr(i32, i32, i32, i32) #1

declare dso_local i32 @emit_stack_save(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
