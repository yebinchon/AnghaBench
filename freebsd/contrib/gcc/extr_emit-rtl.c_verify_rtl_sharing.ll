; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_verify_rtl_sharing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_emit-rtl.c_verify_rtl_sharing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @verify_rtl_sharing() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 (...) @get_insns()
  store i64 %2, i64* %1, align 8
  br label %3

3:                                                ; preds = %21, %0
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %3
  %7 = load i64, i64* %1, align 8
  %8 = call i64 @INSN_P(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @PATTERN(i64 %11)
  %13 = call i32 @reset_used_flags(i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @REG_NOTES(i64 %14)
  %16 = call i32 @reset_used_flags(i32 %15)
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @LOG_LINKS(i64 %17)
  %19 = call i32 @reset_used_flags(i32 %18)
  br label %20

20:                                               ; preds = %10, %6
  br label %21

21:                                               ; preds = %20
  %22 = load i64, i64* %1, align 8
  %23 = call i64 @NEXT_INSN(i64 %22)
  store i64 %23, i64* %1, align 8
  br label %3

24:                                               ; preds = %3
  %25 = call i64 (...) @get_insns()
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %47, %24
  %27 = load i64, i64* %1, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i64, i64* %1, align 8
  %31 = call i64 @INSN_P(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load i64, i64* %1, align 8
  %35 = call i32 @PATTERN(i64 %34)
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @verify_rtx_sharing(i32 %35, i64 %36)
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @REG_NOTES(i64 %38)
  %40 = load i64, i64* %1, align 8
  %41 = call i32 @verify_rtx_sharing(i32 %39, i64 %40)
  %42 = load i64, i64* %1, align 8
  %43 = call i32 @LOG_LINKS(i64 %42)
  %44 = load i64, i64* %1, align 8
  %45 = call i32 @verify_rtx_sharing(i32 %43, i64 %44)
  br label %46

46:                                               ; preds = %33, %29
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %1, align 8
  %49 = call i64 @NEXT_INSN(i64 %48)
  store i64 %49, i64* %1, align 8
  br label %26

50:                                               ; preds = %26
  ret void
}

declare dso_local i64 @get_insns(...) #1

declare dso_local i64 @INSN_P(i64) #1

declare dso_local i32 @reset_used_flags(i32) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i32 @REG_NOTES(i64) #1

declare dso_local i32 @LOG_LINKS(i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

declare dso_local i32 @verify_rtx_sharing(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
