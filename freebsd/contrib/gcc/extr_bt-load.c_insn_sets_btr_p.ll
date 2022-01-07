; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_insn_sets_btr_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_bt-load.c_insn_sets_btr_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@all_btrs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @insn_sets_btr_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_sets_btr_p(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @NONJUMP_INSN_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %63

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @single_set(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @SET_DEST(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @SET_SRC(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @GET_CODE(i32 %23)
  %25 = load i64, i64* @SUBREG, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @XEXP(i32 %28, i32 0)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %18
  %31 = load i32, i32* %9, align 4
  %32 = call i64 @REG_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %30
  %35 = load i32, i32* @all_btrs, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @REGNO(i32 %36)
  %38 = call i64 @TEST_HARD_REG_BIT(i32 %35, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %34
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @btr_referenced_p(i32 %41, i32* null)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @gcc_assert(i32 %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @CONSTANT_P(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49, %40
  %54 = load i32*, i32** %7, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @REGNO(i32 %57)
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %53
  store i32 1, i32* %4, align 4
  br label %64

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %34, %30
  br label %63

63:                                               ; preds = %62, %14, %3
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @NONJUMP_INSN_P(i32) #1

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @btr_referenced_p(i32, i32*) #1

declare dso_local i64 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
