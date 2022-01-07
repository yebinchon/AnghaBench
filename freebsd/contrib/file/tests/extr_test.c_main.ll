; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/tests/extr_test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/tests/extr_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.magic_set = type { i32 }

@MAGIC_NONE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ERROR opening MAGIC_NONE: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"ERROR loading with NULL file: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Usage: test TEST-FILE RESULT\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ERROR loading file %s: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ERROR opening `%s': \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Error: result was\0A%s\0Aexpected:\0A%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.magic_set*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @MAGIC_NONE, align 4
  %13 = call %struct.magic_set* @magic_open(i32 %12)
  store %struct.magic_set* %13, %struct.magic_set** %6, align 8
  %14 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %15 = icmp eq %struct.magic_set* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 10, i32* %3, align 4
  br label %91

19:                                               ; preds = %2
  %20 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %21 = call i32 @magic_load(%struct.magic_set* %20, i32* null)
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @stderr, align 4
  %25 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %26 = call i8* @magic_error(%struct.magic_set* %25)
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 11, i32* %3, align 4
  br label %91

28:                                               ; preds = %19
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %88

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %87

37:                                               ; preds = %31
  %38 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @magic_file(%struct.magic_set* %38, i8* %41)
  store i8* %42, i8** %7, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %50 = call i8* @magic_error(%struct.magic_set* %49)
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %48, i8* %50)
  store i32 12, i32* %3, align 4
  br label %91

52:                                               ; preds = %37
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32* @fopen(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %63)
  %65 = call i32 @perror(i32* null)
  store i32 13, i32* %3, align 4
  br label %91

66:                                               ; preds = %52
  %67 = load i32*, i32** %11, align 8
  %68 = call i8* @slurp(i32* %67, i64* %9)
  store i8* %68, i8** %8, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %73, i8* %74)
  %76 = load i8*, i8** %7, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i64 @strcmp(i8* %76, i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %66
  %81 = load i32, i32* @stderr, align 4
  %82 = load i8*, i8** %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %82, i8* %83)
  store i32 1, i32* %3, align 4
  br label %91

85:                                               ; preds = %66
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86, %34
  br label %88

88:                                               ; preds = %87, %28
  %89 = load %struct.magic_set*, %struct.magic_set** %6, align 8
  %90 = call i32 @magic_close(%struct.magic_set* %89)
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %88, %80, %59, %44, %23, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.magic_set* @magic_open(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @magic_load(%struct.magic_set*, i32*) #1

declare dso_local i8* @magic_error(%struct.magic_set*) #1

declare dso_local i8* @magic_file(%struct.magic_set*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @perror(i32*) #1

declare dso_local i8* @slurp(i32*, i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @magic_close(%struct.magic_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
