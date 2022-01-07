; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_mems_ok_for_quad_peep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_mems_ok_for_quad_peep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mems_ok_for_quad_peep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @MEM_VOLATILE_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @MEM_VOLATILE_P(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %110

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @XEXP(i32 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @XEXP(i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @GET_CODE(i32 %25)
  %27 = load i64, i64* @PLUS, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %20
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i64 @GET_CODE(i32 %31)
  %33 = load i64, i64* @REG, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %110

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i32 @REGNO(i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @XEXP(i32 %40, i32 1)
  %42 = call i64 @GET_CODE(i32 %41)
  %43 = load i64, i64* @CONST_INT, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %110

46:                                               ; preds = %36
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @XEXP(i32 %47, i32 1)
  %49 = call i32 @INTVAL(i32 %48)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %46
  br label %61

51:                                               ; preds = %20
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @GET_CODE(i32 %52)
  %54 = load i64, i64* @REG, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %110

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @REGNO(i32 %58)
  store i32 %59, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @GET_CODE(i32 %62)
  %64 = load i64, i64* @PLUS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i64 @GET_CODE(i32 %68)
  %70 = load i64, i64* @REG, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %110

73:                                               ; preds = %66
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @XEXP(i32 %74, i32 0)
  %76 = call i32 @REGNO(i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @XEXP(i32 %77, i32 1)
  %79 = call i64 @GET_CODE(i32 %78)
  %80 = load i64, i64* @CONST_INT, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %110

83:                                               ; preds = %73
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @XEXP(i32 %84, i32 1)
  %86 = call i32 @INTVAL(i32 %85)
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %83
  br label %98

88:                                               ; preds = %61
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @GET_CODE(i32 %89)
  %91 = load i64, i64* @REG, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %110

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @REGNO(i32 %95)
  store i32 %96, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %87
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %110

103:                                              ; preds = %98
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 8
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %110

109:                                              ; preds = %103
  store i32 1, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %108, %102, %93, %82, %72, %56, %45, %35, %19
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @MEM_VOLATILE_P(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
