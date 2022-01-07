; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_set_ftime.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_file_subs.c_set_ftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64, i8* }
%struct.stat = type { i8*, i8* }

@set_ftime.tv = internal global [2 x %struct.timeval] zeroinitializer, align 16
@patime = common dso_local global i32 0, align 4
@pmtime = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unable to obtain file stats %s\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Access/modification time set failed on: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_ftime(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** getelementptr inbounds ([2 x %struct.timeval], [2 x %struct.timeval]* @set_ftime.tv, i64 0, i64 0, i32 2), align 16
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** getelementptr inbounds ([2 x %struct.timeval], [2 x %struct.timeval]* @set_ftime.tv, i64 0, i64 1, i32 2), align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @patime, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @pmtime, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %17, %14
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @lstat(i8* %21, %struct.stat* %9)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load i32, i32* @patime, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** getelementptr inbounds ([2 x %struct.timeval], [2 x %struct.timeval]* @set_ftime.tv, i64 0, i64 0, i32 2), align 16
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @pmtime, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** getelementptr inbounds ([2 x %struct.timeval], [2 x %struct.timeval]* @set_ftime.tv, i64 0, i64 1, i32 2), align 8
  br label %36

36:                                               ; preds = %33, %30
  br label %41

37:                                               ; preds = %20
  %38 = load i32, i32* @errno, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @syswarn(i32 0, i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %39)
  br label %41

41:                                               ; preds = %37, %36
  br label %42

42:                                               ; preds = %41, %17, %4
  %43 = load i8*, i8** %5, align 8
  %44 = call i64 @lutimes(i8* %43, %struct.timeval* getelementptr inbounds ([2 x %struct.timeval], [2 x %struct.timeval]* @set_ftime.tv, i64 0, i64 0))
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @errno, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @syswarn(i32 1, i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %42
  ret void
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @syswarn(i32, i32, i8*, i8*) #1

declare dso_local i64 @lutimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
