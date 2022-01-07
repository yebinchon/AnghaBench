; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_ld_address_bypass_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_ia64_ld_address_bypass_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SUBREG = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@IF_THEN_ELSE = common dso_local global i64 0, align 8
@UNSPEC_LDCCLR = common dso_local global i32 0, align 4
@ZERO_EXTEND = common dso_local global i64 0, align 8
@UNSPEC_LDA = common dso_local global i32 0, align 4
@UNSPEC_LDS = common dso_local global i32 0, align 4
@UNSPEC_LDSA = common dso_local global i32 0, align 4
@LO_SUM = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ia64_ld_address_bypass_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @gcc_assert(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @ia64_single_set(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @gcc_assert(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @SET_DEST(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @gcc_assert(i32 %25)
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @GET_CODE(i32 %27)
  %29 = load i64, i64* @SUBREG, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @SUBREG_REG(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %15
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @GET_CODE(i32 %35)
  %37 = load i64, i64* @REG, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @gcc_assert(i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ia64_single_set(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @gcc_assert(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @SET_SRC(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @gcc_assert(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @GET_CODE(i32 %49)
  %51 = load i64, i64* @UNSPEC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %34
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @XVECLEN(i32 %54, i32 0)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @XVECEXP(i32 %58, i32 0, i32 0)
  store i32 %59, i32* %8, align 4
  br label %77

60:                                               ; preds = %53, %34
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = load i64, i64* @IF_THEN_ELSE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = call i32 @XEXP(i32 %67, i32 0)
  %69 = call i32 @XINT(i32 %68, i32 1)
  %70 = load i32, i32* @UNSPEC_LDCCLR, align 4
  %71 = icmp eq i32 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @gcc_assert(i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @XEXP(i32 %74, i32 1)
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %65, %60
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i32, i32* %8, align 4
  %80 = call i64 @GET_CODE(i32 %79)
  %81 = load i64, i64* @SUBREG, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %8, align 4
  %85 = call i64 @GET_CODE(i32 %84)
  %86 = load i64, i64* @ZERO_EXTEND, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %83, %78
  %89 = phi i1 [ true, %78 ], [ %87, %83 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @XEXP(i32 %91, i32 0)
  store i32 %92, i32* %8, align 4
  br label %78

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @GET_CODE(i32 %94)
  %96 = load i64, i64* @UNSPEC, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @XINT(i32 %99, i32 1)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @UNSPEC_LDA, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %112, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @UNSPEC_LDS, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @UNSPEC_LDSA, align 4
  %111 = icmp eq i32 %109, %110
  br label %112

112:                                              ; preds = %108, %104, %98
  %113 = phi i1 [ true, %104 ], [ true, %98 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @gcc_assert(i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @XVECEXP(i32 %116, i32 0, i32 0)
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %112, %93
  %119 = load i32, i32* %8, align 4
  %120 = call i64 @GET_CODE(i32 %119)
  %121 = load i64, i64* @LO_SUM, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %8, align 4
  %125 = call i64 @GET_CODE(i32 %124)
  %126 = load i64, i64* @MEM, align 8
  %127 = icmp eq i64 %125, %126
  br label %128

128:                                              ; preds = %123, %118
  %129 = phi i1 [ true, %118 ], [ %127, %123 ]
  %130 = zext i1 %129 to i32
  %131 = call i32 @gcc_assert(i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @reg_mentioned_p(i32 %132, i32 %133)
  ret i32 %134
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @ia64_single_set(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @SUBREG_REG(i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @reg_mentioned_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
