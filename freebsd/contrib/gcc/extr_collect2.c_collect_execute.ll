; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_collect_execute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_collect2.c_collect_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i32 }

@vflag = common dso_local global i64 0, align 8
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[cannot find %s]\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"cannot find '%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"collect2\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"pex_init failed\00", align 1
@PEX_LAST = common dso_local global i32 0, align 4
@PEX_SEARCH = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pex_obj* @collect_execute(i8* %0, i8** %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pex_obj*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i64, i64* @vflag, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @debug, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %16, %4
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8**, i8*** %6, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %28)
  br label %33

30:                                               ; preds = %19
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @notice(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i8**, i8*** %6, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  store i8** %35, i8*** %12, align 8
  br label %36

36:                                               ; preds = %44, %33
  %37 = load i8**, i8*** %12, align 8
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %13, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %40
  %45 = load i8**, i8*** %12, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %12, align 8
  br label %36

47:                                               ; preds = %36
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %16
  %51 = load i32, i32* @stdout, align 4
  %52 = call i32 @fflush(i32 %51)
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 @fflush(i32 %53)
  %55 = load i8**, i8*** %6, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 0
  %57 = load i8*, i8** %56, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @fatal(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %59, %50
  %63 = call %struct.pex_obj* @pex_init(i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null)
  store %struct.pex_obj* %63, %struct.pex_obj** %9, align 8
  %64 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  %65 = icmp eq %struct.pex_obj* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @fatal_perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %62
  %69 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  %70 = load i32, i32* @PEX_LAST, align 4
  %71 = load i32, i32* @PEX_SEARCH, align 4
  %72 = or i32 %70, %71
  %73 = load i8**, i8*** %6, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i8* @pex_run(%struct.pex_obj* %69, i32 %72, i8* %75, i8** %76, i8* %77, i8* %78, i32* %11)
  store i8* %79, i8** %10, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %68
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* @errno, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 (i8*, ...) @fatal_perror(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %87)
  br label %92

89:                                               ; preds = %82
  %90 = load i8*, i8** %10, align 8
  %91 = call i32 @fatal(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %89, %85
  br label %93

93:                                               ; preds = %92, %68
  %94 = load %struct.pex_obj*, %struct.pex_obj** %9, align 8
  ret %struct.pex_obj* %94
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @notice(i8*, i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @fatal(i8*, i8*) #1

declare dso_local %struct.pex_obj* @pex_init(i32, i8*, i32*) #1

declare dso_local i32 @fatal_perror(i8*, ...) #1

declare dso_local i8* @pex_run(%struct.pex_obj*, i32, i8*, i8**, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
