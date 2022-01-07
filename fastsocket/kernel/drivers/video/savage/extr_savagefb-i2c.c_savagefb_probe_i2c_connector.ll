; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb-i2c.c_savagefb_probe_i2c_connector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb-i2c.c_savagefb_probe_i2c_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.savagefb_par* }
%struct.savagefb_par = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @savagefb_probe_i2c_connector(%struct.fb_info* %0, i32** %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.savagefb_par*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32** %1, i32*** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.savagefb_par*, %struct.savagefb_par** %9, align 8
  store %struct.savagefb_par* %10, %struct.savagefb_par** %5, align 8
  %11 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %12 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  %18 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32* @fb_ddc_read(i32* %19)
  store i32* %20, i32** %6, align 8
  br label %22

21:                                               ; preds = %2
  store i32* null, i32** %6, align 8
  br label %22

22:                                               ; preds = %21, %16
  %23 = load i32*, i32** %6, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %22
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32* @fb_firmware_edid(i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @EDID_LENGTH, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kmemdup(i32* %33, i32 %34, i32 %35)
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32*, i32** %6, align 8
  %40 = load i32**, i32*** %4, align 8
  store i32* %39, i32** %40, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 1
  ret i32 %44
}

declare dso_local i32* @fb_ddc_read(i32*) #1

declare dso_local i32* @fb_firmware_edid(i32) #1

declare dso_local i32* @kmemdup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
