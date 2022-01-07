; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_switch_to_logfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_switch_to_logfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"/dev/stderr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"syslog option not supported, logging unchanged\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: Can't open logfile: %m\00", align 1
@logfp = common dso_local global i32* null, align 8
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"switched to logfile \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"no logfile defined; using stderr\00", align 1
@LOG_NOWAIT = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@syslogging = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @switch_to_logfile(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** @stderr, align 8
  store i32* %9, i32** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @STREQ(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32*, i32** @stderr, align 8
  store i32* %17, i32** %8, align 8
  br label %40

18:                                               ; preds = %12
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i64 @NSTREQ(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @XLOG_WARNING, align 4
  %25 = call i32 (i32, i8*, ...) @plog(i32 %24, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @umask(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @truncate(i8* %32, i32 0)
  %34 = call i32 @__IGNORE(i32 %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i8*, i8** %5, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %37, i32** %8, align 8
  %38 = call i32 @umask(i32 0)
  br label %39

39:                                               ; preds = %35, %23
  br label %40

40:                                               ; preds = %39, %16
  br label %41

41:                                               ; preds = %40, %3
  %42 = load i32*, i32** %8, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @XLOG_USER, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i32, i8*, ...) @plog(i32 %48, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %49)
  store i32 1, i32* %4, align 4
  br label %73

51:                                               ; preds = %44, %41
  %52 = load i32*, i32** @logfp, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32*, i32** @logfp, align 8
  %56 = load i32*, i32** @stderr, align 8
  %57 = icmp ne i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** @logfp, align 8
  %60 = call i32 @fclose(i32* %59)
  br label %61

61:                                               ; preds = %58, %54, %51
  %62 = load i32*, i32** %8, align 8
  store i32* %62, i32** @logfp, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* @XLOG_INFO, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 (i32, i8*, ...) @plog(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %67)
  br label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @XLOG_INFO, align 4
  %71 = call i32 (i32, i8*, ...) @plog(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %65
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %47
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @STREQ(i8*, i8*) #1

declare dso_local i64 @NSTREQ(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @__IGNORE(i32) #1

declare dso_local i32 @truncate(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
