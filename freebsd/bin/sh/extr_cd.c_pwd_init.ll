; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_cd.c_pwd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_cd.c_pwd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@curdir = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"sh: cannot determine working directory\0A\00", align 1
@VEXPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwd_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.stat, align 8
  store i32 %0, i32* %2, align 4
  %6 = call i8* @lookupvar(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %42

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 47
  br i1 %13, label %14, label %42

14:                                               ; preds = %9
  %15 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %4)
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @stat(i8* %18, %struct.stat* %5)
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %23, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i64, i64* @curdir, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @curdir, align 8
  %38 = call i32 @ckfree(i64 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @savestr(i8* %40)
  store i64 %41, i64* @curdir, align 8
  br label %42

42:                                               ; preds = %39, %27, %21, %17, %14, %9, %1
  %43 = call i32* (...) @getpwd()
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @out2fmt_flush(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45, %42
  %51 = load i64, i64* @curdir, align 8
  %52 = load i32, i32* @VEXPORT, align 4
  %53 = call i32 @setvar(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %51, i32 %52)
  ret void
}

declare dso_local i8* @lookupvar(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @ckfree(i64) #1

declare dso_local i64 @savestr(i8*) #1

declare dso_local i32* @getpwd(...) #1

declare dso_local i32 @out2fmt_flush(i8*) #1

declare dso_local i32 @setvar(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
