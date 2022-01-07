; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/capsicum-test/extr_waittest.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/capsicum-test/extr_waittest.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"pdfork() failed rc=%d errno=%d %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pdfork()ed child pid=%ld procfd=%d\0A\00", align 1
@WNOHANG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"waitpid(): no completed child found\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"waitpid(): failed errno=%d %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"waitpid(): found completed child %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %5 = call i32 @pdfork(i32* %2, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %0
  %9 = load i32, i32* @stderr, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @errno, align 4
  %12 = load i32, i32* @errno, align 4
  %13 = call i8* @strerror(i32 %12)
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11, i8* %13)
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %0
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 @sleep(i32 1)
  %21 = call i32 @exit(i32 123) #3
  unreachable

22:                                               ; preds = %16
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %25, i32 %26)
  %28 = call i32 @sleep(i32 2)
  %29 = load i32, i32* @WNOHANG, align 4
  %30 = call i64 @waitpid(i32 -1, i32* %3, i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %50

36:                                               ; preds = %22
  %37 = load i64, i64* %4, align 8
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i32, i32* @errno, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %41, i8* %43)
  br label %49

45:                                               ; preds = %36
  %46 = load i32, i32* @stderr, align 4
  %47 = load i64, i64* %4, align 8
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %47)
  br label %49

49:                                               ; preds = %45, %39
  br label %50

50:                                               ; preds = %49, %33
  ret i32 0
}

declare dso_local i32 @pdfork(i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
