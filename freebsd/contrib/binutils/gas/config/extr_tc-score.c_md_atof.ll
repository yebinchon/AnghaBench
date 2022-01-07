; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-score.c_md_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LITTLENUMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bad call to MD_ATOF()\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@target_big_endian = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @md_atof(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32, i32* @MAX_LITTLENUMS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %22 [
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
    i32 112, label %21
    i32 80, label %21
  ]

19:                                               ; preds = %3, %3, %3, %3
  store i32 2, i32* %8, align 4
  br label %25

20:                                               ; preds = %3, %3, %3, %3
  store i32 4, i32* %8, align 4
  br label %25

21:                                               ; preds = %3, %3, %3, %3
  store i32 6, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  %24 = call i8* @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %87

25:                                               ; preds = %21, %20, %19
  %26 = load i8*, i8** @input_line_pointer, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @atof_ieee(i8* %26, i32 %27, i64* %17)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i8*, i8** %11, align 8
  store i8* %32, i8** @input_line_pointer, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 %34, 2
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* @target_big_endian, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %17, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @md_number_to_chars(i8* %45, i32 %50, i32 2)
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %12, align 4
  br label %40

57:                                               ; preds = %40
  br label %86

58:                                               ; preds = %33
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %17, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @md_number_to_chars(i8* %64, i32 %70, i32 2)
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %17, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @md_number_to_chars(i8* %73, i32 %78, i32 2)
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 4
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %63
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 2
  store i32 %84, i32* %12, align 4
  br label %59

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %85, %57
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %87

87:                                               ; preds = %86, %22
  %88 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i8*, i8** %4, align 8
  ret i8* %89
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
