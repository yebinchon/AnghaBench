; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_lcdc_write_chan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sh_mobile_lcdcfb.c_lcdc_write_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mobile_lcdc_chan = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SIDE_B_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mobile_lcdc_chan*, i32, i64)* @lcdc_write_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcdc_write_chan(%struct.sh_mobile_lcdc_chan* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.sh_mobile_lcdc_chan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.sh_mobile_lcdc_chan* %0, %struct.sh_mobile_lcdc_chan** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %4, align 8
  %9 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %4, align 8
  %14 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %12, %19
  %21 = call i32 @iowrite32(i64 %7, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @banked(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %3
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %4, align 8
  %28 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.sh_mobile_lcdc_chan*, %struct.sh_mobile_lcdc_chan** %4, align 8
  %33 = getelementptr inbounds %struct.sh_mobile_lcdc_chan, %struct.sh_mobile_lcdc_chan* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %31, %38
  %40 = load i64, i64* @SIDE_B_OFFSET, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @iowrite32(i64 %26, i64 %41)
  br label %43

43:                                               ; preds = %25, %3
  ret void
}

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i64 @banked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
