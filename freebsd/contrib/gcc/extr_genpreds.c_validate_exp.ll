; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_validate_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_validate_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"%s: must give a predicate expression\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: invalid character in path string '%s'\00", align 1
@have_error = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s: cannot use '%s' in a predicate expression\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @validate_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_exp(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 1, i32* %4, align 4
  br label %78

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @GET_CODE(i64 %16)
  switch i32 %17, label %71 [
    i32 133, label %18
    i32 134, label %27
    i32 132, label %27
    i32 128, label %36
    i32 131, label %42
    i32 130, label %70
    i32 129, label %70
  ]

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @XEXP(i64 %19, i32 2)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @validate_exp(i64 %20, i8* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %78

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %15, %15, %26
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @XEXP(i64 %28, i32 1)
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @validate_exp(i64 %29, i8* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %78

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %15, %35
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @XEXP(i64 %37, i32 0)
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @validate_exp(i64 %38, i8* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %78

42:                                               ; preds = %15
  %43 = load i64, i64* %5, align 8
  %44 = call i8* @XSTR(i64 %43, i32 1)
  store i8* %44, i8** %8, align 8
  br label %45

45:                                               ; preds = %66, %42
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @ISDIGIT(i8 signext %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = load i8, i8* %55, align 1
  %57 = call i32 @ISLOWER(i8 signext %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i8* @XSTR(i64 %62, i32 1)
  %64 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %60, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %61, i8* %63)
  store i32 1, i32* @have_error, align 4
  store i32 1, i32* %4, align 4
  br label %78

65:                                               ; preds = %54, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %8, align 8
  br label %45

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %15, %15, %69
  store i32 0, i32* %4, align 4
  br label %78

71:                                               ; preds = %15
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @GET_CODE(i64 %74)
  %76 = call i8* @GET_RTX_NAME(i32 %75)
  %77 = call i32 (i32, i8*, i8*, ...) @message_with_line(i32 %72, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %76)
  store i32 1, i32* @have_error, align 4
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %70, %59, %36, %34, %25, %11
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @message_with_line(i32, i8*, i8*, ...) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @XSTR(i64, i32) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @ISLOWER(i8 signext) #1

declare dso_local i8* @GET_RTX_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
