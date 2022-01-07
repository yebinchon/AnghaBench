; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_invalidate_from_clobbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_invalidate_from_clobbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLOBBER = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @invalidate_from_clobbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_from_clobbers(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 @GET_CODE(i64 %7)
  %9 = load i64, i64* @CLOBBER, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %52

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @XEXP(i64 %12, i32 0)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %51

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @REG_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @GET_CODE(i64 %21)
  %23 = load i64, i64* @SUBREG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i64, i64* %3, align 8
  %27 = call i64 @MEM_P(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25, %20, %16
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @VOIDmode, align 4
  %32 = call i32 @invalidate(i64 %30, i32 %31)
  br label %50

33:                                               ; preds = %25
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @GET_CODE(i64 %34)
  %36 = load i64, i64* @STRICT_LOW_PART, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = call i64 @GET_CODE(i64 %39)
  %41 = load i64, i64* @ZERO_EXTRACT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38, %33
  %44 = load i64, i64* %3, align 8
  %45 = call i64 @XEXP(i64 %44, i32 0)
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @GET_MODE(i64 %46)
  %48 = call i32 @invalidate(i64 %45, i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  br label %50

50:                                               ; preds = %49, %29
  br label %51

51:                                               ; preds = %50, %11
  br label %115

52:                                               ; preds = %1
  %53 = load i64, i64* %2, align 8
  %54 = call i64 @GET_CODE(i64 %53)
  %55 = load i64, i64* @PARALLEL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %52
  %58 = load i64, i64* %2, align 8
  %59 = call i32 @XVECLEN(i64 %58, i32 0)
  %60 = sub nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %110, %57
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %113

64:                                               ; preds = %61
  %65 = load i64, i64* %2, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @XVECEXP(i64 %65, i32 0, i32 %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @GET_CODE(i64 %68)
  %70 = load i64, i64* @CLOBBER, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %64
  %73 = load i64, i64* %5, align 8
  %74 = call i64 @XEXP(i64 %73, i32 0)
  store i64 %74, i64* %6, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @REG_P(i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %72
  %79 = load i64, i64* %6, align 8
  %80 = call i64 @GET_CODE(i64 %79)
  %81 = load i64, i64* @SUBREG, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %6, align 8
  %85 = call i64 @MEM_P(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83, %78, %72
  %88 = load i64, i64* %6, align 8
  %89 = load i32, i32* @VOIDmode, align 4
  %90 = call i32 @invalidate(i64 %88, i32 %89)
  br label %108

91:                                               ; preds = %83
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @GET_CODE(i64 %92)
  %94 = load i64, i64* @STRICT_LOW_PART, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %91
  %97 = load i64, i64* %6, align 8
  %98 = call i64 @GET_CODE(i64 %97)
  %99 = load i64, i64* @ZERO_EXTRACT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %96, %91
  %102 = load i64, i64* %6, align 8
  %103 = call i64 @XEXP(i64 %102, i32 0)
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @GET_MODE(i64 %104)
  %106 = call i32 @invalidate(i64 %103, i32 %105)
  br label %107

107:                                              ; preds = %101, %96
  br label %108

108:                                              ; preds = %107, %87
  br label %109

109:                                              ; preds = %108, %64
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %4, align 4
  br label %61

113:                                              ; preds = %61
  br label %114

114:                                              ; preds = %113, %52
  br label %115

115:                                              ; preds = %114, %51
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @invalidate(i64, i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
