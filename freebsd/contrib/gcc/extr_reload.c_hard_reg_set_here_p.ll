; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_hard_reg_set_here_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_reload.c_hard_reg_set_here_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @hard_reg_set_here_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hard_reg_set_here_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @GET_CODE(i32 %11)
  %13 = load i64, i64* @SET, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @CLOBBER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @SET_DEST(i32 %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %28, %20
  %24 = load i32, i32* %8, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @SUBREG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @SUBREG_REG(i32 %29)
  store i32 %30, i32* %8, align 4
  br label %23

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = call i64 @REG_P(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @REGNO(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32**, i32*** @hard_regno_nregs, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @GET_MODE(i32 %48)
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %42, %51
  %53 = load i32, i32* %5, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %86

56:                                               ; preds = %41, %35
  br label %57

57:                                               ; preds = %56, %31
  br label %85

58:                                               ; preds = %15
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @GET_CODE(i32 %59)
  %61 = load i64, i64* @PARALLEL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @XVECLEN(i32 %64, i32 0)
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %80, %63
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @XVECEXP(i32 %73, i32 0, i32 %74)
  %76 = call i32 @hard_reg_set_here_p(i32 %71, i32 %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %86

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %10, align 4
  br label %67

83:                                               ; preds = %67
  br label %84

84:                                               ; preds = %83, %58
  br label %85

85:                                               ; preds = %84, %57
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %78, %55
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
