; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_start_gzip.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ar_io.c_ar_start_gzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"could not pipe\00", align 1
@zpid = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"could not fork\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-dc\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"could not exec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar_start_gzip(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %10 = call i64 @pipe(i32* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = call i64 (...) @fork()
  store i64 %15, i64* @zpid, align 8
  %16 = load i64, i64* @zpid, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %14
  %21 = load i64, i64* @zpid, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dup2(i32 %28, i32 %29)
  br label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @dup2(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @close(i32 %41)
  br label %77

43:                                               ; preds = %20
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @STDIN_FILENO, align 4
  %50 = call i32 @dup2(i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @STDOUT_FILENO, align 4
  %53 = call i32 @dup2(i32 %51, i32 %52)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %62

54:                                               ; preds = %43
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @STDOUT_FILENO, align 4
  %58 = call i32 @dup2(i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @STDIN_FILENO, align 4
  %61 = call i32 @dup2(i32 %59, i32 %60)
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @close(i32 %67)
  %69 = load i8*, i8** %5, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @execlp(i8* %69, i8* %70, i8* %71, i8* null)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %62
  br label %77

77:                                               ; preds = %76, %36
  ret void
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @execlp(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
