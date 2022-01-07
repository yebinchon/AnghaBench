; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_note_stores.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_note_stores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@COND_EXEC = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@SUBREG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@ZERO_EXTRACT = common dso_local global i64 0, align 8
@STRICT_LOW_PART = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @note_stores(i64 %0, void (i64, i64, i8*)* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca void (i64, i64, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store void (i64, i64, i8*)* %1, void (i64, i64, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @COND_EXEC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @COND_EXEC_CODE(i64 %14)
  store i64 %15, i64* %4, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load i64, i64* %4, align 8
  %18 = call i64 @GET_CODE(i64 %17)
  %19 = load i64, i64* @SET, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = load i64, i64* @CLOBBER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %21, %16
  %27 = load i64, i64* %4, align 8
  %28 = call i64 @SET_DEST(i64 %27)
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %57, %26
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @GET_CODE(i64 %30)
  %32 = load i64, i64* @SUBREG, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @SUBREG_REG(i64 %35)
  %37 = call i32 @REG_P(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @SUBREG_REG(i64 %40)
  %42 = call i64 @REGNO(i32 %41)
  %43 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %39, %29
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @GET_CODE(i64 %46)
  %48 = load i64, i64* @ZERO_EXTRACT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i64, i64* %8, align 8
  %52 = call i64 @GET_CODE(i64 %51)
  %53 = load i64, i64* @STRICT_LOW_PART, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %50, %45, %39, %34
  %56 = phi i1 [ true, %45 ], [ true, %39 ], [ true, %34 ], [ %54, %50 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i64, i64* %8, align 8
  %59 = call i64 @XEXP(i64 %58, i32 0)
  store i64 %59, i64* %8, align 8
  br label %29

60:                                               ; preds = %55
  %61 = load i64, i64* %8, align 8
  %62 = call i64 @GET_CODE(i64 %61)
  %63 = load i64, i64* @PARALLEL, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @XVECLEN(i64 %66, i32 0)
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %87, %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp sge i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @XVECEXP(i64 %73, i32 0, i32 %74)
  %76 = call i64 @XEXP(i64 %75, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load void (i64, i64, i8*)*, void (i64, i64, i8*)** %5, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i64 @XVECEXP(i64 %80, i32 0, i32 %81)
  %83 = call i64 @XEXP(i64 %82, i32 0)
  %84 = load i64, i64* %4, align 8
  %85 = load i8*, i8** %6, align 8
  call void %79(i64 %83, i64 %84, i8* %85)
  br label %86

86:                                               ; preds = %78, %72
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %7, align 4
  br label %69

90:                                               ; preds = %69
  br label %96

91:                                               ; preds = %60
  %92 = load void (i64, i64, i8*)*, void (i64, i64, i8*)** %5, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %4, align 8
  %95 = load i8*, i8** %6, align 8
  call void %92(i64 %93, i64 %94, i8* %95)
  br label %96

96:                                               ; preds = %91, %90
  br label %120

97:                                               ; preds = %21
  %98 = load i64, i64* %4, align 8
  %99 = call i64 @GET_CODE(i64 %98)
  %100 = load i64, i64* @PARALLEL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @XVECLEN(i64 %103, i32 0)
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %115, %102
  %107 = load i32, i32* %7, align 4
  %108 = icmp sge i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i64, i64* %4, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i64 @XVECEXP(i64 %110, i32 0, i32 %111)
  %113 = load void (i64, i64, i8*)*, void (i64, i64, i8*)** %5, align 8
  %114 = load i8*, i8** %6, align 8
  call void @note_stores(i64 %112, void (i64, i64, i8*)* %113, i8* %114)
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %7, align 4
  br label %106

118:                                              ; preds = %106
  br label %119

119:                                              ; preds = %118, %97
  br label %120

120:                                              ; preds = %119, %96
  ret void
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @COND_EXEC_CODE(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @REG_P(i32) #1

declare dso_local i32 @SUBREG_REG(i64) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
