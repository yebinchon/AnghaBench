; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-alpha.c_md_atof.c"
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
  switch i32 %18, label %29 [
    i32 71, label %19
    i32 70, label %20
    i32 68, label %20
    i32 102, label %25
    i32 100, label %26
    i32 120, label %27
    i32 88, label %27
    i32 112, label %28
    i32 80, label %28
  ]

19:                                               ; preds = %3
  store i32 103, i32* %5, align 4
  br label %20

20:                                               ; preds = %3, %3, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i8* @vax_md_atof(i32 %21, i8* %22, i32* %23)
  store i8* %24, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

25:                                               ; preds = %3
  store i32 2, i32* %8, align 4
  br label %32

26:                                               ; preds = %3
  store i32 4, i32* %8, align 4
  br label %32

27:                                               ; preds = %3, %3
  store i32 6, i32* %8, align 4
  br label %32

28:                                               ; preds = %3, %3
  store i32 6, i32* %8, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  %31 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %31, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

32:                                               ; preds = %28, %27, %26, %25
  %33 = load i8*, i8** @input_line_pointer, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @atof_ieee(i8* %33, i32 %34, i32* %17)
  store i8* %35, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i8*, i8** %12, align 8
  store i8* %39, i8** @input_line_pointer, align 8
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %17, i64 %47
  %49 = getelementptr inbounds i32, i32* %48, i64 -1
  store i32* %49, i32** %11, align 8
  br label %50

50:                                               ; preds = %54, %40
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %8, align 4
  %53 = icmp ne i32 %51, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 -1
  store i32* %57, i32** %11, align 8
  %58 = load i32, i32* %56, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @md_number_to_chars(i8* %55, i64 %59, i32 4)
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 4
  store i8* %62, i8** %6, align 8
  br label %50

63:                                               ; preds = %50
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %63, %29, %20
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @vax_md_atof(i32, i8*, i32*) #2

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
