; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_bin2c.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_bin2c.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PACKAGE = common dso_local global i32 0, align 4
@LOCALEDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"bin2c\00", align 1
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Usage: %s < input_file > output_file\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Prints bytes from stdin in hex format.\0A\00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"0x%02x,\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LC_CTYPE = common dso_local global i32 0, align 4
@LC_MESSAGES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @PACKAGE, align 4
  %13 = load i32, i32* @LOCALEDIR, align 4
  %14 = call i32 @bindtextdomain(i32 %12, i32 %13)
  %15 = load i32, i32* @PACKAGE, align 4
  %16 = call i32 @textdomain(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %95

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %67

22:                                               ; preds = %19
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 45
  br i1 %29, label %30, label %67

30:                                               ; preds = %22
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %11, align 8
  br label %42

42:                                               ; preds = %39, %30
  %43 = load i8*, i8** %11, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 104
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 72
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 118
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load i8*, i8** %11, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 86
  br label %64

64:                                               ; preds = %59, %52
  %65 = phi i1 [ true, %52 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %22, %19
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @print_version(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32*, i32** @stdout, align 8
  br label %79

77:                                               ; preds = %72
  %78 = load i32*, i32** @stderr, align 8
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32* [ %76, %75 ], [ %78, %77 ]
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i8**, i8*** %5, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* %82, i8* %85)
  %87 = load i32*, i32** %10, align 8
  %88 = call i8* @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %87, i8* %88)
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @exit(i32 %93) #3
  unreachable

95:                                               ; preds = %2
  %96 = load i32, i32* @stdin, align 4
  %97 = call i32 @fileno(i32 %96)
  %98 = call i32 @SET_BINARY(i32 %97)
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %112, %95
  %100 = load i32, i32* @stdin, align 4
  %101 = call i32 @getc(i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @EOF, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  %109 = icmp eq i32 %108, 16
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %104
  br label %99

113:                                              ; preds = %99
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %113
  %119 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @bindtextdomain(i32, i32) #1

declare dso_local i32 @textdomain(i32) #1

declare dso_local i32 @print_version(i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SET_BINARY(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
