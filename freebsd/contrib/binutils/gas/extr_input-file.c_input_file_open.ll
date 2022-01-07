; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-file.c_input_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_input-file.c_input_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@preprocess = common dso_local global i32 0, align 4
@FOPEN_RT = common dso_local global i32 0, align 4
@f_in = common dso_local global i32* null, align 8
@file_name = common dso_local global i8* null, align 8
@stdin = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"{standard input}\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't open %s for reading: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"can't read from %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"O_APP\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"PP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_file_open(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [80 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* @preprocess, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @FOPEN_RT, align 4
  %19 = call i32* @fopen(i8* %17, i32 %18)
  store i32* %19, i32** @f_in, align 8
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** @file_name, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32*, i32** @stdin, align 8
  store i32* %22, i32** @f_in, align 8
  %23 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %23, i8** @file_name, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32*, i32** @f_in, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i8*, i8** @file_name, align 8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @xstrerror(i32 %30)
  %32 = call i32 @as_bad(i8* %28, i8* %29, i32 %31)
  br label %126

33:                                               ; preds = %24
  %34 = load i32*, i32** @f_in, align 8
  %35 = call i32 @getc(i32* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32*, i32** @f_in, align 8
  %37 = call i64 @ferror(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** @file_name, align 8
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @xstrerror(i32 %42)
  %44 = call i32 @as_bad(i8* %40, i8* %41, i32 %43)
  %45 = load i32*, i32** @f_in, align 8
  %46 = call i32 @fclose(i32* %45)
  store i32* null, i32** @f_in, align 8
  br label %126

47:                                               ; preds = %33
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 35
  br i1 %49, label %50, label %122

50:                                               ; preds = %47
  %51 = load i32*, i32** @f_in, align 8
  %52 = call i32 @getc(i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 78
  br i1 %54, label %55, label %81

55:                                               ; preds = %50
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %57 = load i32*, i32** @f_in, align 8
  %58 = call i64 @fgets(i8* %56, i32 80, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %62 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 5
  %66 = load i8, i8* %65, align 1
  %67 = call i64 @ISSPACE(i8 signext %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 0, i32* @preprocess, align 4
  br label %70

70:                                               ; preds = %69, %64, %60, %55
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %72 = call i32 @strchr(i8* %71, i8 signext 10)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** @f_in, align 8
  %76 = call i32 @ungetc(i32 35, i32* %75)
  br label %80

77:                                               ; preds = %70
  %78 = load i32*, i32** @f_in, align 8
  %79 = call i32 @ungetc(i32 10, i32* %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %121

81:                                               ; preds = %50
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 65
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %86 = load i32*, i32** @f_in, align 8
  %87 = call i64 @fgets(i8* %85, i32 80, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %91 = call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 2)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 2
  %95 = load i8, i8* %94, align 2
  %96 = call i64 @ISSPACE(i8 signext %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* @preprocess, align 4
  br label %99

99:                                               ; preds = %98, %93, %89, %84
  %100 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %101 = call i32 @strchr(i8* %100, i8 signext 10)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32*, i32** @f_in, align 8
  %105 = call i32 @ungetc(i32 35, i32* %104)
  br label %109

106:                                              ; preds = %99
  %107 = load i32*, i32** @f_in, align 8
  %108 = call i32 @ungetc(i32 10, i32* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %120

110:                                              ; preds = %81
  %111 = load i32, i32* %5, align 4
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** @f_in, align 8
  %115 = call i32 @ungetc(i32 10, i32* %114)
  br label %119

116:                                              ; preds = %110
  %117 = load i32*, i32** @f_in, align 8
  %118 = call i32 @ungetc(i32 35, i32* %117)
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119, %109
  br label %121

121:                                              ; preds = %120, %80
  br label %126

122:                                              ; preds = %47
  %123 = load i32, i32* %5, align 4
  %124 = load i32*, i32** @f_in, align 8
  %125 = call i32 @ungetc(i32 %123, i32* %124)
  br label %126

126:                                              ; preds = %27, %39, %122, %121
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @fopen(i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @as_bad(i8*, i8*, i32) #1

declare dso_local i32 @xstrerror(i32) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
