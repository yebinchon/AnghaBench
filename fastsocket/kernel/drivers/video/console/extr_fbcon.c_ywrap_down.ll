; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ywrap_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ywrap_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_4__ }
%struct.fb_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.display = type { i32, i64 }
%struct.vc_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @ywrap_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ywrap_down(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  %7 = alloca %struct.display*, align 8
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
  %17 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 0
  %19 = load %struct.fbcon_ops*, %struct.fbcon_ops** %18, align 8
  store %struct.fbcon_ops* %19, %struct.fbcon_ops** %6, align 8
  %20 = load %struct.display*, %struct.display** @fb_display, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.display, %struct.display* %20, i64 %23
  store %struct.display* %24, %struct.display** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.display*, %struct.display** %7, align 8
  %27 = getelementptr inbounds %struct.display, %struct.display* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.display*, %struct.display** %7, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %2
  %35 = load %struct.display*, %struct.display** %7, align 8
  %36 = getelementptr inbounds %struct.display, %struct.display* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.display*, %struct.display** %7, align 8
  %39 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 8
  br label %44

44:                                               ; preds = %34, %2
  %45 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %46 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.display*, %struct.display** %7, align 8
  %49 = getelementptr inbounds %struct.display, %struct.display* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %50, %54
  %56 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %57 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %60 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %61 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  %65 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %66 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %65, i32 0, i32 0
  %67 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %66, align 8
  %68 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %69 = bitcast %struct.fb_info* %68 to %struct.fb_info.0*
  %70 = call i32 %67(%struct.fb_info.0* %69)
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @scrollback_max, align 8
  %74 = sub nsw i64 %73, %72
  store i64 %74, i64* @scrollback_max, align 8
  %75 = load i64, i64* @scrollback_max, align 8
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %44
  store i64 0, i64* @scrollback_max, align 8
  br label %78

78:                                               ; preds = %77, %44
  store i64 0, i64* @scrollback_current, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
