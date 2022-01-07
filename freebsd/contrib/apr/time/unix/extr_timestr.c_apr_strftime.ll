; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/time/unix/extr_timestr.c_apr_strftime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/time/unix/extr_timestr.c_apr_strftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apr_strftime(i8* %0, i32* %1, i32 %2, i8* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca %struct.tm, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %12 = call i32 @memset(%struct.tm* %11, i32 0, i32 44)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 10
  store i32 %15, i32* %16, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 8
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 9
  store i32 %19, i32* %20, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 7
  store i32 %27, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 6
  store i32 %31, i32* %32, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 5
  store i32 %35, i32* %36, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 3
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @strftime(i8* %49, i32 %50, i8* %51, %struct.tm* %11)
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @APR_SUCCESS, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
