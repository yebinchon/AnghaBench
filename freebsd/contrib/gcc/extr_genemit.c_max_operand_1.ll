; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_max_operand_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_max_operand_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_OPERAND = common dso_local global i64 0, align 8
@MATCH_OPERATOR = common dso_local global i64 0, align 8
@MATCH_PARALLEL = common dso_local global i64 0, align 8
@max_opno = common dso_local global i32 0, align 4
@MATCH_DUP = common dso_local global i64 0, align 8
@MATCH_OP_DUP = common dso_local global i64 0, align 8
@MATCH_PAR_DUP = common dso_local global i64 0, align 8
@max_dup_opno = common dso_local global i32 0, align 4
@MATCH_SCRATCH = common dso_local global i64 0, align 8
@max_scratch_opno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @max_operand_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @max_operand_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %114

11:                                               ; preds = %1
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @GET_CODE(i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @MATCH_OPERAND, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MATCH_OPERATOR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* @MATCH_PARALLEL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %17, %11
  %26 = load i32, i32* @max_opno, align 4
  %27 = load i64, i64* %2, align 8
  %28 = call i32 @XINT(i64 %27, i32 0)
  %29 = call i32 @MAX(i32 %26, i32 %28)
  store i32 %29, i32* @max_opno, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @MATCH_DUP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i64, i64* %3, align 8
  %36 = load i64, i64* @MATCH_OP_DUP, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @MATCH_PAR_DUP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38, %34, %30
  %43 = load i32, i32* @max_dup_opno, align 4
  %44 = load i64, i64* %2, align 8
  %45 = call i32 @XINT(i64 %44, i32 0)
  %46 = call i32 @MAX(i32 %43, i32 %45)
  store i32 %46, i32* @max_dup_opno, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @MATCH_SCRATCH, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @max_scratch_opno, align 4
  %53 = load i64, i64* %2, align 8
  %54 = call i32 @XINT(i64 %53, i32 0)
  %55 = call i32 @MAX(i32 %52, i32 %54)
  store i32 %55, i32* @max_scratch_opno, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i64, i64* %3, align 8
  %58 = call i8* @GET_RTX_FORMAT(i64 %57)
  store i8* %58, i8** %6, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @GET_RTX_LENGTH(i64 %59)
  store i32 %60, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %111, %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %61
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 101
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 117
  br i1 %80, label %81, label %85

81:                                               ; preds = %73, %65
  %82 = load i64, i64* %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i64 @XEXP(i64 %82, i32 %83)
  call void @max_operand_1(i64 %84)
  br label %110

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 69
  br i1 %92, label %93, label %109

93:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %105, %93
  %95 = load i32, i32* %7, align 4
  %96 = load i64, i64* %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @XVECLEN(i64 %96, i32 %97)
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i64, i64* %2, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @XVECEXP(i64 %101, i32 %102, i32 %103)
  call void @max_operand_1(i64 %104)
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %94

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %85
  br label %110

110:                                              ; preds = %109, %81
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %61

114:                                              ; preds = %10, %61
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @XINT(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
