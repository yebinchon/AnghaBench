; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_get_ctrl_blk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_get_ctrl_blk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.daio_mgr_ctrl_blk = type { i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I2SCTL = common dso_local global i32 0, align 4
@SPOCTL = common dso_local global i32 0, align 4
@SPICTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i8**)* @daio_mgr_get_ctrl_blk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_get_ctrl_blk(%struct.hw* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  store %struct.hw* %0, %struct.hw** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.daio_mgr_ctrl_blk* @kzalloc(i32 24, i32 %8)
  store %struct.daio_mgr_ctrl_blk* %9, %struct.daio_mgr_ctrl_blk** %6, align 8
  %10 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %11 = icmp ne %struct.daio_mgr_ctrl_blk* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.hw*, %struct.hw** %4, align 8
  %17 = load i32, i32* @I2SCTL, align 4
  %18 = call i8* @hw_read_20kx(%struct.hw* %16, i32 %17)
  %19 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %20 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load %struct.hw*, %struct.hw** %4, align 8
  %22 = load i32, i32* @SPOCTL, align 4
  %23 = call i8* @hw_read_20kx(%struct.hw* %21, i32 %22)
  %24 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %25 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.hw*, %struct.hw** %4, align 8
  %27 = load i32, i32* @SPICTL, align 4
  %28 = call i8* @hw_read_20kx(%struct.hw* %26, i32 %27)
  %29 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %30 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %6, align 8
  %32 = bitcast %struct.daio_mgr_ctrl_blk* %31 to i8*
  %33 = load i8**, i8*** %5, align 8
  store i8* %32, i8** %33, align 8
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %15, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.daio_mgr_ctrl_blk* @kzalloc(i32, i32) #1

declare dso_local i8* @hw_read_20kx(%struct.hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
