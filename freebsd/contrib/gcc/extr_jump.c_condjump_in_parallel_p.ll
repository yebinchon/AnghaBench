; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_condjump_in_parallel_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_condjump_in_parallel_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@IF_THEN_ELSE = common dso_local global i64 0, align 8
@pc_rtx = common dso_local global i64 0, align 8
@RETURN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condjump_in_parallel_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @PATTERN(i64 %5)
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @GET_CODE(i64 %7)
  %9 = load i64, i64* @PARALLEL, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @XVECEXP(i64 %13, i32 0, i32 0)
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %12
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @SET, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %85

21:                                               ; preds = %15
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @SET_DEST(i64 %22)
  %24 = call i64 @GET_CODE(i64 %23)
  %25 = load i64, i64* @PC, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %85

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @SET_SRC(i64 %29)
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @LABEL_REF, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %85

35:                                               ; preds = %28
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @SET_SRC(i64 %36)
  %38 = call i64 @GET_CODE(i64 %37)
  %39 = load i64, i64* @IF_THEN_ELSE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %85

42:                                               ; preds = %35
  %43 = load i64, i64* %4, align 8
  %44 = call i64 @SET_SRC(i64 %43)
  %45 = call i64 @XEXP(i64 %44, i32 2)
  %46 = load i64, i64* @pc_rtx, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %42
  %49 = load i64, i64* %4, align 8
  %50 = call i64 @SET_SRC(i64 %49)
  %51 = call i64 @XEXP(i64 %50, i32 1)
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @LABEL_REF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %62, label %55

55:                                               ; preds = %48
  %56 = load i64, i64* %4, align 8
  %57 = call i64 @SET_SRC(i64 %56)
  %58 = call i64 @XEXP(i64 %57, i32 1)
  %59 = call i64 @GET_CODE(i64 %58)
  %60 = load i64, i64* @RETURN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %48
  store i32 1, i32* %2, align 4
  br label %85

63:                                               ; preds = %55, %42
  %64 = load i64, i64* %4, align 8
  %65 = call i64 @SET_SRC(i64 %64)
  %66 = call i64 @XEXP(i64 %65, i32 1)
  %67 = load i64, i64* @pc_rtx, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @SET_SRC(i64 %70)
  %72 = call i64 @XEXP(i64 %71, i32 2)
  %73 = call i64 @GET_CODE(i64 %72)
  %74 = load i64, i64* @LABEL_REF, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %69
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @SET_SRC(i64 %77)
  %79 = call i64 @XEXP(i64 %78, i32 2)
  %80 = call i64 @GET_CODE(i64 %79)
  %81 = load i64, i64* @RETURN, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76, %69
  store i32 1, i32* %2, align 4
  br label %85

84:                                               ; preds = %76, %63
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %83, %62, %41, %34, %27, %20, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
