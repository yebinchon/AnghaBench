; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_setinputfd.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_input.c_setinputfd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@BUFSIZ = common dso_local global i64 0, align 8
@parsefile = common dso_local global %struct.TYPE_2__* null, align 8
@parsenleft = common dso_local global i64 0, align 8
@parselleft = common dso_local global i64 0, align 8
@plinno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setinputfd(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = call i32 (...) @pushfile()
  %9 = load i64, i64* @BUFSIZ, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i8* @ckmalloc(i64 %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  br label %15

15:                                               ; preds = %7, %2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @close(i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load i64, i64* @BUFSIZ, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i8* @ckmalloc(i64 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @parsefile, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %25
  store i64 0, i64* @parsenleft, align 8
  store i64 0, i64* @parselleft, align 8
  store i32 1, i32* @plinno, align 4
  ret void
}

declare dso_local i32 @pushfile(...) #1

declare dso_local i8* @ckmalloc(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
