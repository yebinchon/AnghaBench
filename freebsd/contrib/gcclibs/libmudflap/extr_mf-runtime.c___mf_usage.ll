; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i64, i64*, i32, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [359 x i8] c"This is a %s%sGCC \22mudflap\22 memory-checked binary.\0AMudflap is Copyright (C) 2002-2004 Free Software Foundation, Inc.\0A\0AThe mudflap code can be controlled by an environment variable:\0A\0A$ export MUDFLAP_OPTIONS='<options>'\0A$ <mudflapped_program>\0A\0Awhere <options> is a space-separated list of \0Aany of the following options.  Use `-no-OPTION' to disable options.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"thread-unaware \00", align 1
@options = common dso_local global %struct.option* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"-%-23.23s %s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" [active]\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"=N\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [%d]\0A\00", align 1
@pthread_join = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__mf_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mf_usage() #0 {
  %1 = alloca %struct.option*, align 8
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* getelementptr inbounds ([359 x i8], [359 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %6 = load %struct.option*, %struct.option** @options, align 8
  store %struct.option* %6, %struct.option** %1, align 8
  br label %7

7:                                                ; preds = %72, %0
  %8 = load %struct.option*, %struct.option** %1, align 8
  %9 = getelementptr inbounds %struct.option, %struct.option* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %75

12:                                               ; preds = %7
  %13 = load %struct.option*, %struct.option** %1, align 8
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.option*, %struct.option** %1, align 8
  %17 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %15, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %2, align 4
  %22 = load %struct.option*, %struct.option** %1, align 8
  %23 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %69 [
    i32 128, label %25
    i32 129, label %43
  ]

25:                                               ; preds = %12
  %26 = load i32, i32* @stderr, align 4
  %27 = load %struct.option*, %struct.option** %1, align 8
  %28 = getelementptr inbounds %struct.option, %struct.option* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.option*, %struct.option** %1, align 8
  %31 = getelementptr inbounds %struct.option, %struct.option* %30, i32 0, i32 4
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %29, i8* %32)
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %42

39:                                               ; preds = %25
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  br label %71

43:                                               ; preds = %12
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %45 = load %struct.option*, %struct.option** %1, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @strncpy(i8* %44, i8* %47, i32 128)
  %49 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %50 = load %struct.option*, %struct.option** %1, align 8
  %51 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %49, i64 %54
  %56 = call i32 @strncpy(i8* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %57 = load i32, i32* @stderr, align 4
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %59 = load %struct.option*, %struct.option** %1, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %58, i8* %61)
  %63 = load i32, i32* @stderr, align 4
  %64 = load %struct.option*, %struct.option** %1, align 8
  %65 = getelementptr inbounds %struct.option, %struct.option* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 %67)
  br label %71

69:                                               ; preds = %12
  %70 = call i32 (...) @abort() #3
  unreachable

71:                                               ; preds = %43, %42
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.option*, %struct.option** %1, align 8
  %74 = getelementptr inbounds %struct.option, %struct.option* %73, i32 1
  store %struct.option* %74, %struct.option** %1, align 8
  br label %7

75:                                               ; preds = %7
  %76 = load i32, i32* @stderr, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
