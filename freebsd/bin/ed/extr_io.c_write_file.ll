; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_write_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot open output file\00", align 1
@errmsg = common dso_local global i8* null, align 8
@ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"error writing output file\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"cannot close output file\00", align 1
@scripted = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_file(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 33
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i32* @popen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %26

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strip_escapes(i8* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i32* @fopen(i32 %23, i8* %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = phi i32* [ %20, %17 ], [ %25, %21 ]
  store i32* %27, i32** %10, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32, i32* @stderr, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @errno, align 4
  %34 = call i8* @strerror(i32 %33)
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %32, i8* %34)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** @errmsg, align 8
  %36 = load i64, i64* @ERR, align 8
  store i64 %36, i64* %5, align 8
  br label %95

37:                                               ; preds = %26
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @write_stream(i32* %38, i64 %39, i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i32, i32* @stderr, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i8* @strerror(i32 %46)
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %47)
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8** @errmsg, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i8*, i8** %6, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 33
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @pclose(i32* %55)
  br label %60

57:                                               ; preds = %49
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @fclose(i32* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = phi i32 [ %56, %54 ], [ %59, %57 ]
  store i32 %61, i32* %12, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @errno, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %67)
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** @errmsg, align 8
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i64, i64* %11, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72, %69
  %76 = load i64, i64* @ERR, align 8
  store i64 %76, i64* %5, align 8
  br label %95

77:                                               ; preds = %72
  %78 = load i32, i32* @scripted, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @stdout, align 4
  %82 = load i64, i64* %11, align 8
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %82)
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub nsw i64 %88, %89
  %91 = add nsw i64 %90, 1
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi i64 [ %91, %87 ], [ 0, %92 ]
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %93, %75, %30
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @strip_escapes(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @write_stream(i32*, i64, i64) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
