; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_tileblit.c_fbcon_set_tileops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_tileblit.c_fbcon_set_tileops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_tilemap*)* }
%struct.fb_tilemap = type { i32, i32, i32, i32, i32 }
%struct.fbcon_ops = type { %struct.TYPE_5__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }

@tile_bmove = common dso_local global i32 0, align 4
@tile_clear = common dso_local global i32 0, align 4
@tile_putcs = common dso_local global i32 0, align 4
@tile_clear_margins = common dso_local global i32 0, align 4
@tile_cursor = common dso_local global i32 0, align 4
@tile_update_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcon_set_tileops(%struct.vc_data* %0, %struct.fb_info* %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_tilemap, align 4
  %6 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 1
  %9 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  store %struct.fbcon_ops* %9, %struct.fbcon_ops** %6, align 8
  %10 = load i32, i32* @tile_bmove, align 4
  %11 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %12 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %11, i32 0, i32 6
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @tile_clear, align 4
  %14 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %15 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @tile_putcs, align 4
  %17 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %18 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @tile_clear_margins, align 4
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %21 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @tile_cursor, align 4
  %23 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %24 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @tile_update_start, align 4
  %26 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %27 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %29 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = icmp ne %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %74

32:                                               ; preds = %2
  %33 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %5, i32 0, i32 4
  store i32 %36, i32* %37, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %5, i32 0, i32 3
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %5, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %45 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %32
  %51 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %52 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @FNTCHARCNT(i32 %55)
  br label %58

57:                                               ; preds = %32
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i32 [ %56, %50 ], [ 256, %57 ]
  %60 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %5, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %62 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.fb_tilemap, %struct.fb_tilemap* %5, i32 0, i32 2
  store i32 %65, i32* %66, align 4
  %67 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32 (%struct.fb_info*, %struct.fb_tilemap*)*, i32 (%struct.fb_info*, %struct.fb_tilemap*)** %70, align 8
  %72 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %73 = call i32 %71(%struct.fb_info* %72, %struct.fb_tilemap* %5)
  br label %74

74:                                               ; preds = %58, %2
  ret void
}

declare dso_local i32 @FNTCHARCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
