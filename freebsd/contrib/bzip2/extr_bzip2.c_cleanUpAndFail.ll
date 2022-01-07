; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_cleanUpAndFail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bzip2/extr_bzip2.c_cleanUpAndFail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MY_STAT = type { i32 }

@srcMode = common dso_local global i64 0, align 8
@SM_F2F = common dso_local global i64 0, align 8
@opMode = common dso_local global i64 0, align 8
@OM_TEST = common dso_local global i64 0, align 8
@deleteOutputOnInterrupt = common dso_local global i64 0, align 8
@inName = common dso_local global i32 0, align 4
@noisy = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@progName = common dso_local global i8* null, align 8
@outName = common dso_local global i8* null, align 8
@outputHandleJustInCase = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@numFileNames = common dso_local global i64 0, align 8
@numFilesProcessed = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@exitValue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cleanUpAndFail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanUpAndFail(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.MY_STAT, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @srcMode, align 8
  %6 = load i64, i64* @SM_F2F, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %59

8:                                                ; preds = %1
  %9 = load i64, i64* @opMode, align 8
  %10 = load i64, i64* @OM_TEST, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %8
  %13 = load i64, i64* @deleteOutputOnInterrupt, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load i32, i32* @inName, align 4
  %17 = call i64 @MY_STAT(i32 %16, %struct.MY_STAT* %4)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i64, i64* @noisy, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** @progName, align 8
  %26 = load i8*, i8** @outName, align 8
  %27 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32*, i32** @outputHandleJustInCase, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** @outputHandleJustInCase, align 8
  %33 = call i32 @fclose(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i8*, i8** @outName, align 8
  %36 = call i64 @remove(i8* %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** @progName, align 8
  %42 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %39, %34
  br label %58

44:                                               ; preds = %15
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** @progName, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** @progName, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @progName, align 8
  %53 = load i8*, i8** @outName, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %52, i8* %53)
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** @progName, align 8
  %57 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %55, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %44, %43
  br label %59

59:                                               ; preds = %58, %12, %8, %1
  %60 = load i64, i64* @noisy, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load i64, i64* @numFileNames, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = load i64, i64* @numFilesProcessed, align 8
  %67 = load i64, i64* @numFileNames, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32, i32* @stderr, align 4
  %71 = load i8*, i8** @progName, align 8
  %72 = load i8*, i8** @progName, align 8
  %73 = load i64, i64* @numFileNames, align 8
  %74 = load i64, i64* @numFileNames, align 8
  %75 = load i64, i64* @numFilesProcessed, align 8
  %76 = sub nsw i64 %74, %75
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %70, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.6, i64 0, i64 0), i8* %71, i8* %72, i64 %73, i64 %76)
  br label %78

78:                                               ; preds = %69, %65, %62, %59
  %79 = load i32, i32* %2, align 4
  %80 = call i32 @setExit(i32 %79)
  %81 = load i32, i32* @exitValue, align 4
  %82 = call i32 @exit(i32 %81) #3
  unreachable
}

declare dso_local i64 @MY_STAT(i32, %struct.MY_STAT*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @remove(i8*) #1

declare dso_local i32 @setExit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
