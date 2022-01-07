; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sgivwfb.c_dbe_TurnOffDma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sgivwfb.c_dbe_TurnOffDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sgivw_par = type { i32 }

@ctrlstat = common dso_local global i32 0, align 4
@CTRLSTAT = common dso_local global i32 0, align 4
@PCLKSEL = common dso_local global i32 0, align 4
@vt_xy = common dso_local global i32 0, align 4
@VT_XY = common dso_local global i32 0, align 4
@VT_FREEZE = common dso_local global i32 0, align 4
@ovr_control = common dso_local global i32 0, align 4
@OVR_CONTROL = common dso_local global i32 0, align 4
@OVR_DMA_ENABLE = common dso_local global i32 0, align 4
@frm_control = common dso_local global i32 0, align 4
@FRM_CONTROL = common dso_local global i32 0, align 4
@FRM_DMA_ENABLE = common dso_local global i32 0, align 4
@did_control = common dso_local global i32 0, align 4
@DID_CONTROL = common dso_local global i32 0, align 4
@DID_DMA_ENABLE = common dso_local global i32 0, align 4
@frm_inhwctrl = common dso_local global i32 0, align 4
@FRM_INHWCTRL = common dso_local global i32 0, align 4
@ovr_inhwctrl = common dso_local global i32 0, align 4
@OVR_INHWCTRL = common dso_local global i32 0, align 4
@did_inhwctrl = common dso_local global i32 0, align 4
@DID_INHWCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sgivw_par*)* @dbe_TurnOffDma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbe_TurnOffDma(%struct.sgivw_par* %0) #0 {
  %2 = alloca %struct.sgivw_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sgivw_par* %0, %struct.sgivw_par** %2, align 8
  %5 = load i32, i32* @ctrlstat, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @DBE_GETREG(i32 %5, i32 %6)
  %8 = load i32, i32* @CTRLSTAT, align 4
  %9 = load i32, i32* @PCLKSEL, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @GET_DBE_FIELD(i32 %8, i32 %9, i32 %10)
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %101

14:                                               ; preds = %1
  %15 = load i32, i32* @vt_xy, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @DBE_GETREG(i32 %15, i32 %16)
  %18 = load i32, i32* @VT_XY, align 4
  %19 = load i32, i32* @VT_FREEZE, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @GET_DBE_FIELD(i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %101

24:                                               ; preds = %14
  %25 = load i32, i32* @ovr_control, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DBE_GETREG(i32 %25, i32 %26)
  %28 = load i32, i32* @OVR_CONTROL, align 4
  %29 = load i32, i32* @OVR_DMA_ENABLE, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @SET_DBE_FIELD(i32 %28, i32 %29, i32 %30, i32 0)
  %32 = load i32, i32* @ovr_control, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @DBE_SETREG(i32 %32, i32 %33)
  %35 = call i32 @udelay(i32 1000)
  %36 = load i32, i32* @frm_control, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @DBE_GETREG(i32 %36, i32 %37)
  %39 = load i32, i32* @FRM_CONTROL, align 4
  %40 = load i32, i32* @FRM_DMA_ENABLE, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @SET_DBE_FIELD(i32 %39, i32 %40, i32 %41, i32 0)
  %43 = load i32, i32* @frm_control, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @DBE_SETREG(i32 %43, i32 %44)
  %46 = call i32 @udelay(i32 1000)
  %47 = load i32, i32* @did_control, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @DBE_GETREG(i32 %47, i32 %48)
  %50 = load i32, i32* @DID_CONTROL, align 4
  %51 = load i32, i32* @DID_DMA_ENABLE, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @SET_DBE_FIELD(i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* @did_control, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @DBE_SETREG(i32 %54, i32 %55)
  %57 = call i32 @udelay(i32 1000)
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %98, %24
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 10000
  br i1 %60, label %61, label %101

61:                                               ; preds = %58
  %62 = load i32, i32* @frm_inhwctrl, align 4
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @DBE_GETREG(i32 %62, i32 %63)
  %65 = load i32, i32* @FRM_INHWCTRL, align 4
  %66 = load i32, i32* @FRM_DMA_ENABLE, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @GET_DBE_FIELD(i32 %65, i32 %66, i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = call i32 @udelay(i32 10)
  br label %97

72:                                               ; preds = %61
  %73 = load i32, i32* @ovr_inhwctrl, align 4
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @DBE_GETREG(i32 %73, i32 %74)
  %76 = load i32, i32* @OVR_INHWCTRL, align 4
  %77 = load i32, i32* @OVR_DMA_ENABLE, align 4
  %78 = load i32, i32* %3, align 4
  %79 = call i32 @GET_DBE_FIELD(i32 %76, i32 %77, i32 %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = call i32 @udelay(i32 10)
  br label %96

83:                                               ; preds = %72
  %84 = load i32, i32* @did_inhwctrl, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @DBE_GETREG(i32 %84, i32 %85)
  %87 = load i32, i32* @DID_INHWCTRL, align 4
  %88 = load i32, i32* @DID_DMA_ENABLE, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @GET_DBE_FIELD(i32 %87, i32 %88, i32 %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = call i32 @udelay(i32 10)
  br label %95

94:                                               ; preds = %83
  br label %101

95:                                               ; preds = %92
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %96, %70
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %58

101:                                              ; preds = %13, %23, %94, %58
  ret void
}

declare dso_local i32 @DBE_GETREG(i32, i32) #1

declare dso_local i32 @GET_DBE_FIELD(i32, i32, i32) #1

declare dso_local i32 @SET_DBE_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @DBE_SETREG(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
