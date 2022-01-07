; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.cfb_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EXT_SYNC_CTL_VS_0 = common dso_local global i32 0, align 4
@EXT_SYNC_CTL_HS_0 = common dso_local global i32 0, align 4
@EXT_SYNC_CTL_VS_NORMAL = common dso_local global i32 0, align 4
@EXT_SYNC_CTL_HS_NORMAL = common dso_local global i32 0, align 4
@EXT_SYNC_CTL = common dso_local global i32 0, align 4
@RAMDAC_DACPWRDN = common dso_local global i32 0, align 4
@RAMDAC_BYPASS = common dso_local global i32 0, align 4
@RAMDAC_RAMPWRDN = common dso_local global i32 0, align 4
@NR_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @cyber2000fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyber2000fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.cfb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %9 = bitcast %struct.fb_info* %8 to %struct.cfb_info*
  store %struct.cfb_info* %9, %struct.cfb_info** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  switch i32 %10, label %24 [
    i32 129, label %11
    i32 131, label %15
    i32 128, label %19
    i32 130, label %23
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @EXT_SYNC_CTL_VS_0, align 4
  %13 = load i32, i32* @EXT_SYNC_CTL_HS_0, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %6, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @EXT_SYNC_CTL_VS_NORMAL, align 4
  %17 = load i32, i32* @EXT_SYNC_CTL_HS_0, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @EXT_SYNC_CTL_VS_0, align 4
  %21 = load i32, i32* @EXT_SYNC_CTL_HS_NORMAL, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %2
  br label %24

24:                                               ; preds = %2, %23
  br label %25

25:                                               ; preds = %24, %19, %15, %11
  %26 = load i32, i32* @EXT_SYNC_CTL, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %29 = call i32 @cyber2000_grphw(i32 %26, i32 %27, %struct.cfb_info* %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load i32, i32* @RAMDAC_DACPWRDN, align 4
  %34 = load i32, i32* @RAMDAC_BYPASS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @RAMDAC_RAMPWRDN, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %40 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %44 = call i32 @cyber2000fb_write_ramdac_ctrl(%struct.cfb_info* %43)
  br label %45

45:                                               ; preds = %32, %25
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @NR_PALETTE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %56 = call i32 @cyber2000fb_writeb(i32 %54, i32 968, %struct.cfb_info* %55)
  %57 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %58 = call i32 @cyber2000fb_writeb(i32 0, i32 969, %struct.cfb_info* %57)
  %59 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %60 = call i32 @cyber2000fb_writeb(i32 0, i32 969, %struct.cfb_info* %59)
  %61 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %62 = call i32 @cyber2000fb_writeb(i32 0, i32 969, %struct.cfb_info* %61)
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %49

66:                                               ; preds = %49
  br label %110

67:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @NR_PALETTE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %75 = call i32 @cyber2000fb_writeb(i32 %73, i32 968, %struct.cfb_info* %74)
  %76 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %77 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %85 = call i32 @cyber2000fb_writeb(i32 %83, i32 969, %struct.cfb_info* %84)
  %86 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %87 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %95 = call i32 @cyber2000fb_writeb(i32 %93, i32 969, %struct.cfb_info* %94)
  %96 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %97 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %105 = call i32 @cyber2000fb_writeb(i32 %103, i32 969, %struct.cfb_info* %104)
  br label %106

106:                                              ; preds = %72
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %68

109:                                              ; preds = %68
  br label %110

110:                                              ; preds = %109, %66
  %111 = load i32, i32* %3, align 4
  %112 = icmp sge i32 %111, 2
  br i1 %112, label %113, label %125

113:                                              ; preds = %110
  %114 = load i32, i32* @RAMDAC_DACPWRDN, align 4
  %115 = load i32, i32* @RAMDAC_BYPASS, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @RAMDAC_RAMPWRDN, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %120 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %124 = call i32 @cyber2000fb_write_ramdac_ctrl(%struct.cfb_info* %123)
  br label %125

125:                                              ; preds = %113, %110
  ret i32 0
}

declare dso_local i32 @cyber2000_grphw(i32, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_write_ramdac_ctrl(%struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_writeb(i32, i32, %struct.cfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
