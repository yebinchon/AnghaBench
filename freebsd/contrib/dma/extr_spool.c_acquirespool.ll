; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_acquirespool.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dma/extr_spool.c_acquirespool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qitem = type { i32*, i32, i32*, i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"could not acquire queue file: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acquirespool(%struct.qitem* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qitem*, align 8
  %4 = alloca i32, align 4
  store %struct.qitem* %0, %struct.qitem** %3, align 8
  %5 = load %struct.qitem*, %struct.qitem** %3, align 8
  %6 = getelementptr inbounds %struct.qitem, %struct.qitem* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.qitem*, %struct.qitem** %3, align 8
  %11 = getelementptr inbounds %struct.qitem, %struct.qitem* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @O_RDWR, align 4
  %14 = load i32, i32* @O_NONBLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @open_locked(i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %9
  br label %50

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = call i32* @fdopen(i32 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.qitem*, %struct.qitem** %3, align 8
  %24 = getelementptr inbounds %struct.qitem, %struct.qitem* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.qitem*, %struct.qitem** %3, align 8
  %26 = getelementptr inbounds %struct.qitem, %struct.qitem* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %50

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.qitem*, %struct.qitem** %3, align 8
  %33 = getelementptr inbounds %struct.qitem, %struct.qitem* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.qitem*, %struct.qitem** %3, align 8
  %38 = getelementptr inbounds %struct.qitem, %struct.qitem* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32* @fopen(i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.qitem*, %struct.qitem** %3, align 8
  %42 = getelementptr inbounds %struct.qitem, %struct.qitem* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = load %struct.qitem*, %struct.qitem** %3, align 8
  %44 = getelementptr inbounds %struct.qitem, %struct.qitem* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %50

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %31
  store i32 0, i32* %2, align 4
  br label %58

50:                                               ; preds = %47, %29, %19
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @EWOULDBLOCK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @LOG_INFO, align 4
  %57 = call i32 @syslog(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %54, %49
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @open_locked(i32, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
