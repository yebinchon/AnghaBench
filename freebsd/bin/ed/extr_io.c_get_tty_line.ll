; ModuleID = '/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_get_tty_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/ed/extr_io.c_get_tty_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ibuf = common dso_local global i8* null, align 8
@ibufsz = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@isbinary = common dso_local global i32 0, align 4
@lineno = common dso_local global i32 0, align 4
@ibufp = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stdin: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"cannot read stdin\00", align 1
@errmsg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_tty_line() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %54, %26, %0
  %6 = call i32 (...) @getchar()
  store i32 %6, i32* %4, align 4
  switch i32 %6, label %7 [
    i32 128, label %36
  ]

7:                                                ; preds = %5
  store i32 0, i32* %2, align 4
  %8 = load i8*, i8** @ibuf, align 8
  %9 = load i32, i32* @ibufsz, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, 2
  %12 = load i32, i32* @ERR, align 4
  %13 = call i32 @REALLOC(i8* %8, i32 %9, i32 %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** @ibuf, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %16, i64 %19
  store i8 %15, i8* %20, align 1
  %21 = icmp ne i8 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  store i32 1, i32* @isbinary, align 4
  br label %23

23:                                               ; preds = %22, %7
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %5

27:                                               ; preds = %23
  %28 = load i32, i32* @lineno, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @lineno, align 4
  %30 = load i8*, i8** @ibuf, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** @ibuf, align 8
  store i8* %34, i8** @ibufp, align 8
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %1, align 4
  br label %68

36:                                               ; preds = %5
  %37 = load i32, i32* @stdin, align 4
  %38 = call i32 @ferror(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i8* @strerror(i32 %42)
  %44 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** @errmsg, align 8
  %45 = load i32, i32* @stdin, align 4
  %46 = call i32 @clearerr(i32 %45)
  store i8* null, i8** @ibufp, align 8
  %47 = load i32, i32* @ERR, align 4
  store i32 %47, i32* %1, align 4
  br label %68

48:                                               ; preds = %36
  %49 = load i32, i32* @stdin, align 4
  %50 = call i32 @clearerr(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %2, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %2, align 4
  br label %5

56:                                               ; preds = %48
  %57 = load i32, i32* %3, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** @ibuf, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  store i8 0, i8* %63, align 1
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** @ibuf, align 8
  store i8* %66, i8** @ibufp, align 8
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %1, align 4
  br label %68

68:                                               ; preds = %65, %40, %27
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @REALLOC(i8*, i32, i32, i32) #1

declare dso_local i32 @ferror(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @clearerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
