; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-ppc.c_md_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"bad call to md_atof\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@target_big_endian = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md_atof(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i64], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %15 [
    i32 102, label %13
    i32 100, label %14
  ]

13:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %18

14:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  br label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %7, align 8
  store i32 0, i32* %16, align 4
  %17 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %4, align 8
  br label %73

18:                                               ; preds = %14, %13
  %19 = load i8*, i8** @input_line_pointer, align 8
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %22 = call i8* @atof_ieee(i8* %19, i32 %20, i64* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i8*, i8** %10, align 8
  store i8* %26, i8** @input_line_pointer, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 2
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i64, i64* @target_big_endian, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %48, %33
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @md_number_to_chars(i8* %39, i32 %44, i32 2)
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8* %47, i8** %6, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %34

51:                                               ; preds = %34
  br label %72

52:                                               ; preds = %27
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %68, %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @md_number_to_chars(i8* %59, i32 %64, i32 2)
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  br label %55

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %51
  store i8* null, i8** %4, align 8
  br label %73

73:                                               ; preds = %72, %15
  %74 = load i8*, i8** %4, align 8
  ret i8* %74
}

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @atof_ieee(i8*, i32, i64*) #1

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
