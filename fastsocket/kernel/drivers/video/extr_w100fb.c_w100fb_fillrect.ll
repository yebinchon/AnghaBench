; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_w100fb.c_w100fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, i32 }
%struct.fb_fillrect = type { i32, i32, i32, i32, i32 }
%union.dp_gui_master_cntl_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FBINFO_STATE_RUNNING = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@remapped_regs = common dso_local global i64 0, align 8
@mmDP_GUI_MASTER_CNTL = common dso_local global i64 0, align 8
@ROP3_PATCOPY = common dso_local global i32 0, align 4
@GMC_BRUSH_SOLID_COLOR = common dso_local global i32 0, align 4
@mmDP_BRUSH_FRGD_CLR = common dso_local global i64 0, align 8
@mmDST_Y_X = common dso_local global i64 0, align 8
@mmDST_WIDTH_HEIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @w100fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %union.dp_gui_master_cntl_u, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FBINFO_STATE_RUNNING, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %76

12:                                               ; preds = %2
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %22 = call i32 @cfb_fillrect(%struct.fb_info* %20, %struct.fb_fillrect* %21)
  br label %76

23:                                               ; preds = %12
  %24 = load i64, i64* @remapped_regs, align 8
  %25 = load i64, i64* @mmDP_GUI_MASTER_CNTL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  %28 = bitcast %union.dp_gui_master_cntl_u* %5 to i32*
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @ROP3_PATCOPY, align 4
  %30 = bitcast %union.dp_gui_master_cntl_u* %5 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @GMC_BRUSH_SOLID_COLOR, align 4
  %33 = bitcast %union.dp_gui_master_cntl_u* %5 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = call i32 @w100_fifo_wait(i32 2)
  %36 = bitcast %union.dp_gui_master_cntl_u* %5 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* @remapped_regs, align 8
  %39 = load i64, i64* @mmDP_GUI_MASTER_CNTL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %37, i64 %40)
  %42 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %43 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @remapped_regs, align 8
  %46 = load i64, i64* @mmDP_BRUSH_FRGD_CLR, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %44, i64 %47)
  %49 = call i32 @w100_fifo_wait(i32 2)
  %50 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %51 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %55 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 65535
  %58 = or i32 %53, %57
  %59 = load i64, i64* @remapped_regs, align 8
  %60 = load i64, i64* @mmDST_Y_X, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %58, i64 %61)
  %63 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %64 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 16
  %67 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %68 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 65535
  %71 = or i32 %66, %70
  %72 = load i64, i64* @remapped_regs, align 8
  %73 = load i64, i64* @mmDST_WIDTH_HEIGHT, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel(i32 %71, i64 %74)
  br label %76

76:                                               ; preds = %23, %19, %11
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @w100_fifo_wait(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
