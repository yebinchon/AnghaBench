; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_count_occurrences.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_count_occurrences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_occurrences(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %98

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @GET_CODE(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %48 [
    i32 130, label %21
    i32 134, label %21
    i32 135, label %21
    i32 133, label %21
    i32 128, label %21
    i32 136, label %21
    i32 131, label %21
    i32 137, label %21
    i32 132, label %22
    i32 129, label %33
  ]

21:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  store i32 0, i32* %4, align 4
  br label %98

22:                                               ; preds = %17
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @MEM_P(i64 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @rtx_equal_p(i64 %27, i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %98

32:                                               ; preds = %26, %22
  br label %49

33:                                               ; preds = %17
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @SET_DEST(i64 %34)
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i64, i64* %5, align 8
  %43 = call i64 @SET_SRC(i64 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @count_occurrences(i64 %43, i64 %44, i32 %45)
  store i32 %46, i32* %4, align 4
  br label %98

47:                                               ; preds = %38, %33
  br label %49

48:                                               ; preds = %17
  br label %49

49:                                               ; preds = %48, %47, %32
  %50 = load i32, i32* %10, align 4
  %51 = call i8* @GET_RTX_FORMAT(i32 %50)
  store i8* %51, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %93, %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @GET_RTX_LENGTH(i32 %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = load i8*, i8** %11, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %11, align 8
  %60 = load i8, i8* %58, align 1
  %61 = sext i8 %60 to i32
  switch i32 %61, label %92 [
    i32 101, label %62
    i32 69, label %71
  ]

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i64 @XEXP(i64 %63, i32 %64)
  %66 = load i64, i64* %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @count_occurrences(i64 %65, i64 %66, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %92

71:                                               ; preds = %57
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %88, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i64, i64* %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @XVECLEN(i64 %74, i32 %75)
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %72
  %79 = load i64, i64* %5, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i64 @XVECEXP(i64 %79, i32 %80, i32 %81)
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @count_occurrences(i64 %82, i64 %83, i32 %84)
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %72

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %57, %91, %62
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %52

96:                                               ; preds = %52
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %96, %41, %31, %21, %16
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
