; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_extra_constraint_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_sparc_extra_constraint_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_ARCH64 = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@reg_renumber = common dso_local global i64* null, align 8
@MEM = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@reload_in_progress = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc_extra_constraint_check(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @TARGET_ARCH64, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 84
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 85
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11
  store i32 0, i32* %4, align 4
  br label %108

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %59 [
    i32 81, label %20
    i32 82, label %23
    i32 83, label %26
    i32 85, label %29
    i32 87, label %53
    i32 84, label %53
    i32 89, label %54
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @fp_sethi_p(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %108

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @fp_mov_p(i32 %24)
  store i32 %25, i32* %4, align 4
  br label %108

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @fp_high_losum_p(i32 %27)
  store i32 %28, i32* %4, align 4
  br label %108

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @GET_CODE(i32 %33)
  %35 = load i64, i64* @REG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @REGNO(i32 %38)
  %40 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i64*, i64** @reg_renumber, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @REGNO(i32 %44)
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42, %37, %29
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @register_ok_for_ldd(i32 %50)
  store i32 %51, i32* %4, align 4
  br label %108

52:                                               ; preds = %42, %32
  store i32 0, i32* %4, align 4
  br label %108

53:                                               ; preds = %18, %18
  br label %60

54:                                               ; preds = %18
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @GET_MODE(i32 %56)
  %58 = call i32 @const_zero_operand(i32 %55, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %108

59:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %108

60:                                               ; preds = %53
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = load i64, i64* @MEM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  %66 = load i64, i64* @TARGET_ARCH64, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = call i64 @mem_min_alignment(i32 %69, i32 8)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* @Pmode, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @XEXP(i32 %77, i32 0)
  %79 = call i64 @strict_memory_address_p(i32 %76, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %72
  store i32 1, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %75, %68
  br label %106

83:                                               ; preds = %60
  %84 = load i64, i64* @reload_in_progress, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @GET_CODE(i32 %87)
  %89 = load i64, i64* @REG, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %103

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = call i64 @REGNO(i32 %92)
  %94 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i64*, i64** @reg_renumber, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @REGNO(i32 %98)
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %101, 0
  br label %103

103:                                              ; preds = %96, %91, %86, %83
  %104 = phi i1 [ false, %91 ], [ false, %86 ], [ false, %83 ], [ %102, %96 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %82
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %59, %54, %52, %49, %26, %23, %20, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @fp_sethi_p(i32) #1

declare dso_local i32 @fp_mov_p(i32) #1

declare dso_local i32 @fp_high_losum_p(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i32 @register_ok_for_ldd(i32) #1

declare dso_local i32 @const_zero_operand(i32, i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @mem_min_alignment(i32, i32) #1

declare dso_local i64 @strict_memory_address_p(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
