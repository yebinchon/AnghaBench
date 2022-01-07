; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_mkdirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_mkdirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mkdir(%s)\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mkdirs(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = call i8* @xstrdup(i8* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = call i8* @strchr(i8* %14, i8 signext 47)
  store i8* %15, i8** %6, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i8*, i8** %6, align 8
  store i8 0, i8* %18, align 1
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @mkdir(i8* %19, i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %8, align 4
  br label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @dlog(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %23
  %29 = load i8*, i8** %6, align 8
  store i8 47, i8* %29, align 1
  br label %12

30:                                               ; preds = %12
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @mkdir(i8* %31, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @errno, align 4
  store i32 %36, i32* %8, align 4
  br label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @dlog(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i8*, i8** %5, align 8
  %42 = call i32 @XFREE(i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = call i64 @stat(i8* %43, %struct.stat* %7)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @S_IFMT, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @S_IFDIR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  br label %56

54:                                               ; preds = %46, %40
  %55 = load i32, i32* %8, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = phi i32 [ 0, %53 ], [ %55, %54 ]
  ret i32 %57
}

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i32 @dlog(i8*, i8*) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
