; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_hesiod.c_hesiod_isup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_hesiod.c_hesiod_isup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hesiod_isup.last_status = internal global i32 1, align 4
@.str = private unnamed_addr constant [10 x i8] c"/defaults\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"hesiod_isup(%s): %s\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"hesiod_isup: error getting `/defaults' entry in map %s: %m\00", align 1
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"hesiod_isup: Hesiod came back up for map %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hesiod_isup(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @hesiod_search(i32* %9, i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %7, i32* %8)
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @strerror(i32 %13)
  %15 = call i32 @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %12, i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ENOENT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @XLOG_ERROR, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @plog(i32 %23, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  store i32 0, i32* @hesiod_isup.last_status, align 4
  store i32 0, i32* %3, align 4
  br label %34

26:                                               ; preds = %18, %2
  %27 = load i32, i32* @hesiod_isup.last_status, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @XLOG_INFO, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @plog(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  store i32 1, i32* @hesiod_isup.last_status, align 4
  br label %33

33:                                               ; preds = %29, %26
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @hesiod_search(i32*, i8*, i8*, i8**, i32*) #1

declare dso_local i32 @dlog(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
