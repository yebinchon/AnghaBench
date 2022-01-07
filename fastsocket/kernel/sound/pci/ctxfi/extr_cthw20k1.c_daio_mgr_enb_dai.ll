; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_enb_dai.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_enb_dai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daio_mgr_ctrl_blk = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SPICTL_EN = common dso_local global i32 0, align 4
@I2SCTL_EI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @daio_mgr_enb_dai to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_enb_dai(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.daio_mgr_ctrl_blk*
  store %struct.daio_mgr_ctrl_blk* %7, %struct.daio_mgr_ctrl_blk** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ult i32 %8, 4
  br i1 %9, label %10, label %26

10:                                               ; preds = %2
  %11 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %12 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %11, i32 0, i32 2
  %13 = load i32, i32* @SPICTL_EN, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul i32 %14, 8
  %16 = shl i32 %13, %15
  %17 = call i32 @set_field(i32* %12, i32 %16, i32 1)
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 1, %18
  %20 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %21 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %19
  store i32 %25, i32* %23, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = urem i32 %27, 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %30 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %29, i32 0, i32 1
  %31 = load i32, i32* @I2SCTL_EI, align 4
  %32 = load i32, i32* %4, align 4
  %33 = mul i32 %32, 8
  %34 = shl i32 %31, %33
  %35 = call i32 @set_field(i32* %30, i32 %34, i32 1)
  %36 = load i32, i32* %4, align 4
  %37 = shl i32 1, %36
  %38 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %39 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %37
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %26, %10
  ret i32 0
}

declare dso_local i32 @set_field(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
