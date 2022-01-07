; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rescoff.c_coff_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bindata_build = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32*, %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bindata_build*, i32)* @coff_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @coff_alloc(%struct.bindata_build* %0, i32 %1) #0 {
  %3 = alloca %struct.bindata_build*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.bindata_build* %0, %struct.bindata_build** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i64 @reswr_alloc(i32 24)
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %5, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %9, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @reswr_alloc(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.bindata_build*, %struct.bindata_build** %3, align 8
  %19 = getelementptr inbounds %struct.bindata_build, %struct.bindata_build* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp eq %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %24 = load %struct.bindata_build*, %struct.bindata_build** %3, align 8
  %25 = getelementptr inbounds %struct.bindata_build, %struct.bindata_build* %24, i32 0, i32 2
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %28 = load %struct.bindata_build*, %struct.bindata_build** %3, align 8
  %29 = getelementptr inbounds %struct.bindata_build, %struct.bindata_build* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %31, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %34 = load %struct.bindata_build*, %struct.bindata_build** %3, align 8
  %35 = getelementptr inbounds %struct.bindata_build, %struct.bindata_build* %34, i32 0, i32 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.bindata_build*, %struct.bindata_build** %3, align 8
  %38 = getelementptr inbounds %struct.bindata_build, %struct.bindata_build* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  ret i32* %43
}

declare dso_local i64 @reswr_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
