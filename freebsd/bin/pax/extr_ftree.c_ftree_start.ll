; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_ftree_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_ftree.c_ftree_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FTS_NOCHDIR = common dso_local global i32 0, align 4
@ftsopts = common dso_local global i32 0, align 4
@Lflag = common dso_local global i64 0, align 8
@FTS_LOGICAL = common dso_local global i32 0, align 4
@FTS_PHYSICAL = common dso_local global i32 0, align 4
@Hflag = common dso_local global i64 0, align 8
@FTS_COMFOLLOW = common dso_local global i32 0, align 4
@Xflag = common dso_local global i64 0, align 8
@FTS_XDEV = common dso_local global i32 0, align 4
@fthead = common dso_local global i32* null, align 8
@PAXPATHLEN = common dso_local global i64 0, align 8
@farray = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unable to allocate memory for file name buffer\00", align 1
@tflag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftree_start() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @FTS_NOCHDIR, align 4
  store i32 %2, i32* @ftsopts, align 4
  %3 = load i64, i64* @Lflag, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @FTS_LOGICAL, align 4
  %7 = load i32, i32* @ftsopts, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* @ftsopts, align 4
  br label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @FTS_PHYSICAL, align 4
  %11 = load i32, i32* @ftsopts, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* @ftsopts, align 4
  br label %13

13:                                               ; preds = %9, %5
  %14 = load i64, i64* @Hflag, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @FTS_COMFOLLOW, align 4
  %18 = load i32, i32* @ftsopts, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* @ftsopts, align 4
  br label %20

20:                                               ; preds = %16, %13
  %21 = load i64, i64* @Xflag, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @FTS_XDEV, align 4
  %25 = load i32, i32* @ftsopts, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @ftsopts, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32*, i32** @fthead, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i64, i64* @PAXPATHLEN, align 8
  %32 = add nsw i64 %31, 2
  %33 = call i32* @malloc(i64 %32)
  %34 = load i32**, i32*** @farray, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 0
  store i32* %33, i32** %35, align 8
  %36 = icmp eq i32* %33, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @paxwarn(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %51

39:                                               ; preds = %30, %27
  %40 = call i64 (...) @ftree_arg()
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 -1, i32* %1, align 4
  br label %51

43:                                               ; preds = %39
  %44 = load i64, i64* @tflag, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = call i64 (...) @atdir_start()
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %1, align 4
  br label %51

50:                                               ; preds = %46, %43
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %50, %49, %42, %37
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @paxwarn(i32, i8*) #1

declare dso_local i64 @ftree_arg(...) #1

declare dso_local i64 @atdir_start(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
