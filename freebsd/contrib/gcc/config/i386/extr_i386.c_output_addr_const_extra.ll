; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_addr_const_extra.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_output_addr_const_extra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSPEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"@GOTTPOFF\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"@TPOFF\00", align 1
@TARGET_64BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"@NTPOFF\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@DTPOFF\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"@GOTTPOFF(%rip)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"@GOTNTPOFF\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"@INDNTPOFF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @output_addr_const_extra(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @UNSPEC, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @XVECEXP(i32 %13, i32 0, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @XINT(i32 %15, i32 1)
  switch i32 %16, label %67 [
    i32 131, label %17
    i32 128, label %23
    i32 129, label %29
    i32 133, label %42
    i32 132, label %48
    i32 130, label %61
  ]

17:                                               ; preds = %12
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @output_addr_const(i32* %18, i32 %19)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %21)
  br label %68

23:                                               ; preds = %12
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @output_addr_const(i32* %24, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %27)
  br label %68

29:                                               ; preds = %12
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @output_addr_const(i32* %30, i32 %31)
  %33 = load i32, i32* @TARGET_64BIT, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %36)
  br label %41

38:                                               ; preds = %29
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %39)
  br label %41

41:                                               ; preds = %38, %35
  br label %68

42:                                               ; preds = %12
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @output_addr_const(i32* %43, i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %46)
  br label %68

48:                                               ; preds = %12
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @output_addr_const(i32* %49, i32 %50)
  %52 = load i32, i32* @TARGET_64BIT, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %55)
  br label %60

57:                                               ; preds = %48
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  br label %68

61:                                               ; preds = %12
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @output_addr_const(i32* %62, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32* %65)
  br label %68

67:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %69

68:                                               ; preds = %61, %60, %42, %41, %23, %17
  store i32 1, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %67, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XINT(i32, i32) #1

declare dso_local i32 @output_addr_const(i32*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
