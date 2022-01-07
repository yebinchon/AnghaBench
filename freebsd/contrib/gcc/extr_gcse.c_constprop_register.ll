; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_constprop_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_constprop_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @constprop_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @constprop_register(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @single_set(i32* %15)
  store i32* %16, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = call i32* @NEXT_INSN(i32* %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %54

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = call i32* @NEXT_INSN(i32* %23)
  %25 = call i64 @any_condjump_p(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @NEXT_INSN(i32* %28)
  %30 = call i64 @onlyjump_p(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %27
  %33 = load i32*, i32** %10, align 8
  %34 = call i32* @SET_DEST(i32* %33)
  store i32* %34, i32** %11, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i64 @REG_P(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @CC0_P(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %38, %32
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @BLOCK_FOR_INSN(i32* %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @NEXT_INSN(i32* %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @cprop_jump(i32 %44, i32* %45, i32* %47, i32* %48, i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %85

53:                                               ; preds = %42, %38
  br label %54

54:                                               ; preds = %53, %27, %22, %18, %14, %4
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @NONJUMP_INSN_P(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @try_replace_reg(i32* %59, i32* %60, i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %5, align 4
  br label %85

65:                                               ; preds = %58, %54
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = load i32*, i32** %6, align 8
  %70 = call i64 @any_condjump_p(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = call i64 @onlyjump_p(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32*, i32** %6, align 8
  %78 = call i32 @BLOCK_FOR_INSN(i32* %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @cprop_jump(i32 %78, i32* null, i32* %79, i32* %80, i32* %81)
  store i32 %82, i32* %5, align 4
  br label %85

83:                                               ; preds = %72, %68, %65
  br label %84

84:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %84, %76, %64, %52
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32* @single_set(i32*) #1

declare dso_local i32* @NEXT_INSN(i32*) #1

declare dso_local i64 @any_condjump_p(i32*) #1

declare dso_local i64 @onlyjump_p(i32*) #1

declare dso_local i32* @SET_DEST(i32*) #1

declare dso_local i64 @REG_P(i32*) #1

declare dso_local i64 @CC0_P(i32*) #1

declare dso_local i32 @cprop_jump(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @BLOCK_FOR_INSN(i32*) #1

declare dso_local i64 @NONJUMP_INSN_P(i32*) #1

declare dso_local i64 @try_replace_reg(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
