; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_yyvwarn.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_parser.c_yyvwarn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i32, i32 }
%struct.TYPE_4__ = type { i8* }

@yypcb = common dso_local global %struct.TYPE_5__* null, align 8
@D_SYNTAX = common dso_local global i32 0, align 4
@yylineno = common dso_local global i32 0, align 4
@yytext = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c" near end of input\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c" near end of line\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" near \22%s\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @yyvwarn(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %11 = icmp eq %struct.TYPE_5__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %87

13:                                               ; preds = %2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* @D_SYNTAX, align 4
  %18 = call i32 @dt_errtag(i32 %17)
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %13
  %30 = load i32, i32* @yylineno, align 4
  br label %32

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dt_set_errmsg(%struct.TYPE_4__* %16, i32 %18, i32 %21, i32 %24, i32 %33, i8* %34, i32 %35)
  %37 = load i8*, i8** %3, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 10)
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %87

40:                                               ; preds = %32
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @yypcb, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %5, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i64 @strlen(i8* %46)
  store i64 %47, i64* %6, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %8, align 8
  %53 = load i64, i64* %6, align 8
  %54 = sub i64 8, %53
  store i64 %54, i64* %9, align 8
  %55 = load i8*, i8** @yytext, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %40
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %61, i64 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %86

64:                                               ; preds = %40
  %65 = load i8*, i8** @yytext, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 10
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i8*, i8** %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %71, i64 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %85

74:                                               ; preds = %64
  %75 = load i8*, i8** @yytext, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 10)
  store i8* %76, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  store i8 0, i8* %79, align 1
  br label %80

80:                                               ; preds = %78, %74
  %81 = load i8*, i8** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i8*, i8** @yytext, align 8
  %84 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %81, i64 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %83)
  br label %85

85:                                               ; preds = %80, %70
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %12, %86, %32
  ret void
}

declare dso_local i32 @dt_set_errmsg(%struct.TYPE_4__*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @dt_errtag(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
