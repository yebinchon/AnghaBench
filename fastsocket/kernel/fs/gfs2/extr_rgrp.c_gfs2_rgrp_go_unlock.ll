; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rgrp_go_unlock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_rgrp.c_gfs2_rgrp_go_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_holder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i32, %struct.gfs2_bitmap* }
%struct.gfs2_bitmap = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_rgrp_go_unlock(%struct.gfs2_holder* %0) #0 {
  %2 = alloca %struct.gfs2_holder*, align 8
  %3 = alloca %struct.gfs2_rgrpd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_bitmap*, align 8
  store %struct.gfs2_holder* %0, %struct.gfs2_holder** %2, align 8
  %7 = load %struct.gfs2_holder*, %struct.gfs2_holder** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %10, align 8
  store %struct.gfs2_rgrpd* %11, %struct.gfs2_rgrpd** %3, align 8
  %12 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %13 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %38, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %3, align 8
  %21 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %20, i32 0, i32 1
  %22 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %22, i64 %24
  store %struct.gfs2_bitmap* %25, %struct.gfs2_bitmap** %6, align 8
  %26 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %6, align 8
  %27 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %19
  %31 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %6, align 8
  %32 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @brelse(i32* %33)
  %35 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %6, align 8
  %36 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %30, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %15

41:                                               ; preds = %15
  ret void
}

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
