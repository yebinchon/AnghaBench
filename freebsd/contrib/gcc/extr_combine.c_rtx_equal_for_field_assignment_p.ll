; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_rtx_equal_for_field_assignment_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_combine.c_rtx_equal_for_field_assignment_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @rtx_equal_for_field_assignment_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtx_equal_for_field_assignment_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @rtx_equal_p(i64 %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9, %2
  store i32 1, i32* %3, align 4
  br label %79

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @GET_MODE(i64 %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @GET_MODE(i64 %24)
  %26 = icmp ne i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %18, %15
  store i32 0, i32* %3, align 4
  br label %79

28:                                               ; preds = %21
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @MEM_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @GET_CODE(i64 %33)
  %35 = load i64, i64* @SUBREG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @SUBREG_REG(i64 %38)
  %40 = call i64 @MEM_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @SUBREG_REG(i64 %43)
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @SUBREG_REG(i64 %45)
  %47 = call i64 @GET_MODE(i64 %46)
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @gen_lowpart(i64 %47, i64 %48)
  %50 = call i64 @rtx_equal_p(i64 %44, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %79

53:                                               ; preds = %42, %37, %32, %28
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @MEM_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @GET_CODE(i64 %58)
  %60 = load i64, i64* @SUBREG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load i64, i64* %4, align 8
  %64 = call i64 @SUBREG_REG(i64 %63)
  %65 = call i64 @MEM_P(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load i64, i64* %4, align 8
  %69 = call i64 @SUBREG_REG(i64 %68)
  %70 = load i64, i64* %4, align 8
  %71 = call i64 @SUBREG_REG(i64 %70)
  %72 = call i64 @GET_MODE(i64 %71)
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @gen_lowpart(i64 %72, i64 %73)
  %75 = call i64 @rtx_equal_p(i64 %69, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %79

78:                                               ; preds = %67, %62, %57, %53
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %77, %52, %27, %14
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @gen_lowpart(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
