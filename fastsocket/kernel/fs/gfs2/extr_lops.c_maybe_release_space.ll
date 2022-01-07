; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_maybe_release_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_lops.c_maybe_release_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_bufdata = type { %struct.TYPE_6__*, %struct.gfs2_glock* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.gfs2_glock = type { %struct.TYPE_4__, %struct.gfs2_rgrpd*, %struct.gfs2_sbd* }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_rgrpd = type { i32, i32, i32, i32, %struct.gfs2_bitmap* }
%struct.gfs2_bitmap = type { i64, i64, i32, i32 }
%struct.gfs2_sbd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@GBF_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_bufdata*)* @maybe_release_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maybe_release_space(%struct.gfs2_bufdata* %0) #0 {
  %2 = alloca %struct.gfs2_bufdata*, align 8
  %3 = alloca %struct.gfs2_glock*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrpd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_bitmap*, align 8
  store %struct.gfs2_bufdata* %0, %struct.gfs2_bufdata** %2, align 8
  %8 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %9 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %8, i32 0, i32 1
  %10 = load %struct.gfs2_glock*, %struct.gfs2_glock** %9, align 8
  store %struct.gfs2_glock* %10, %struct.gfs2_glock** %3, align 8
  %11 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %11, i32 0, i32 2
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %12, align 8
  store %struct.gfs2_sbd* %13, %struct.gfs2_sbd** %4, align 8
  %14 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %15 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %14, i32 0, i32 1
  %16 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %15, align 8
  store %struct.gfs2_rgrpd* %16, %struct.gfs2_rgrpd** %5, align 8
  %17 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %18 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gfs2_glock*, %struct.gfs2_glock** %3, align 8
  %23 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub i32 %21, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %28 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %27, i32 0, i32 4
  %29 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %29, i64 %31
  store %struct.gfs2_bitmap* %32, %struct.gfs2_bitmap** %7, align 8
  %33 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %34 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %89

38:                                               ; preds = %1
  %39 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %40 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %38
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %46 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %47 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %50 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %53 = call i32 @gfs2_rgrp_send_discards(%struct.gfs2_sbd* %45, i32 %48, %struct.TYPE_6__* %51, %struct.gfs2_bitmap* %52, i32 1, i32* null)
  br label %54

54:                                               ; preds = %44, %38
  %55 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %56 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %59 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.gfs2_bufdata*, %struct.gfs2_bufdata** %2, align 8
  %63 = getelementptr inbounds %struct.gfs2_bufdata, %struct.gfs2_bufdata* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %68 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  %71 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %72 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @memcpy(i64 %61, i64 %70, i32 %73)
  %75 = load i32, i32* @GBF_FULL, align 4
  %76 = load %struct.gfs2_bitmap*, %struct.gfs2_bitmap** %7, align 8
  %77 = getelementptr inbounds %struct.gfs2_bitmap, %struct.gfs2_bitmap* %76, i32 0, i32 2
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  %79 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %80 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %83 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %85 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %5, align 8
  %88 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %54, %37
  ret void
}

declare dso_local i32 @gfs2_rgrp_send_discards(%struct.gfs2_sbd*, i32, %struct.TYPE_6__*, %struct.gfs2_bitmap*, i32, i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
