; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_etcsystem_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_etcsystem_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_etcfile = common dso_local global i32 0, align 4
@g_ofile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"a\00", align 1
@g_ofp = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to open output file '%s'\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@g_etcbegin = common dso_local global i8* null, align 8
@g_etc = common dso_local global i8** null, align 8
@g_dtp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"unexpectedly large number of modules!\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"dtrace\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"forceload: drv/%s\0A\00", align 1
@g_etcend = common dso_local global i8* null, align 8
@EOF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to close output file '%s'\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"added forceload directives to %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @etcsystem_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @etcsystem_add() #0 {
  %1 = alloca [20 x i8*], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_etcfile, align 4
  store i32 %4, i32* @g_ofile, align 4
  %5 = call i32* @fopen(i32 %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %5, i32** @g_ofp, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @g_ofile, align 4
  %9 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %8)
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i8*, i8** @g_etcbegin, align 8
  %12 = call i32 @oprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %27, %10
  %14 = load i8**, i8*** @g_etc, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %13
  %21 = load i8**, i8*** @g_etc, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @oprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %13

30:                                               ; preds = %13
  %31 = load i32, i32* @g_dtp, align 4
  %32 = getelementptr inbounds [20 x i8*], [20 x i8*]* %1, i64 0, i64 0
  %33 = call i32 @dtrace_provider_modules(i32 %31, i8** %32, i32 19)
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %35, 20
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %2, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds [20 x i8*], [20 x i8*]* %1, i64 0, i64 %42
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %54, %39
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [20 x i8*], [20 x i8*]* %1, i64 0, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @oprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %44

57:                                               ; preds = %44
  %58 = load i8*, i8** @g_etcend, align 8
  %59 = call i32 @oprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load i32*, i32** @g_ofp, align 8
  %61 = call i64 @fclose(i32* %60)
  %62 = load i64, i64* @EOF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %57
  %65 = load i32, i32* @g_ofile, align 4
  %66 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %57
  %68 = load i32, i32* @g_ofile, align 4
  %69 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @oprintf(i8*, i8*) #1

declare dso_local i32 @dtrace_provider_modules(i32, i8**, i32) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
