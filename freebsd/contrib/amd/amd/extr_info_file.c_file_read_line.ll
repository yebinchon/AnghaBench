; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_file.c_file_read_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_file.c_file_read_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_read_line(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %95, %3
  br label %12

12:                                               ; preds = %81, %11
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @fgets(i8* %13, i32 %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %79

26:                                               ; preds = %18
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 92
  br i1 %34, label %35, label %79

35:                                               ; preds = %26
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 10
  br i1 %43, label %44, label %79

44:                                               ; preds = %35
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 2
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 2
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load i8*, i8** %5, align 8
  store i8 10, i8* %54, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 0, i8* %56, align 1
  br label %57

57:                                               ; preds = %74, %44
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @getc(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @EOF, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load i32, i32* %10, align 4
  %64 = trunc i32 %63 to i8
  %65 = call i64 @isascii(i8 zeroext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i32, i32* %10, align 4
  %69 = trunc i32 %68 to i8
  %70 = call i64 @isspace(i8 zeroext %69)
  %71 = icmp ne i64 %70, 0
  br label %72

72:                                               ; preds = %67, %62, %57
  %73 = phi i1 [ false, %62 ], [ false, %57 ], [ %71, %67 ]
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  br label %57

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @ungetc(i32 %76, i32* %77)
  br label %81

79:                                               ; preds = %35, %26, %18
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %99

81:                                               ; preds = %75
  br label %12

82:                                               ; preds = %12
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @feof(i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %86
  %91 = load i32*, i32** %7, align 8
  %92 = call i32 @ferror(i32* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %90, %86, %83
  %96 = phi i1 [ false, %86 ], [ false, %83 ], [ %94, %90 ]
  br i1 %96, label %11, label %97

97:                                               ; preds = %95
  %98 = load i32, i32* %8, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %79
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @isascii(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @ungetc(i32, i32*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i32 @ferror(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
