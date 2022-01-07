; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_font_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_font_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.console_font = type { i32, i32, i32, i32 }

@vga_video_type = common dso_local global i64 0, align 8
@VIDEO_TYPE_EGAM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VGA_FONTWIDTH = common dso_local global i32 0, align 4
@vga_512_chars = common dso_local global i64 0, align 8
@state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, %struct.console_font*)* @vgacon_font_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_font_get(%struct.vc_data* %0, %struct.console_font* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.console_font*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.console_font* %1, %struct.console_font** %5, align 8
  %6 = load i64, i64* @vga_video_type, align 8
  %7 = load i64, i64* @VIDEO_TYPE_EGAM, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %3, align 4
  br label %39

12:                                               ; preds = %2
  %13 = load i32, i32* @VGA_FONTWIDTH, align 4
  %14 = load %struct.console_font*, %struct.console_font** %5, align 8
  %15 = getelementptr inbounds %struct.console_font, %struct.console_font* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %17 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.console_font*, %struct.console_font** %5, align 8
  %21 = getelementptr inbounds %struct.console_font, %struct.console_font* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i64, i64* @vga_512_chars, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 512, i32 256
  %26 = load %struct.console_font*, %struct.console_font** %5, align 8
  %27 = getelementptr inbounds %struct.console_font, %struct.console_font* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.console_font*, %struct.console_font** %5, align 8
  %29 = getelementptr inbounds %struct.console_font, %struct.console_font* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %39

33:                                               ; preds = %12
  %34 = load %struct.console_font*, %struct.console_font** %5, align 8
  %35 = getelementptr inbounds %struct.console_font, %struct.console_font* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* @vga_512_chars, align 8
  %38 = call i32 @vgacon_do_font_op(i32* @state, i32 %36, i32 0, i64 %37)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %33, %32, %9
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @vgacon_do_font_op(i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
