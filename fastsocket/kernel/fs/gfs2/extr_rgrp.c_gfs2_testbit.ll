; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_testbit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_testbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@GFS2_NBBY = common dso_local global i32 0, align 4
@GFS2_BIT_SIZE = common dso_local global i32 0, align 4
@GFS2_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*)* @gfs2_testbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_testbit(%struct.gfs2_rbm* %0) #0 {
  %2 = alloca %struct.gfs2_rbm*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %2, align 8
  %6 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %7 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %12, i64 %18
  store i32* %19, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %22 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFS2_NBBY, align 4
  %25 = sdiv i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  store i32* %27, i32** %4, align 8
  %28 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %2, align 8
  %29 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @GFS2_NBBY, align 4
  %32 = srem i32 %30, %31
  %33 = load i32, i32* @GFS2_BIT_SIZE, align 4
  %34 = mul nsw i32 %32, %33
  store i32 %34, i32* %5, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = lshr i32 %36, %37
  %39 = load i32, i32* @GFS2_BIT_MASK, align 4
  %40 = and i32 %38, %39
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
