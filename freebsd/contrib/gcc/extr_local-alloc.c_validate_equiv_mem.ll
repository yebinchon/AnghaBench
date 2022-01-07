; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_validate_equiv_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_local-alloc.c_validate_equiv_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@equiv_mem = common dso_local global i64 0, align 8
@equiv_mem_modified = common dso_local global i64 0, align 8
@REG_DEAD = common dso_local global i64 0, align 8
@validate_equiv_mem_from_store = common dso_local global i32 0, align 4
@REG_INC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64)* @validate_equiv_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_equiv_mem(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  store i64 %10, i64* @equiv_mem, align 8
  store i64 0, i64* @equiv_mem_modified, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @side_effects_p(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %88, %15
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* @equiv_mem_modified, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %91

26:                                               ; preds = %24
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @INSN_P(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %88

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @REG_DEAD, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i64 @find_reg_note(i64 %32, i64 %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %92

38:                                               ; preds = %31
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @CALL_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @MEM_READONLY_P(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @CONST_OR_PURE_CALL_P(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %92

51:                                               ; preds = %46, %42, %38
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @PATTERN(i64 %52)
  %54 = load i32, i32* @validate_equiv_mem_from_store, align 4
  %55 = call i32 @note_stores(i32 %53, i32 %54, i32* null)
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @REG_NOTES(i64 %56)
  store i64 %57, i64* %9, align 8
  br label %58

58:                                               ; preds = %84, %51
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @REG_NOTE_KIND(i64 %62)
  %64 = load i64, i64* @REG_INC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @REG_NOTE_KIND(i64 %67)
  %69 = load i64, i64* @REG_DEAD, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %66, %61
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @XEXP(i64 %72, i32 0)
  %74 = call i64 @REG_P(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @XEXP(i64 %77, i32 0)
  %79 = load i64, i64* %7, align 8
  %80 = call i64 @reg_overlap_mentioned_p(i64 %78, i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %92

83:                                               ; preds = %76, %71, %66
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @XEXP(i64 %85, i32 1)
  store i64 %86, i64* %9, align 8
  br label %58

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %87, %30
  %89 = load i64, i64* %8, align 8
  %90 = call i64 @NEXT_INSN(i64 %89)
  store i64 %90, i64* %8, align 8
  br label %17

91:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %82, %50, %37, %14
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @side_effects_p(i64) #1

declare dso_local i32 @INSN_P(i64) #1

declare dso_local i64 @find_reg_note(i64, i64, i64) #1

declare dso_local i64 @CALL_P(i64) #1

declare dso_local i32 @MEM_READONLY_P(i64) #1

declare dso_local i32 @CONST_OR_PURE_CALL_P(i64) #1

declare dso_local i32 @note_stores(i32, i32, i32*) #1

declare dso_local i32 @PATTERN(i64) #1

declare dso_local i64 @REG_NOTES(i64) #1

declare dso_local i64 @REG_NOTE_KIND(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @reg_overlap_mentioned_p(i64, i64) #1

declare dso_local i64 @NEXT_INSN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
