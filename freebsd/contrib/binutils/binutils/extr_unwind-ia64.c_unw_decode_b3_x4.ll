; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_decode_b3_x4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_decode_b3_x4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"B3\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"B4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @unw_decode_b3_x4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_b3_x4(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %15, i32* %8, align 4
  %16 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @UNW_DEC_EPILOGUE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i8* %19)
  br label %67

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @UNW_DEC_COPY_STATE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %31, i8* %32)
  br label %38

34:                                               ; preds = %25
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @UNW_DEC_LABEL_STATE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %30
  br label %66

39:                                               ; preds = %21
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 7
  switch i32 %41, label %62 [
    i32 1, label %42
    i32 2, label %47
    i32 3, label %52
    i32 4, label %57
  ]

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i8* @unw_decode_x1(i8* %43, i32 %44, i8* %45)
  store i8* %46, i8** %4, align 8
  br label %69

47:                                               ; preds = %39
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @unw_decode_x2(i8* %48, i32 %49, i8* %50)
  store i8* %51, i8** %4, align 8
  br label %69

52:                                               ; preds = %39
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i8* @unw_decode_x3(i8* %53, i32 %54, i8* %55)
  store i8* %56, i8** %4, align 8
  br label %69

57:                                               ; preds = %39
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i8* @unw_decode_x4(i8* %58, i32 %59, i8* %60)
  store i8* %61, i8** %4, align 8
  br label %69

62:                                               ; preds = %39
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @UNW_DEC_BAD_CODE(i32 %63)
  br label %65

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %38
  br label %67

67:                                               ; preds = %66, %14
  %68 = load i8*, i8** %5, align 8
  store i8* %68, i8** %4, align 8
  br label %69

69:                                               ; preds = %67, %57, %52, %47, %42
  %70 = load i8*, i8** %4, align 8
  ret i8* %70
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_EPILOGUE(i8*, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_COPY_STATE(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_LABEL_STATE(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x1(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x2(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x3(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x4(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_BAD_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
