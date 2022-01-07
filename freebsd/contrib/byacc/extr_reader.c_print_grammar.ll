; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_print_grammar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_reader.c_print_grammar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbose_file = common dso_local global i32* null, align 8
@vflag = common dso_local global i32 0, align 4
@nrules = common dso_local global i32 0, align 4
@rlhs = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%4d  %s :\00", align 1
@symbol_name = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"%4d  \00", align 1
@ritem = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_grammar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_grammar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 0, i64* %4, align 8
  %6 = load i32*, i32** @verbose_file, align 8
  store i32* %6, i32** %5, align 8
  %7 = load i32, i32* @vflag, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %103

10:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  store i32 2, i32* %1, align 4
  br label %11

11:                                               ; preds = %100, %10
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @nrules, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %103

15:                                               ; preds = %11
  %16 = load i64*, i64** @rlhs, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** @rlhs, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %20, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %15
  %29 = load i32, i32* %1, align 4
  %30 = icmp ne i32 %29, 2
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %1, align 4
  %37 = sub nsw i32 %36, 2
  %38 = load i8**, i8*** @symbol_name, align 8
  %39 = load i64*, i64** @rlhs, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i8*, i8** %38, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %45)
  %47 = load i8**, i8*** @symbol_name, align 8
  %48 = load i64*, i64** @rlhs, align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i8*, i8** %47, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlen(i8* %54)
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %4, align 8
  br label %74

58:                                               ; preds = %15
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %1, align 4
  %61 = sub nsw i32 %60, 2
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %68, %58
  %65 = load i64, i64* %3, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %3, align 8
  %67 = icmp ne i64 %65, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 @putc(i8 signext 32, i32* %69)
  br label %64

71:                                               ; preds = %64
  %72 = load i32*, i32** %5, align 8
  %73 = call i32 @putc(i8 signext 124, i32* %72)
  br label %74

74:                                               ; preds = %71, %34
  br label %75

75:                                               ; preds = %82, %74
  %76 = load i64*, i64** @ritem, align 8
  %77 = load i32, i32* %2, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %75
  %83 = load i32*, i32** %5, align 8
  %84 = load i8**, i8*** @symbol_name, align 8
  %85 = load i64*, i64** @ritem, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8*, i8** %84, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %91)
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %2, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load i32, i32* %2, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %2, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @putc(i8 signext 10, i32* %98)
  br label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %11

103:                                              ; preds = %9, %11
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
