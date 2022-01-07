; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/flex/extr_yylex.c_yylex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/flex/extr_yylex.c_yylex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@yylex.beglin = internal global i32 0, align 4
@eofseen = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@sectnum = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"premature EOF\00", align 1
@trace = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@num_rules = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%%\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1
@nmstr = common dso_local global i8* null, align 8
@yylval = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"\\%c\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\%.3o\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"<<EOF>>\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@yytext = external dso_local global i8*, align 8
@.str.12 = private unnamed_addr constant [12 x i8] c"End Marker\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"*Something Weird* - tok: %d val: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @yylex() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @eofseen, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @EOF, align 4
  store i32 %5, i32* %1, align 4
  br label %8

6:                                                ; preds = %0
  %7 = call i32 (...) @flexscan()
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @EOF, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %8
  store i32 1, i32* @eofseen, align 4
  %16 = load i32, i32* @sectnum, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i8* @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @synerr(i8* %19)
  store i32 2, i32* @sectnum, align 4
  store i32 129, i32* %1, align 4
  br label %22

21:                                               ; preds = %15
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %18
  br label %23

23:                                               ; preds = %22, %12
  %24 = load i64, i64* @trace, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %118

26:                                               ; preds = %23
  %27 = load i32, i32* @yylex.beglin, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* @num_rules, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 0, i32* @yylex.beglin, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %1, align 4
  switch i32 %35, label %111 [
    i32 60, label %36
    i32 62, label %36
    i32 94, label %36
    i32 36, label %36
    i32 34, label %36
    i32 91, label %36
    i32 93, label %36
    i32 123, label %36
    i32 125, label %36
    i32 124, label %36
    i32 40, label %36
    i32 41, label %36
    i32 45, label %36
    i32 47, label %36
    i32 92, label %36
    i32 63, label %36
    i32 46, label %36
    i32 42, label %36
    i32 43, label %36
    i32 44, label %36
    i32 10, label %40
    i32 130, label %47
    i32 128, label %50
    i32 129, label %53
    i32 136, label %60
    i32 138, label %64
    i32 135, label %88
    i32 131, label %92
    i32 137, label %96
    i32 134, label %99
    i32 133, label %103
    i32 132, label %103
    i32 150, label %103
    i32 149, label %103
    i32 148, label %103
    i32 147, label %103
    i32 146, label %103
    i32 145, label %103
    i32 144, label %103
    i32 143, label %103
    i32 142, label %103
    i32 141, label %103
    i32 140, label %103
    i32 139, label %103
    i32 0, label %107
  ]

36:                                               ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %37 = load i32, i32* %1, align 4
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 @putc(i32 %37, i32 %38)
  br label %117

40:                                               ; preds = %34
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @putc(i32 10, i32 %41)
  %43 = load i32, i32* @sectnum, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 1, i32* @yylex.beglin, align 4
  br label %46

46:                                               ; preds = %45, %40
  br label %117

47:                                               ; preds = %34
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %117

50:                                               ; preds = %34
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %117

53:                                               ; preds = %34
  %54 = load i32, i32* @stderr, align 4
  %55 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @sectnum, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* @yylex.beglin, align 4
  br label %59

59:                                               ; preds = %58, %53
  br label %117

60:                                               ; preds = %34
  %61 = load i32, i32* @stderr, align 4
  %62 = load i8*, i8** @nmstr, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %62)
  br label %117

64:                                               ; preds = %34
  %65 = load i32, i32* @yylval, align 4
  switch i32 %65, label %70 [
    i32 60, label %66
    i32 62, label %66
    i32 94, label %66
    i32 36, label %66
    i32 34, label %66
    i32 91, label %66
    i32 93, label %66
    i32 123, label %66
    i32 125, label %66
    i32 124, label %66
    i32 40, label %66
    i32 41, label %66
    i32 45, label %66
    i32 47, label %66
    i32 92, label %66
    i32 63, label %66
    i32 46, label %66
    i32 42, label %66
    i32 43, label %66
    i32 44, label %66
  ]

66:                                               ; preds = %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* @yylval, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  br label %87

70:                                               ; preds = %64
  %71 = load i32, i32* @yylval, align 4
  %72 = call i32 @isascii(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* @yylval, align 4
  %76 = call i32 @isprint(i32 %75) #3
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* @yylval, align 4
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %80)
  br label %86

82:                                               ; preds = %74
  %83 = load i32, i32* @yylval, align 4
  %84 = load i32, i32* @stderr, align 4
  %85 = call i32 @putc(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %66
  br label %117

88:                                               ; preds = %34
  %89 = load i32, i32* @stderr, align 4
  %90 = load i32, i32* @yylval, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %90)
  br label %117

92:                                               ; preds = %34
  %93 = load i32, i32* @stderr, align 4
  %94 = load i32, i32* @yylval, align 4
  %95 = call i32 (i32, i8*, ...) @fprintf(i32 %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %94)
  br label %117

96:                                               ; preds = %34
  %97 = load i32, i32* @stderr, align 4
  %98 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %117

99:                                               ; preds = %34
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** @yytext, align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %101)
  br label %117

103:                                              ; preds = %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34, %34
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** @yytext, align 8
  %106 = call i32 (i32, i8*, ...) @fprintf(i32 %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %105)
  br label %117

107:                                              ; preds = %34
  %108 = load i32, i32* @stderr, align 4
  %109 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* %109)
  br label %117

111:                                              ; preds = %34
  %112 = load i32, i32* @stderr, align 4
  %113 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %114 = load i32, i32* %1, align 4
  %115 = load i32, i32* @yylval, align 4
  %116 = call i32 (i32, i8*, ...) @fprintf(i32 %112, i8* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %111, %107, %103, %99, %96, %92, %88, %87, %60, %59, %50, %47, %46, %36
  br label %118

118:                                              ; preds = %117, %23
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

declare dso_local i32 @flexscan(...) #1

declare dso_local i32 @synerr(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @putc(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @isascii(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
