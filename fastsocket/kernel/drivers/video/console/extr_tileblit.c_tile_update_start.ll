; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_tileblit.c_tile_update_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_tileblit.c_tile_update_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, %struct.fbcon_ops* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fbcon_ops = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @tile_update_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tile_update_start(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.fbcon_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 1
  %7 = load %struct.fbcon_ops*, %struct.fbcon_ops** %6, align 8
  store %struct.fbcon_ops* %7, %struct.fbcon_ops** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %10 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %9, i32 0, i32 0
  %11 = call i32 @fb_pan_display(%struct.fb_info* %8, %struct.TYPE_4__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %17 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %24 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fbcon_ops*, %struct.fbcon_ops** %3, align 8
  %31 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @fb_pan_display(%struct.fb_info*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
