; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_insn_live_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_insn_live_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_non_call_exceptions = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @insn_live_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insn_live_p(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @flag_non_call_exceptions, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @PATTERN(i32 %11)
  %13 = call i64 @may_trap_p(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 1, i32* %3, align 4
  br label %77

16:                                               ; preds = %10, %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @PATTERN(i32 %17)
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @SET, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @PATTERN(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @set_live_p(i32 %24, i32 %25, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %77

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @PATTERN(i32 %29)
  %31 = call i64 @GET_CODE(i32 %30)
  %32 = load i64, i64* @PARALLEL, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @PATTERN(i32 %35)
  %37 = call i32 @XVECLEN(i32 %36, i32 0)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %72, %34
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @PATTERN(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @XVECEXP(i32 %44, i32 0, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @GET_CODE(i32 %47)
  %49 = load i64, i64* @SET, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @set_live_p(i32 %52, i32 %53, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 1, i32* %3, align 4
  br label %77

58:                                               ; preds = %51
  br label %71

59:                                               ; preds = %42
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @GET_CODE(i32 %60)
  %62 = load i64, i64* @CLOBBER, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @GET_CODE(i32 %65)
  %67 = load i64, i64* @USE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 1, i32* %3, align 4
  br label %77

70:                                               ; preds = %64, %59
  br label %71

71:                                               ; preds = %70, %58
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %6, align 4
  br label %39

75:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75, %69, %57, %22, %15
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @may_trap_p(i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @set_live_p(i32, i32, i32*) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
