; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rbm_from_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rbm_from_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }

@E2BIG = common dso_local global i32 0, align 4
@GFS2_NBBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_rbm*, i64)* @gfs2_rbm_from_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_rbm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %9 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %12, %17
  %19 = icmp sge i64 %7, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @E2BIG, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %93

23:                                               ; preds = %2
  %24 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %25 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %30 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %29, i32 0, i32 1
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %33 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %31, %36
  %38 = trunc i64 %37 to i32
  %39 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GFS2_NBBY, align 4
  %50 = mul nsw i32 %48, %49
  %51 = icmp slt i32 %43, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %93

53:                                               ; preds = %23
  %54 = load i32, i32* @GFS2_NBBY, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 0, %55
  %57 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %58 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  %63 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %64 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %67 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %66, i32 0, i32 2
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %65, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %76 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %75, i32 0, i32 2
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %74, %81
  %83 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %84 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %89 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %88, i32 0, i32 1
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = sext i32 %87 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %89, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %53, %52, %20
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
