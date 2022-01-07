; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ywrap_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_ywrap_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.fb_info.0*)*, %struct.TYPE_4__ }
%struct.fb_info.0 = type opaque
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.display = type { i32, i32 }
%struct.vc_data = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@fb_display = common dso_local global %struct.display* null, align 8
@FB_VMODE_YWRAP = common dso_local global i32 0, align 4
@scrollback_max = common dso_local global i64 0, align 8
@scrollback_phys_max = common dso_local global i64 0, align 8
@scrollback_current = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @ywrap_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ywrap_up(%struct.vc_data* %0, i32 %1) #0 {
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
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.display*, %struct.display** %7, align 8
  %31 = getelementptr inbounds %struct.display, %struct.display* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.display*, %struct.display** %7, align 8
  %34 = getelementptr inbounds %struct.display, %struct.display* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %2
  %38 = load %struct.display*, %struct.display** %7, align 8
  %39 = getelementptr inbounds %struct.display, %struct.display* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.display*, %struct.display** %7, align 8
  %42 = getelementptr inbounds %struct.display, %struct.display* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37, %2
  %46 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %47 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.display*, %struct.display** %7, align 8
  %50 = getelementptr inbounds %struct.display, %struct.display* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %51, %55
  %57 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %58 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load i32, i32* @FB_VMODE_YWRAP, align 4
  %61 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %62 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  %66 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %67 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.fb_info.0*)*, i32 (%struct.fb_info.0*)** %67, align 8
  %69 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %70 = bitcast %struct.fb_info* %69 to %struct.fb_info.0*
  %71 = call i32 %68(%struct.fb_info.0* %70)
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @scrollback_max, align 8
  %75 = add nsw i64 %74, %73
  store i64 %75, i64* @scrollback_max, align 8
  %76 = load i64, i64* @scrollback_max, align 8
  %77 = load i64, i64* @scrollback_phys_max, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %45
  %80 = load i64, i64* @scrollback_phys_max, align 8
  store i64 %80, i64* @scrollback_max, align 8
  br label %81

81:                                               ; preds = %79, %45
  store i64 0, i64* @scrollback_current, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
