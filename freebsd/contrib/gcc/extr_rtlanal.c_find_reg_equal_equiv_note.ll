; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_reg_equal_equiv_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_reg_equal_equiv_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG_EQUAL = common dso_local global i64 0, align 8
@REG_EQUIV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @find_reg_equal_equiv_note(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @INSN_P(i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32* null, i32** %2, align 8
  br label %37

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @REG_NOTES(i32* %10)
  store i32* %11, i32** %4, align 8
  br label %12

12:                                               ; preds = %33, %9
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %12
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @REG_NOTE_KIND(i32* %16)
  %18 = load i64, i64* @REG_EQUAL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @REG_NOTE_KIND(i32* %21)
  %23 = load i64, i64* @REG_EQUIV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %20, %15
  %26 = load i32*, i32** %3, align 8
  %27 = call i64 @single_set(i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32* null, i32** %2, align 8
  br label %37

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  store i32* %31, i32** %2, align 8
  br label %37

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @XEXP(i32* %34, i32 1)
  store i32* %35, i32** %4, align 8
  br label %12

36:                                               ; preds = %12
  store i32* null, i32** %2, align 8
  br label %37

37:                                               ; preds = %36, %30, %29, %8
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32 @INSN_P(i32*) #1

declare dso_local i32* @REG_NOTES(i32*) #1

declare dso_local i64 @REG_NOTE_KIND(i32*) #1

declare dso_local i64 @single_set(i32*) #1

declare dso_local i32* @XEXP(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
