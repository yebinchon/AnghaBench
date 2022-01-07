; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_exp_provide.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_exp_provide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i32, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@etree_provide = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @exp_provide(i8* %0, %struct.TYPE_11__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call %struct.TYPE_11__* @stat_alloc(i32 40)
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i8 61, i8* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  store i32 %16, i32* %20, align 8
  %21 = load i32, i32* @etree_provide, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %29, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  ret %struct.TYPE_11__* %38
}

declare dso_local %struct.TYPE_11__* @stat_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
