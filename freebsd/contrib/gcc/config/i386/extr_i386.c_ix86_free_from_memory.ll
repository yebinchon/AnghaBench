; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_free_from_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_free_from_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_RED_ZONE = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@TARGET_64BIT = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@stack_pointer_rtx = common dso_local global i32 0, align 4
@Pmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_free_from_memory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @TARGET_RED_ZONE, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %25, label %6

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @DImode, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i64, i64* @TARGET_64BIT, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %6
  store i32 8, i32* %3, align 4
  br label %15

14:                                               ; preds = %10
  store i32 4, i32* %3, align 4
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* @VOIDmode, align 4
  %17 = load i32, i32* @stack_pointer_rtx, align 4
  %18 = load i32, i32* @Pmode, align 4
  %19 = load i32, i32* @stack_pointer_rtx, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GEN_INT(i32 %20)
  %22 = call i32 @gen_rtx_PLUS(i32 %18, i32 %19, i32 %21)
  %23 = call i32 @gen_rtx_SET(i32 %16, i32 %17, i32 %22)
  %24 = call i32 @emit_insn(i32 %23)
  br label %25

25:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_rtx_SET(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_PLUS(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
