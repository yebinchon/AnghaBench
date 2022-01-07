; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rlist_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rlist_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_rgrp_list = type { i32, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rlist_alloc(%struct.gfs2_rgrp_list* %0, i32 %1) #0 {
  %3 = alloca %struct.gfs2_rgrp_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gfs2_rgrp_list* %0, %struct.gfs2_rgrp_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %3, align 8
  %7 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_NOFS, align 4
  %10 = load i32, i32* @__GFP_NOFAIL, align 4
  %11 = or i32 %9, %10
  %12 = call i32* @kcalloc(i32 %8, i32 4, i32 %11)
  %13 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %3, align 8
  %14 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %39, %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %3, align 8
  %18 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.gfs2_rgrp_list*, %struct.gfs2_rgrp_list** %3, align 8
  %33 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @gfs2_holder_init(i32 %30, i32 %31, i32 0, i32* %37)
  br label %39

39:                                               ; preds = %21
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %15

42:                                               ; preds = %15
  ret void
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @gfs2_holder_init(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
