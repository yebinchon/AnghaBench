; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_true_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_jump.c_true_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i64* null, align 8
@SUBREG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @true_regnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @REG_P(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @REGNO(i32 %9)
  %11 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load i64*, i64** @reg_renumber, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @REGNO(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %13
  %22 = load i64*, i64** @reg_renumber, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @REGNO(i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %22, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %76

29:                                               ; preds = %13, %8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @REGNO(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %76

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @SUBREG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %32
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @SUBREG_REG(i32 %38)
  %40 = call i32 @true_regnum(i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp sge i32 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %37
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @SUBREG_REG(i32 %48)
  %50 = call i32 @REGNO(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @SUBREG_REG(i32 %51)
  %53 = call i32 @GET_MODE(i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @SUBREG_BYTE(i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @GET_MODE(i32 %56)
  %58 = call i64 @subreg_offset_representable_p(i32 %50, i32 %53, i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %47
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @SUBREG_REG(i32 %62)
  %64 = call i32 @REGNO(i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @SUBREG_REG(i32 %65)
  %67 = call i32 @GET_MODE(i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @SUBREG_BYTE(i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @GET_MODE(i32 %70)
  %72 = call i32 @subreg_regno_offset(i32 %64, i32 %67, i32 %69, i32 %71)
  %73 = add nsw i32 %61, %72
  store i32 %73, i32* %2, align 4
  br label %76

74:                                               ; preds = %47, %43, %37
  br label %75

75:                                               ; preds = %74, %32
  store i32 -1, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %60, %29, %21
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @REG_P(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i64 @subreg_offset_representable_p(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @SUBREG_BYTE(i32) #1

declare dso_local i32 @subreg_regno_offset(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
