; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_print_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_strings.c_print_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@string_min = common dso_local global i32 0, align 4
@EOF = common dso_local global i64 0, align 8
@print_filenames = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@print_addresses = common dso_local global i64 0, align 8
@address_radix = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%7lo \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%7ld \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%7lx \00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32, i32, i8*)* @print_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_strings(i8* %0, i32* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %17 = load i32, i32* @string_min, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 1, %19
  %21 = trunc i64 %20 to i32
  %22 = call i64 @xmalloc(i32 %21)
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %13, align 8
  br label %24

24:                                               ; preds = %6, %109
  br label %25

25:                                               ; preds = %50, %24
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %111

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %35

35:                                               ; preds = %58, %33
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @string_min, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = call i64 @get_char(i32* %40, i32* %9, i32* %11, i8** %12)
  store i64 %41, i64* %16, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i64, i64* @EOF, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %111

46:                                               ; preds = %39
  %47 = load i64, i64* %16, align 8
  %48 = call i32 @STRING_ISGRAPHIC(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %25

51:                                               ; preds = %46
  %52 = load i64, i64* %16, align 8
  %53 = trunc i64 %52 to i8
  %54 = load i8*, i8** %13, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8 %53, i8* %57, align 1
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load i64, i64* @print_filenames, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i64, i64* @print_addresses, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i32, i32* @address_radix, align 4
  switch i32 %71, label %84 [
    i32 8, label %72
    i32 10, label %76
    i32 16, label %80
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %74)
  br label %84

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  br label %84

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %70, %80, %76, %72
  br label %85

85:                                               ; preds = %84, %67
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  store i8 0, i8* %89, align 1
  %90 = load i8*, i8** %13, align 8
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @fputs(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %85, %105
  %94 = load i32*, i32** %8, align 8
  %95 = call i64 @get_char(i32* %94, i32* %9, i32* %11, i8** %12)
  store i64 %95, i64* %16, align 8
  %96 = load i64, i64* %16, align 8
  %97 = load i64, i64* @EOF, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %109

100:                                              ; preds = %93
  %101 = load i64, i64* %16, align 8
  %102 = call i32 @STRING_ISGRAPHIC(i64 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %109

105:                                              ; preds = %100
  %106 = load i64, i64* %16, align 8
  %107 = trunc i64 %106 to i8
  %108 = call i32 @putchar(i8 signext %107)
  br label %93

109:                                              ; preds = %104, %99
  %110 = call i32 @putchar(i8 signext 10)
  br label %24

111:                                              ; preds = %45, %32
  ret void
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @get_char(i32*, i32*, i32*, i8**) #1

declare dso_local i32 @STRING_ISGRAPHIC(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
