; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_mentioned_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_reg_mentioned_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_REF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reg_mentioned_p(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %121

18:                                               ; preds = %13
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @GET_CODE(i64 %19)
  %21 = load i32, i32* @LABEL_REF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  %27 = icmp eq i64 %24, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %121

29:                                               ; preds = %18
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @GET_CODE(i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %48 [
    i32 129, label %33
    i32 128, label %46
    i32 134, label %46
    i32 130, label %46
    i32 132, label %47
    i32 131, label %47
    i32 133, label %47
  ]

33:                                               ; preds = %29
  %34 = load i64, i64* %4, align 8
  %35 = call i32 @REG_P(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @REGNO(i64 %38)
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @REGNO(i64 %40)
  %42 = icmp eq i32 %39, %41
  br label %43

43:                                               ; preds = %37, %33
  %44 = phi i1 [ false, %33 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %121

46:                                               ; preds = %29, %29, %29
  store i32 0, i32* %3, align 4
  br label %121

47:                                               ; preds = %29, %29, %29
  store i32 0, i32* %3, align 4
  br label %121

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @GET_CODE(i64 %50)
  %52 = load i32, i32* %8, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i64 @rtx_equal_p(i64 %55, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %121

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @GET_RTX_FORMAT(i32 %61)
  store i8* %62, i8** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @GET_RTX_LENGTH(i32 %63)
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %117, %60
  %67 = load i32, i32* %7, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %120

69:                                               ; preds = %66
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 69
  br i1 %76, label %77, label %99

77:                                               ; preds = %69
  %78 = load i64, i64* %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @XVECLEN(i64 %78, i32 %79)
  %81 = sub nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %95, %77
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @XVECEXP(i64 %87, i32 %88, i32 %89)
  %91 = call i32 @reg_mentioned_p(i64 %86, i64 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %121

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  br label %82

98:                                               ; preds = %82
  br label %116

99:                                               ; preds = %69
  %100 = load i8*, i8** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 101
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i64 @XEXP(i64 %109, i32 %110)
  %112 = call i32 @reg_mentioned_p(i64 %108, i64 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  store i32 1, i32* %3, align 4
  br label %121

115:                                              ; preds = %107, %99
  br label %116

116:                                              ; preds = %115, %98
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %7, align 4
  br label %66

120:                                              ; preds = %66
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %114, %93, %59, %47, %46, %43, %23, %17, %12
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @rtx_equal_p(i64, i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
