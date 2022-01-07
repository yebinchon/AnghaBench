; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_condjump_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_condjump_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@IF_THEN_ELSE = common dso_local global i64 0, align 8
@RETURN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @condjump_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @PATTERN(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @SET, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @SET_DEST(i32 %12)
  %14 = call i64 @GET_CODE(i32 %13)
  %15 = load i64, i64* @PC, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %76

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @SET_SRC(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = load i64, i64* @LABEL_REF, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %76

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @IF_THEN_ELSE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @XEXP(i32 %32, i32 2)
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @PC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @XEXP(i32 %38, i32 1)
  %40 = call i64 @GET_CODE(i32 %39)
  %41 = load i64, i64* @LABEL_REF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %71, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @XEXP(i32 %44, i32 1)
  %46 = call i64 @GET_CODE(i32 %45)
  %47 = load i64, i64* @RETURN, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %71, label %49

49:                                               ; preds = %43, %31
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @XEXP(i32 %50, i32 1)
  %52 = call i64 @GET_CODE(i32 %51)
  %53 = load i64, i64* @PC, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @XEXP(i32 %56, i32 2)
  %58 = call i64 @GET_CODE(i32 %57)
  %59 = load i64, i64* @LABEL_REF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @XEXP(i32 %62, i32 2)
  %64 = call i64 @GET_CODE(i32 %63)
  %65 = load i64, i64* @RETURN, align 8
  %66 = icmp eq i64 %64, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i1 [ true, %55 ], [ %66, %61 ]
  br label %69

69:                                               ; preds = %67, %49
  %70 = phi i1 [ false, %49 ], [ %68, %67 ]
  br label %71

71:                                               ; preds = %69, %43, %37
  %72 = phi i1 [ true, %43 ], [ true, %37 ], [ %70, %69 ]
  br label %73

73:                                               ; preds = %71, %26
  %74 = phi i1 [ false, %26 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %73, %25, %17
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
