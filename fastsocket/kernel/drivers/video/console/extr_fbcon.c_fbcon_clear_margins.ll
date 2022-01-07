; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_clear_margins.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_clear_margins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.vc_data*, %struct.fb_info.0*, i32)* }
%struct.vc_data = type { i64 }
%struct.fb_info.0 = type opaque

@registered_fb = common dso_local global %struct.fb_info** null, align 8
@con2fb_map = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @fbcon_clear_margins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_clear_margins(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fbcon_ops*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.fb_info**, %struct.fb_info*** @registered_fb, align 8
  %8 = load i64*, i64** @con2fb_map, align 8
  %9 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %7, i64 %13
  %15 = load %struct.fb_info*, %struct.fb_info** %14, align 8
  store %struct.fb_info* %15, %struct.fb_info** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 0
  %18 = load %struct.fbcon_ops*, %struct.fbcon_ops** %17, align 8
  store %struct.fbcon_ops* %18, %struct.fbcon_ops** %6, align 8
  %19 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %21 = call i32 @fbcon_is_inactive(%struct.vc_data* %19, %struct.fb_info* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %2
  %24 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  %25 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %24, i32 0, i32 0
  %26 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32)** %25, align 8
  %27 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %29 = bitcast %struct.fb_info* %28 to %struct.fb_info.0*
  %30 = load i32, i32* %4, align 4
  %31 = call i32 %26(%struct.vc_data* %27, %struct.fb_info.0* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @fbcon_is_inactive(%struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
