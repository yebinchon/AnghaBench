; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_atof-vax.c_md_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXIMUM_NUMBER_OF_LITTLENUMS = common dso_local global i32 0, align 4
@input_line_pointer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad call to md_atof()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md_atof(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %13 = load i32, i32* @MAXIMUM_NUMBER_OF_LITTLENUMS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %22 [
    i32 70, label %18
    i32 102, label %18
    i32 68, label %19
    i32 100, label %19
    i32 103, label %20
    i32 104, label %21
  ]

18:                                               ; preds = %3, %3
  store i8 102, i8* %9, align 1
  br label %23

19:                                               ; preds = %3, %3
  store i8 100, i8* %9, align 1
  br label %23

20:                                               ; preds = %3
  store i8 103, i8* %9, align 1
  br label %23

21:                                               ; preds = %3
  store i8 104, i8* %9, align 1
  br label %23

22:                                               ; preds = %3
  store i8 0, i8* %9, align 1
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18
  %24 = load i8, i8* %9, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = load i32, i32* @input_line_pointer, align 4
  %28 = load i8, i8* %9, align 1
  %29 = call i32 @atof_vax(i32 %27, i8 signext %28, i32* %16)
  store i32 %29, i32* @input_line_pointer, align 4
  %30 = load i8, i8* %9, align 1
  %31 = call i32 @atof_vax_sizeof(i8 signext %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = load i32, i32* @MAXIMUM_NUMBER_OF_LITTLENUMS, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = icmp ule i64 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @know(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = udiv i64 %41, 4
  %43 = getelementptr inbounds i32, i32* %16, i64 %42
  store i32* %43, i32** %12, align 8
  store i32* %16, i32** %11, align 8
  br label %44

44:                                               ; preds = %55, %26
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ult i32* %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @md_number_to_chars(i8* %49, i32 %51, i32 4)
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 4
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %48
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %11, align 8
  br label %44

58:                                               ; preds = %44
  br label %60

59:                                               ; preds = %23
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %58
  %61 = load i32, i32* %10, align 4
  %62 = load i32*, i32** %6, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i8, i8* %9, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %69

67:                                               ; preds = %60
  %68 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i8* [ null, %66 ], [ %68, %67 ]
  %71 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i8* %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @atof_vax(i32, i8 signext, i32*) #2

declare dso_local i32 @atof_vax_sizeof(i8 signext) #2

declare dso_local i32 @know(i32) #2

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #2

declare dso_local i8* @_(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
