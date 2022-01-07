; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_atof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_md_atof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LITTLENUMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bad call to MD_ATOF()\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@target_big_endian = common dso_local global i64 0, align 8
@cpu_variant = common dso_local global i32 0, align 4
@fpu_endian_pure = common dso_local global i32 0, align 4

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
  br label %114

26:                                               ; preds = %22, %21, %20, %19
  %27 = load i8*, i8** @input_line_pointer, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i8* @atof_ieee(i8* %27, i32 %28, i64* %17)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i8*, i8** %11, align 8
  store i8* %33, i8** @input_line_pointer, align 8
  br label %34

34:                                               ; preds = %32, %26
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 2
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* @target_big_endian, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %55, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %17, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @md_number_to_chars(i8* %46, i32 %51, i32 2)
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 2
  store i8* %54, i8** %6, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %41

58:                                               ; preds = %41
  br label %113

59:                                               ; preds = %34
  %60 = load i32, i32* @cpu_variant, align 4
  %61 = load i32, i32* @fpu_endian_pure, align 4
  %62 = call i64 @ARM_CPU_HAS_FEATURE(i32 %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %80, %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %17, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 @md_number_to_chars(i8* %71, i32 %76, i32 2)
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %6, align 8
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %12, align 4
  br label %67

83:                                               ; preds = %67
  br label %112

84:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %17, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @md_number_to_chars(i8* %90, i32 %96, i32 2)
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 2
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %17, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @md_number_to_chars(i8* %99, i32 %104, i32 2)
  %106 = load i8*, i8** %6, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 4
  store i8* %107, i8** %6, align 8
  br label %108

108:                                              ; preds = %89
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 2
  store i32 %110, i32* %12, align 4
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %111, %83
  br label %113

113:                                              ; preds = %112, %58
  store i8* null, i8** %4, align 8
  store i32 1, i32* %13, align 4
  br label %114

114:                                              ; preds = %113, %23
  %115 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %115)
  %116 = load i8*, i8** %4, align 8
  ret i8* %116
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @_(i8*) #2

declare dso_local i8* @atof_ieee(i8*, i32, i64*) #2

declare dso_local i32 @md_number_to_chars(i8*, i32, i32) #2

declare dso_local i64 @ARM_CPU_HAS_FEATURE(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
