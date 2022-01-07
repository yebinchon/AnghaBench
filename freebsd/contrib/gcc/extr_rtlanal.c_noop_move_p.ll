; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_noop_move_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_noop_move_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOOP_MOVE_INSN_CODE = common dso_local global i64 0, align 8
@REG_EQUAL = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@REG_RETVAL = common dso_local global i32 0, align 4
@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @noop_move_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @PATTERN(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @INSN_CODE(i32 %9)
  %11 = load i64, i64* @NOOP_MOVE_INSN_CODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %79

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @REG_EQUAL, align 4
  %17 = load i32, i32* @NULL_RTX, align 4
  %18 = call i64 @find_reg_note(i32 %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %79

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @REG_RETVAL, align 4
  %24 = load i32, i32* @NULL_RTX, align 4
  %25 = call i64 @find_reg_note(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %79

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = call i64 @GET_CODE(i32 %29)
  %31 = load i64, i64* @SET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @set_noop_p(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %79

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @GET_CODE(i32 %39)
  %41 = load i64, i64* @PARALLEL, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %78

43:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @XVECLEN(i32 %46, i32 0)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @XVECEXP(i32 %50, i32 0, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @GET_CODE(i32 %53)
  %55 = load i64, i64* @USE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = call i64 @GET_CODE(i32 %58)
  %60 = load i64, i64* @CLOBBER, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %49
  br label %74

63:                                               ; preds = %57
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @GET_CODE(i32 %64)
  %66 = load i64, i64* @SET, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  %70 = call i64 @set_noop_p(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68, %63
  store i32 0, i32* %2, align 4
  br label %79

73:                                               ; preds = %68
  br label %74

74:                                               ; preds = %73, %62
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %44

77:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %79

78:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77, %72, %37, %27, %20, %13
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @INSN_CODE(i32) #1

declare dso_local i64 @find_reg_note(i32, i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @set_noop_p(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
