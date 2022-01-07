; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_set_noop_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_set_noop_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pc_rtx = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@BYTES_BIG_ENDIAN = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_noop_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i64 @SET_SRC(i64 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i64 @SET_DEST(i64 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @pc_rtx, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @pc_rtx, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %113

18:                                               ; preds = %13, %1
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @MEM_P(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @MEM_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @rtx_equal_p(i64 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @side_effects_p(i64 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %2, align 4
  br label %113

39:                                               ; preds = %22, %18
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @GET_CODE(i64 %40)
  %42 = load i64, i64* @ZERO_EXTRACT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @XEXP(i64 %45, i32 0)
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @rtx_equal_p(i64 %46, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i32, i32* @BYTES_BIG_ENDIAN, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @XEXP(i64 %54, i32 2)
  %56 = load i64, i64* @const0_rtx, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @side_effects_p(i64 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %58, %53, %50, %44
  %64 = phi i1 [ false, %53 ], [ false, %50 ], [ false, %44 ], [ %62, %58 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %113

66:                                               ; preds = %39
  %67 = load i64, i64* %5, align 8
  %68 = call i64 @GET_CODE(i64 %67)
  %69 = load i64, i64* @STRICT_LOW_PART, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64, i64* %5, align 8
  %73 = call i64 @XEXP(i64 %72, i32 0)
  store i64 %73, i64* %5, align 8
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i64, i64* %4, align 8
  %76 = call i64 @GET_CODE(i64 %75)
  %77 = load i64, i64* @SUBREG, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = call i64 @GET_CODE(i64 %80)
  %82 = load i64, i64* @SUBREG, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load i64, i64* %4, align 8
  %86 = call i64 @SUBREG_BYTE(i64 %85)
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @SUBREG_BYTE(i64 %87)
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %113

91:                                               ; preds = %84
  %92 = load i64, i64* %4, align 8
  %93 = call i64 @SUBREG_REG(i64 %92)
  store i64 %93, i64* %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i64 @SUBREG_REG(i64 %94)
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %91, %79, %74
  %97 = load i64, i64* %4, align 8
  %98 = call i64 @REG_P(i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %96
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @REG_P(i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i64, i64* %4, align 8
  %106 = call i64 @REGNO(i64 %105)
  %107 = load i64, i64* %5, align 8
  %108 = call i64 @REGNO(i64 %107)
  %109 = icmp eq i64 %106, %108
  br label %110

110:                                              ; preds = %104, %100, %96
  %111 = phi i1 [ false, %100 ], [ false, %96 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %110, %90, %63, %36, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @side_effects_p(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @SUBREG_BYTE(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REGNO(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
