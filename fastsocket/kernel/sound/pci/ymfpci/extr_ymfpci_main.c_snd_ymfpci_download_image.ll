; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_download_image.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_download_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@YDSXGR_NATIVEDACOUTVOL = common dso_local global i64 0, align 8
@YDSXGR_MODE = common dso_local global i64 0, align 8
@YDSXGR_MAPOFREC = common dso_local global i64 0, align 8
@YDSXGR_MAPOFEFFECT = common dso_local global i64 0, align 8
@YDSXGR_PLAYCTRLBASE = common dso_local global i64 0, align 8
@YDSXGR_RECCTRLBASE = common dso_local global i64 0, align 8
@YDSXGR_EFFCTRLBASE = common dso_local global i64 0, align 8
@YDSXGR_GLOBALCTRL = common dso_local global i32 0, align 4
@YDSXG_DSPLENGTH = common dso_local global i32 0, align 4
@YDSXGR_DSPINSTRAM = common dso_local global i64 0, align 8
@YDSXG_CTRLLENGTH = common dso_local global i32 0, align 4
@YDSXGR_CTRLINSTRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci*)* @snd_ymfpci_download_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_download_image(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca %struct.snd_ymfpci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %2, align 8
  %6 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %7 = load i64, i64* @YDSXGR_NATIVEDACOUTVOL, align 8
  %8 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %6, i64 %7, i32 0)
  %9 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %10 = call i32 @snd_ymfpci_disable_dsp(%struct.snd_ymfpci* %9)
  %11 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %12 = load i64, i64* @YDSXGR_MODE, align 8
  %13 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %11, i64 %12, i32 65536)
  %14 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %15 = load i64, i64* @YDSXGR_MODE, align 8
  %16 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %14, i64 %15, i32 0)
  %17 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %18 = load i64, i64* @YDSXGR_MAPOFREC, align 8
  %19 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %17, i64 %18, i32 0)
  %20 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %21 = load i64, i64* @YDSXGR_MAPOFEFFECT, align 8
  %22 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %20, i64 %21, i32 0)
  %23 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %24 = load i64, i64* @YDSXGR_PLAYCTRLBASE, align 8
  %25 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %23, i64 %24, i32 0)
  %26 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %27 = load i64, i64* @YDSXGR_RECCTRLBASE, align 8
  %28 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %26, i64 %27, i32 0)
  %29 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %30 = load i64, i64* @YDSXGR_EFFCTRLBASE, align 8
  %31 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %29, i64 %30, i32 0)
  %32 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %33 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %34 = call i32 @snd_ymfpci_readw(%struct.snd_ymfpci* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %36 = load i32, i32* @YDSXGR_GLOBALCTRL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, -8
  %39 = call i32 @snd_ymfpci_writew(%struct.snd_ymfpci* %35, i32 %36, i32 %38)
  %40 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %41 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %65, %1
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @YDSXG_DSPLENGTH, align 4
  %49 = sdiv i32 %48, 4
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %46
  %52 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %53 = load i64, i64* @YDSXGR_DSPINSTRAM, align 8
  %54 = load i32, i32* %3, align 4
  %55 = shl i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %53, %56
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %52, i64 %57, i32 %63)
  br label %65

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %46

68:                                               ; preds = %46
  %69 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %70 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %5, align 8
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %94, %68
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @YDSXG_CTRLLENGTH, align 4
  %78 = sdiv i32 %77, 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %82 = load i64, i64* @YDSXGR_CTRLINSTRAM, align 8
  %83 = load i32, i32* %3, align 4
  %84 = shl i32 %83, 2
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %82, %85
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %81, i64 %86, i32 %92)
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %75

97:                                               ; preds = %75
  %98 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %99 = call i32 @snd_ymfpci_enable_dsp(%struct.snd_ymfpci* %98)
  ret void
}

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i64, i32) #1

declare dso_local i32 @snd_ymfpci_disable_dsp(%struct.snd_ymfpci*) #1

declare dso_local i32 @snd_ymfpci_readw(%struct.snd_ymfpci*, i32) #1

declare dso_local i32 @snd_ymfpci_writew(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @snd_ymfpci_enable_dsp(%struct.snd_ymfpci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
