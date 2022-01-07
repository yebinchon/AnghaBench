; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_emit_call_insn_before_noloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_emit_call_insn_before_noloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emit_call_insn_before_noloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @NULL_RTX, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @gcc_assert(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  switch i32 %12, label %27 [
    i32 131, label %13
    i32 130, label %13
    i32 133, label %13
    i32 132, label %13
    i32 134, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %2, %2, %2, %2, %2, %2
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %18, %13
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @NEXT_INSN(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @add_insn_before(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %6, align 4
  br label %15

26:                                               ; preds = %15
  br label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @make_call_insn_raw(i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @add_insn_before(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %26
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @NEXT_INSN(i32) #1

declare dso_local i32 @add_insn_before(i32, i32) #1

declare dso_local i32 @make_call_insn_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
