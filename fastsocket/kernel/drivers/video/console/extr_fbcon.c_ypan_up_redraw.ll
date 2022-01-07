; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ypan_up_redraw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ypan_up_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_4__ }
%struct.fb_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.display = type { i32, i32 }
%struct.vc_data = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_phys_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32, i32)* @ypan_up_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypan_up_redraw(%struct.vc_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca %struct.fbcon_ops*, align 8
  %9 = alloca %struct.display*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %11 = load i64*, i64** @con2fb_map, align 8
  %12 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %10, i64 %16
  %18 = load %struct.fb_info*, %struct.fb_info** %17, align 8
  store %struct.fb_info* %18, %struct.fb_info** %7, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = load %struct.fbcon_ops*, %struct.fbcon_ops** %20, align 8
  store %struct.fbcon_ops* %21, %struct.fbcon_ops** %8, align 8
  %22 = load %struct.display*, %struct.display** @fb_display, align 8
  %23 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.display, %struct.display* %22, i64 %25
  store %struct.display* %26, %struct.display** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.display*, %struct.display** %9, align 8
  %29 = getelementptr inbounds %struct.display, %struct.display* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.display*, %struct.display** %9, align 8
  %33 = getelementptr inbounds %struct.display, %struct.display* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.display*, %struct.display** %9, align 8
  %36 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %37, %40
  %42 = icmp sgt i32 %34, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %3
  %44 = load %struct.display*, %struct.display** %9, align 8
  %45 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = load %struct.display*, %struct.display** %9, align 8
  %52 = getelementptr inbounds %struct.display, %struct.display* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %56 = load %struct.display*, %struct.display** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @fbcon_redraw_move(%struct.vc_data* %55, %struct.display* %56, i32 %59, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %43, %3
  %68 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %69 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.display*, %struct.display** %9, align 8
  %72 = getelementptr inbounds %struct.display, %struct.display* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %75 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %73, %77
  %79 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %80 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %85 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %83
  store i32 %88, i32* %86, align 4
  %89 = load %struct.fbcon_ops*, %struct.fbcon_ops** %8, align 8
  %90 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %89, i32 0, i32 0
  %91 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %90, align 8
  %92 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %93 = bitcast %struct.fb_info* %92 to %struct.fb_info.0*
  %94 = call i32 %91(%struct.fb_info.0* %93)
  %95 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %96 = call i32 @fbcon_clear_margins(%struct.vc_data* %95, i32 1)
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64, i64* @scrollback_max, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* @scrollback_max, align 8
  %101 = load i64, i64* @scrollback_max, align 8
  %102 = load i64, i64* @scrollback_phys_max, align 8
  %103 = icmp sgt i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %67
  %105 = load i64, i64* @scrollback_phys_max, align 8
  store i64 %105, i64* @scrollback_max, align 8
  br label %106

106:                                              ; preds = %104, %67
  store i64 0, i64* @scrollback_current, align 8
  ret void
}

declare dso_local i32 @fbcon_redraw_move(%struct.vc_data*, %struct.display*, i32, i32, i32) #1

declare dso_local i32 @fbcon_clear_margins(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
