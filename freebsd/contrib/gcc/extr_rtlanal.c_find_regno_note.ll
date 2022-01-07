; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_regno_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_find_regno_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_regno_note(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @INSN_P(i64 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %72

13:                                               ; preds = %3
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @REG_NOTES(i64 %14)
  store i64 %15, i64* %8, align 8
  br label %16

16:                                               ; preds = %68, %13
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %71

19:                                               ; preds = %16
  %20 = load i64, i64* %8, align 8
  %21 = call i32 @REG_NOTE_KIND(i64 %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %67

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  %27 = call i64 @REG_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %67

29:                                               ; preds = %24
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @XEXP(i64 %30, i32 0)
  %32 = call i64 @REGNO(i64 %31)
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp ule i64 %32, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = call i64 @REGNO(i64 %38)
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @XEXP(i64 %40, i32 0)
  %42 = call i64 @REGNO(i64 %41)
  %43 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %44 = icmp uge i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %58

46:                                               ; preds = %36
  %47 = load i32**, i32*** @hard_regno_nregs, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @XEXP(i64 %48, i32 0)
  %50 = call i64 @REGNO(i64 %49)
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @XEXP(i64 %53, i32 0)
  %55 = call i64 @GET_MODE(i64 %54)
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  br label %58

58:                                               ; preds = %46, %45
  %59 = phi i32 [ 1, %45 ], [ %57, %46 ]
  %60 = sext i32 %59 to i64
  %61 = add i64 %39, %60
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = icmp ugt i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %4, align 8
  br label %72

67:                                               ; preds = %58, %29, %24, %19
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = call i64 @XEXP(i64 %69, i32 1)
  store i64 %70, i64* %8, align 8
  br label %16

71:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %72

72:                                               ; preds = %71, %65, %12
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i32 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
