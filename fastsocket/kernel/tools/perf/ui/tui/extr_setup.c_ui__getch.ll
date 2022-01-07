; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_setup.c_ui__getch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/ui/tui/extr_setup.c_ui__getch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@K_TIMER = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@K_RESIZE = common dso_local global i32 0, align 4
@K_ERROR = common dso_local global i32 0, align 4
@K_ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui__getch(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.timeval*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %11
  %14 = phi %struct.timeval* [ %4, %11 ], [ null, %12 ]
  store %struct.timeval* %14, %struct.timeval** %5, align 8
  %15 = call i32 (...) @ui__setup_sigwinch()
  %16 = call i32 @FD_ZERO(i32* %6)
  %17 = call i32 @FD_SET(i32 0, i32* %6)
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load %struct.timeval*, %struct.timeval** %5, align 8
  %26 = call i32 @select(i32 1, i32* %6, i32* null, i32* null, %struct.timeval* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @K_TIMER, align 4
  store i32 %30, i32* %2, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @EINTR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @K_RESIZE, align 4
  store i32 %39, i32* %2, align 4
  br label %63

40:                                               ; preds = %34
  %41 = load i32, i32* @K_ERROR, align 4
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %31
  %43 = call i32 (...) @SLang_getkey()
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @K_ESC, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %63

49:                                               ; preds = %42
  %50 = call i32 @FD_ZERO(i32* %6)
  %51 = call i32 @FD_SET(i32 0, i32* %6)
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i32 20, i32* %53, align 4
  %54 = call i32 @select(i32 1, i32* %6, i32* null, i32* null, %struct.timeval* %4)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @K_ESC, align 4
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %49
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @SLang_ungetkey(i32 %60)
  %62 = call i32 (...) @SLkp_getkey()
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %57, %47, %40, %38, %29
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ui__setup_sigwinch(...) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @SLang_getkey(...) #1

declare dso_local i32 @SLang_ungetkey(i32) #1

declare dso_local i32 @SLkp_getkey(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
