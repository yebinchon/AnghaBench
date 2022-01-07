; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_temporary_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/diff/src/extr_sdiff.c_temporary_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TMPDIR_ENV = common dso_local global i32 0, align 4
@P_tmpdir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s/sdiffXXXXXX\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@tmpname = common dso_local global i8* null, align 8
@SIG_SETMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @temporary_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temporary_file() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = load i32, i32* @TMPDIR_ENV, align 4
  %9 = call i8* @getenv(i32 %8)
  store i8* %9, i8** %1, align 8
  %10 = load i8*, i8** %1, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = load i8*, i8** %1, align 8
  br label %16

14:                                               ; preds = %0
  %15 = load i8*, i8** @P_tmpdir, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8* [ %13, %12 ], [ %15, %14 ]
  store i8* %17, i8** %2, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = call i64 @strlen(i8* %18)
  %20 = add nsw i64 %19, 1
  %21 = add nsw i64 %20, 5
  %22 = add nsw i64 %21, 6
  %23 = add nsw i64 %22, 1
  %24 = call i8* @xmalloc(i64 %23)
  store i8* %24, i8** %3, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = call i32 @sprintf(i8* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = call i32 @sigemptyset(i32* %7)
  %29 = load i32, i32* @SIGINT, align 4
  %30 = call i32 @sigaddset(i32* %7, i32 %29)
  %31 = load i32, i32* @SIG_BLOCK, align 4
  %32 = call i32 @sigprocmask(i32 %31, i32* %7, i32* %6)
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @mkstemp(i8* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 0, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %16
  %39 = load i8*, i8** %3, align 8
  store i8* %39, i8** @tmpname, align 8
  br label %40

40:                                               ; preds = %38, %16
  %41 = load i32, i32* @SIG_SETMASK, align 4
  %42 = call i32 @sigprocmask(i32 %41, i32* %6, i32* null)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* @errno, align 4
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i8* @getenv(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @mkstemp(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
