; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_mems_ok_for_ldd_peep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/sparc/extr_sparc.c_mems_ok_for_ldd_peep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mems_ok_for_ldd_peep(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @MEM_VOLATILE_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @MEM_VOLATILE_P(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %116

20:                                               ; preds = %15
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @MEM_ALIGN(i64 %21)
  %23 = icmp slt i32 %22, 64
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %116

25:                                               ; preds = %20
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @XEXP(i64 %26, i32 0)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @PLUS, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %25
  %35 = load i64, i64* %8, align 8
  %36 = call i64 @XEXP(i64 %35, i32 0)
  %37 = call i64 @GET_CODE(i64 %36)
  %38 = load i64, i64* @REG, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %116

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @XEXP(i64 %42, i32 0)
  %44 = call i32 @REGNO(i64 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @XEXP(i64 %45, i32 1)
  %47 = call i64 @GET_CODE(i64 %46)
  %48 = load i64, i64* @CONST_INT, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %116

51:                                               ; preds = %41
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @XEXP(i64 %52, i32 1)
  %54 = call i32 @INTVAL(i64 %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51
  br label %66

56:                                               ; preds = %25
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @GET_CODE(i64 %57)
  %59 = load i64, i64* @REG, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %116

62:                                               ; preds = %56
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @REGNO(i64 %63)
  store i32 %64, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %55
  %67 = load i64, i64* %9, align 8
  %68 = call i64 @GET_CODE(i64 %67)
  %69 = load i64, i64* @PLUS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %116

72:                                               ; preds = %66
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @XEXP(i64 %73, i32 0)
  %75 = call i64 @GET_CODE(i64 %74)
  %76 = load i64, i64* @REG, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %9, align 8
  %80 = call i64 @XEXP(i64 %79, i32 1)
  %81 = call i64 @GET_CODE(i64 %80)
  %82 = load i64, i64* @CONST_INT, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %72
  store i32 0, i32* %4, align 4
  br label %116

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = load i64, i64* %9, align 8
  %88 = call i64 @XEXP(i64 %87, i32 0)
  %89 = call i32 @REGNO(i64 %88)
  %90 = icmp ne i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %116

92:                                               ; preds = %85
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @NULL_RTX, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %10, align 4
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @REGNO(i64 %98)
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %116

102:                                              ; preds = %96, %92
  %103 = load i32, i32* %11, align 4
  %104 = srem i32 %103, 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %116

107:                                              ; preds = %102
  %108 = load i64, i64* %9, align 8
  %109 = call i64 @XEXP(i64 %108, i32 1)
  %110 = call i32 @INTVAL(i64 %109)
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 4
  %113 = icmp ne i32 %110, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 0, i32* %4, align 4
  br label %116

115:                                              ; preds = %107
  store i32 1, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %114, %106, %101, %91, %84, %71, %61, %50, %40, %24, %19
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @MEM_VOLATILE_P(i64) #1

declare dso_local i32 @MEM_ALIGN(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i32 @INTVAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
