; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_xrealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_xutil.c_xrealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@D_MEM = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Reallocated size %d; block %p\00", align 1
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Out of memory in realloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xrealloc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @D_MEM, align 4
  %6 = call i64 @amuDebug(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @XLOG_DEBUG, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 (i32, i8*, ...) @plog(i32 %9, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  br label %13

13:                                               ; preds = %8, %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @realloc(i64 %21, i32 %22)
  store i64 %23, i64* %3, align 8
  br label %27

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @xmalloc(i32 %25)
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i64, i64* %3, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @XLOG_FATAL, align 4
  %32 = call i32 (i32, i8*, ...) @plog(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @going_down(i32 1)
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %27
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @amuDebug(i32) #1

declare dso_local i32 @plog(i32, i8*, ...) #1

declare dso_local i64 @realloc(i64, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @going_down(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
