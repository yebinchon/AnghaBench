; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-mep.c_md_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LITTLENUMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad call to md_atof()\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md_atof(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MAX_LITTLENUMS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %21 [
    i32 102, label %19
    i32 70, label %19
    i32 115, label %19
    i32 83, label %19
    i32 100, label %20
    i32 68, label %20
    i32 114, label %20
    i32 82, label %20
  ]

19:                                               ; preds = %3, %3, %3, %3
  store i32 2, i32* %9, align 4
  br label %24

20:                                               ; preds = %3, %3, %3, %3
  store i32 4, i32* %9, align 4
  br label %24

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  %23 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %56

24:                                               ; preds = %20, %19
  %25 = load i8*, i8** @input_line_pointer, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i8* @atof_ieee(i8* %25, i32 %26, i64* %17)
  store i8* %27, i8** %12, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** @input_line_pointer, align 8
  br label %32

32:                                               ; preds = %30, %24
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = mul i64 %34, 8
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %52, %32
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %17, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @md_number_to_chars(i8* %43, i32 %48, i32 8)
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 8
  store i8* %51, i8** %6, align 8
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %38

55:                                               ; preds = %38
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i8*, i8** %4, align 8
  ret i8* %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @atof_ieee(i8*, i32, i64*) #2

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
