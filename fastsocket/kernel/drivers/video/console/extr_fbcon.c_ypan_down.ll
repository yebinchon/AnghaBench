; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ypan_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ypan_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_4__, i32 (%struct.vc_data*, %struct.fb_info.1*, i32, i32, i64, i32, i64, i32)* }
%struct.fb_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.vc_data = type { i64, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fb_info.1 = type opaque
%struct.display = type { i32, i64 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @ypan_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ypan_down(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.display*, align 8
  %7 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %9 = load i64*, i64** @con2fb_map, align 8
  %10 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %9, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %8, i64 %14
  %16 = load %struct.fb_info*, %struct.fb_info** %15, align 8
  store %struct.fb_info* %16, %struct.fb_info** %5, align 8
  %17 = load %struct.display*, %struct.display** @fb_display, align 8
  %18 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.display, %struct.display* %17, i64 %20
  store %struct.display* %21, %struct.display** %6, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 0
  %24 = load %struct.fbcon_ops*, %struct.fbcon_ops** %23, align 8
  store %struct.fbcon_ops* %24, %struct.fbcon_ops** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.display*, %struct.display** %6, align 8
  %27 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.display*, %struct.display** %6, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %2
  %35 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %36 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %35, i32 0, i32 2
  %37 = load i32 (%struct.vc_data*, %struct.fb_info.1*, i32, i32, i64, i32, i64, i32)*, i32 (%struct.vc_data*, %struct.fb_info.1*, i32, i32, i64, i32, i64, i32)** %36, align 8
  %38 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = bitcast %struct.fb_info* %39 to %struct.fb_info.1*
  %41 = load %struct.display*, %struct.display** %6, align 8
  %42 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %45 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %49 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %37(%struct.vc_data* %38, %struct.fb_info.1* %40, i32 0, i32 0, i64 %47, i32 0, i64 %50, i32 %53)
  %55 = load %struct.display*, %struct.display** %6, align 8
  %56 = getelementptr inbounds %struct.display, %struct.display* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = load %struct.display*, %struct.display** %6, align 8
  %63 = getelementptr inbounds %struct.display, %struct.display* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  br label %68

68:                                               ; preds = %34, %2
  %69 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %70 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.display*, %struct.display** %6, align 8
  %73 = getelementptr inbounds %struct.display, %struct.display* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %76 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %74, %78
  %80 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %81 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %86 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load %struct.fbcon_ops*, %struct.fbcon_ops** %7, align 8
  %91 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %90, i32 0, i32 0
  %92 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %91, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %94 = bitcast %struct.fb_info* %93 to %struct.fb_info.0*
  %95 = call i32 %92(%struct.fb_info.0* %94)
  %96 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %97 = call i32 @fbcon_clear_margins(%struct.vc_data* %96, i32 1)
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* @scrollback_max, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* @scrollback_max, align 8
  %102 = load i64, i64* @scrollback_max, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %68
  store i64 0, i64* @scrollback_max, align 8
  br label %105

105:                                              ; preds = %104, %68
  store i64 0, i64* @scrollback_current, align 8
  ret void
}

declare dso_local i32 @fbcon_clear_margins(%struct.vc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
