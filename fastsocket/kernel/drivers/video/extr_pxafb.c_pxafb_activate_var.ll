; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_activate_var.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_activate_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32 }
%struct.pxafb_info = type { i32, i32, i32, i32, i32, i32, i32, i32* }

@LCCR0_LDM = common dso_local global i32 0, align 4
@LCCR0_SFM = common dso_local global i32 0, align 4
@LCCR0_IUM = common dso_local global i32 0, align 4
@LCCR0_EFM = common dso_local global i32 0, align 4
@LCCR0_QDM = common dso_local global i32 0, align 4
@LCCR0_BM = common dso_local global i32 0, align 4
@LCCR0_OUM = common dso_local global i32 0, align 4
@LCCR4 = common dso_local global i32 0, align 4
@LCCR4_PAL_FOR_MASK = common dso_local global i32 0, align 4
@LCCR0 = common dso_local global i32 0, align 4
@LCCR1 = common dso_local global i32 0, align 4
@LCCR2 = common dso_local global i32 0, align 4
@LCCR3 = common dso_local global i32 0, align 4
@FDADR0 = common dso_local global i32 0, align 4
@FDADR1 = common dso_local global i32 0, align 4
@C_REENABLE = common dso_local global i32 0, align 4
@LCCR0_LCDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.pxafb_info*)* @pxafb_activate_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_activate_var(%struct.fb_var_screeninfo* %0, %struct.pxafb_info* %1) #0 {
  %3 = alloca %struct.fb_var_screeninfo*, align 8
  %4 = alloca %struct.pxafb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %3, align 8
  store %struct.pxafb_info* %1, %struct.pxafb_info** %4, align 8
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @local_irq_save(i32 %6)
  %8 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %10 = call i32 @setup_parallel_timing(%struct.pxafb_info* %8, %struct.fb_var_screeninfo* %9)
  %11 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %12 = call i32 @setup_base_frame(%struct.pxafb_info* %11, i32 0)
  %13 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %14 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @LCCR0_LDM, align 4
  %17 = load i32, i32* @LCCR0_SFM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @LCCR0_IUM, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @LCCR0_EFM, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @LCCR0_QDM, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @LCCR0_BM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @LCCR0_OUM, align 4
  %28 = or i32 %26, %27
  %29 = or i32 %15, %28
  %30 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %31 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %3, align 8
  %33 = call i32 @pxafb_var_to_lccr3(%struct.fb_var_screeninfo* %32)
  %34 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %35 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %39 = load i32, i32* @LCCR4, align 4
  %40 = call i32 @lcd_readl(%struct.pxafb_info* %38, i32 %39)
  %41 = load i32, i32* @LCCR4_PAL_FOR_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %45 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %47 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @LCCR4_PAL_FOR_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %52 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @local_irq_restore(i32 %55)
  %57 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %58 = load i32, i32* @LCCR0, align 4
  %59 = call i32 @lcd_readl(%struct.pxafb_info* %57, i32 %58)
  %60 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %61 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %116, label %64

64:                                               ; preds = %2
  %65 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %66 = load i32, i32* @LCCR1, align 4
  %67 = call i32 @lcd_readl(%struct.pxafb_info* %65, i32 %66)
  %68 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %69 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %116, label %72

72:                                               ; preds = %64
  %73 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %74 = load i32, i32* @LCCR2, align 4
  %75 = call i32 @lcd_readl(%struct.pxafb_info* %73, i32 %74)
  %76 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %77 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %116, label %80

80:                                               ; preds = %72
  %81 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %82 = load i32, i32* @LCCR3, align 4
  %83 = call i32 @lcd_readl(%struct.pxafb_info* %81, i32 %82)
  %84 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %85 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %116, label %88

88:                                               ; preds = %80
  %89 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %90 = load i32, i32* @LCCR4, align 4
  %91 = call i32 @lcd_readl(%struct.pxafb_info* %89, i32 %90)
  %92 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %93 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %116, label %96

96:                                               ; preds = %88
  %97 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %98 = load i32, i32* @FDADR0, align 4
  %99 = call i32 @lcd_readl(%struct.pxafb_info* %97, i32 %98)
  %100 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %101 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %100, i32 0, i32 7
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %99, %104
  br i1 %105, label %116, label %106

106:                                              ; preds = %96
  %107 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %108 = load i32, i32* @FDADR1, align 4
  %109 = call i32 @lcd_readl(%struct.pxafb_info* %107, i32 %108)
  %110 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %111 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %109, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %106, %96, %88, %80, %72, %64, %2
  %117 = load %struct.pxafb_info*, %struct.pxafb_info** %4, align 8
  %118 = load i32, i32* @C_REENABLE, align 4
  %119 = call i32 @pxafb_schedule_work(%struct.pxafb_info* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %106
  ret i32 0
}

declare dso_local i32 @local_irq_save(i32) #1

declare dso_local i32 @setup_parallel_timing(%struct.pxafb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @setup_base_frame(%struct.pxafb_info*, i32) #1

declare dso_local i32 @pxafb_var_to_lccr3(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @lcd_readl(%struct.pxafb_info*, i32) #1

declare dso_local i32 @local_irq_restore(i32) #1

declare dso_local i32 @pxafb_schedule_work(%struct.pxafb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
