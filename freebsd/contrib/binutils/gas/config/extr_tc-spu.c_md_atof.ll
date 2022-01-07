; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_md_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LITTLENUMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad call to MD_ATOF()\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md_atof(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MAX_LITTLENUMS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %23 [
    i32 102, label %19
    i32 70, label %19
    i32 115, label %19
    i32 83, label %19
    i32 100, label %20
    i32 68, label %20
    i32 114, label %20
    i32 82, label %20
    i32 120, label %21
    i32 88, label %21
    i32 112, label %22
    i32 80, label %22
  ]

19:                                               ; preds = %3, %3, %3, %3
  store i32 2, i32* %8, align 4
  br label %26

20:                                               ; preds = %3, %3, %3, %3
  store i32 4, i32* %8, align 4
  br label %26

21:                                               ; preds = %3, %3
  store i32 6, i32* %8, align 4
  br label %26

22:                                               ; preds = %3, %3
  store i32 6, i32* %8, align 4
  br label %26

23:                                               ; preds = %3
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %54

26:                                               ; preds = %22, %21, %20, %19
  %27 = load i8*, i8** @input_line_pointer, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @atof_ieee(i8* %27, i32 %28, i32* %17)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** %12, align 8
  store i8* %33, i8** @input_line_pointer, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32* %17, i32** %11, align 8
  br label %40

40:                                               ; preds = %44, %34
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %11, align 8
  %48 = load i32, i32* %46, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @md_number_to_chars(i8* %45, i64 %49, i32 4)
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %52, i8** %6, align 8
  br label %40

53:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load i8*, i8** %4, align 8
  ret i8* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @atof_ieee(i8*, i32, i32*) #2

declare dso_local i32 @md_number_to_chars(i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
