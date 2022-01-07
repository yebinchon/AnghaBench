; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_alloc_extent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_alloc_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rbm = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFS2_BLKST_DINODE = common dso_local global i32 0, align 4
@GFS2_BLKST_USED = common dso_local global i32 0, align 4
@GFS2_BLKST_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_rbm*, i32, i32*)* @gfs2_alloc_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_alloc_extent(%struct.gfs2_rbm* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.gfs2_rbm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gfs2_rbm, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gfs2_rbm* %0, %struct.gfs2_rbm** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %7, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %11, align 8
  %12 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %7, i32 0, i32 1
  %13 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %20 = call i32 @gfs2_rbm_to_block(%struct.gfs2_rbm* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %22 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gfs2_trans_add_meta(i32 %25, i32 %30)
  %32 = load %struct.gfs2_rbm*, %struct.gfs2_rbm** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @GFS2_BLKST_DINODE, align 4
  br label %39

37:                                               ; preds = %3
  %38 = load i32, i32* @GFS2_BLKST_USED, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = call i32 @gfs2_setbit(%struct.gfs2_rbm* %32, i32 1, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %39
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @gfs2_rbm_from_block(%struct.gfs2_rbm* %7, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = call i64 @gfs2_testbit(%struct.gfs2_rbm* %7)
  %56 = load i64, i64* @GFS2_BLKST_FREE, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %49
  br label %76

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %7, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.gfs2_rbm, %struct.gfs2_rbm* %7, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gfs2_trans_add_meta(i32 %63, i32 %67)
  %69 = load i32, i32* @GFS2_BLKST_USED, align 4
  %70 = call i32 @gfs2_setbit(%struct.gfs2_rbm* %7, i32 1, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %44

76:                                               ; preds = %58, %44
  ret void
}

declare dso_local i32 @gfs2_rbm_to_block(%struct.gfs2_rbm*) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, i32) #1

declare dso_local i32 @gfs2_setbit(%struct.gfs2_rbm*, i32, i32) #1

declare dso_local i32 @gfs2_rbm_from_block(%struct.gfs2_rbm*, i32) #1

declare dso_local i64 @gfs2_testbit(%struct.gfs2_rbm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
