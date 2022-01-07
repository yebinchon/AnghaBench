; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dtrace_program_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_program.c_dtrace_program_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"#ifndef\09_%s\0A#define\09_%s\0A\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"#include <unistd.h>\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"#ifdef\09__cplusplus\0Aextern \22C\22 {\0A#endif\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\0A#ifdef\09__cplusplus\0A}\0A#endif\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0A#endif\09/* _%s */\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_program_header(%struct.TYPE_5__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @strrchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strlen(i8* %21)
  %23 = add nsw i64 %22, 1
  %24 = call i8* @alloca(i64 %23)
  store i8* %24, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @dt_header_fmt_macro(i8* %25, i8* %26)
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i64 (i32*, i8*, ...) @fprintf(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @dt_set_errno(%struct.TYPE_5__* %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %87

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32*, i32** %6, align 8
  %40 = call i64 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %4, align 4
  br label %87

43:                                               ; preds = %38
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 -1, i32* %4, align 4
  br label %87

48:                                               ; preds = %43
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = call i32* @dt_list_next(i32* %50)
  store i32* %51, i32** %8, align 8
  br label %52

52:                                               ; preds = %63, %48
  %53 = load i32*, i32** %8, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %6, align 8
  %59 = call i64 @dt_header_provider(%struct.TYPE_5__* %56, i32* %57, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %87

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @dt_list_next(i32* %64)
  store i32* %65, i32** %8, align 8
  br label %52

66:                                               ; preds = %52
  %67 = load i32*, i32** %6, align 8
  %68 = call i64 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = load i32, i32* @errno, align 4
  %73 = call i32 @dt_set_errno(%struct.TYPE_5__* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %87

74:                                               ; preds = %66
  %75 = load i8*, i8** %7, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load i32*, i32** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = call i64 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @dt_set_errno(%struct.TYPE_5__* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %77, %74
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %82, %70, %61, %47, %42, %33
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dt_header_fmt_macro(i8*, i8*) #1

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @dt_list_next(i32*) #1

declare dso_local i64 @dt_header_provider(%struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
