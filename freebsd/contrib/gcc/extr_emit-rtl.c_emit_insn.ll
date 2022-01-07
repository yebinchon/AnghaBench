; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_emit_insn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_emit_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_insn = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @emit_insn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* @last_insn, align 8
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @NULL_RTX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %2, align 8
  br label %36

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @GET_CODE(i64 %14)
  switch i32 %15, label %29 [
    i32 131, label %16
    i32 130, label %16
    i32 133, label %16
    i32 132, label %16
    i32 134, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %13, %13, %13, %13, %13, %13
  %17 = load i64, i64* %3, align 8
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %21, %16
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @NEXT_INSN(i64 %22)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @add_insn(i64 %24)
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %4, align 8
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %5, align 8
  br label %18

28:                                               ; preds = %18
  br label %34

29:                                               ; preds = %13
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @make_insn_raw(i64 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @add_insn(i64 %32)
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %34, %11
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @add_insn(i64) #1

declare dso_local i64 @make_insn_raw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
