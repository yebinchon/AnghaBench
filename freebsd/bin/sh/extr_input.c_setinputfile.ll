; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_setinputfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_setinputfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTOFF = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot open %s: %s\00", align 1
@F_DUPFD_CLOEXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Out of file descriptors\00", align 1
@INTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setinputfile(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @INTOFF, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = load i32, i32* @O_CLOEXEC, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @open(i8* %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32, i32* @errno, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENOTDIR, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %15
  %25 = phi i1 [ true, %15 ], [ %23, %20 ]
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 127, i32 126
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @strerror(i32 %29)
  %31 = call i32 @errorwithstatus(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  br label %32

32:                                               ; preds = %24, %2
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 10
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @F_DUPFD_CLOEXEC, align 4
  %38 = call i32 @fcntl(i32 %36, i32 %37, i32 10)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @close(i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %35
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @setinputfd(i32 %48, i32 %49)
  %51 = load i32, i32* @INTON, align 4
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @errorwithstatus(i32, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @setinputfd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
