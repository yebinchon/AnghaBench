; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_fillrect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.fb_fillrect = type { i64, i64, i64, i64, i64 }
%struct.cfb_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@FB_ACCELF_TEXT = common dso_local global i32 0, align 4
@CO_REG_CONTROL = common dso_local global i32 0, align 4
@CO_REG_PIXWIDTH = common dso_local global i32 0, align 4
@CO_REG_PIXHEIGHT = common dso_local global i32 0, align 4
@CO_REG_FGCOLOUR = common dso_local global i32 0, align 4
@CO_REG_X_PHASE = common dso_local global i32 0, align 4
@CO_REG_DEST_PTR = common dso_local global i32 0, align 4
@CO_FG_MIX_SRC = common dso_local global i64 0, align 8
@CO_REG_FGMIX = common dso_local global i32 0, align 4
@CO_CMD_L_PATTERN_FGCOL = common dso_local global i64 0, align 8
@CO_REG_CMD_L = common dso_local global i32 0, align 4
@CO_CMD_H_BLITTER = common dso_local global i64 0, align 8
@CO_REG_CMD_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_fillrect*)* @cyber2000fb_fillrect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyber2000fb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.cfb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = bitcast %struct.fb_info* %8 to %struct.cfb_info*
  store %struct.cfb_info* %9, %struct.cfb_info** %5, align 8
  %10 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %11 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @FB_ACCELF_TEXT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %21 = call i32 @cfb_fillrect(%struct.fb_info* %19, %struct.fb_fillrect* %20)
  br label %106

22:                                               ; preds = %2
  %23 = load i32, i32* @CO_REG_CONTROL, align 4
  %24 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %25 = call i32 @cyber2000fb_writeb(i64 0, i32 %23, %struct.cfb_info* %24)
  %26 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %27 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = load i32, i32* @CO_REG_PIXWIDTH, align 4
  %31 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %32 = call i32 @cyber2000fb_writew(i64 %29, i32 %30, %struct.cfb_info* %31)
  %33 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %34 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  %37 = load i32, i32* @CO_REG_PIXHEIGHT, align 4
  %38 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %39 = call i32 @cyber2000fb_writew(i64 %36, i32 %37, %struct.cfb_info* %38)
  %40 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %41 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %44 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 8
  br i1 %48, label %49, label %58

49:                                               ; preds = %22
  %50 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %51 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %7, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %49, %22
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* @CO_REG_FGCOLOUR, align 4
  %61 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %62 = call i32 @cyber2000fb_writel(i64 %59, i32 %60, %struct.cfb_info* %61)
  %63 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %64 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %67 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %70 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = mul i64 %68, %73
  %75 = add i64 %65, %74
  store i64 %75, i64* %6, align 8
  %76 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %77 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 24
  br i1 %81, label %82, label %89

82:                                               ; preds = %58
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @CO_REG_X_PHASE, align 4
  %85 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %86 = call i32 @cyber2000fb_writeb(i64 %83, i32 %84, %struct.cfb_info* %85)
  %87 = load i64, i64* %6, align 8
  %88 = mul i64 %87, 3
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %82, %58
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @CO_REG_DEST_PTR, align 4
  %92 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %93 = call i32 @cyber2000fb_writel(i64 %90, i32 %91, %struct.cfb_info* %92)
  %94 = load i64, i64* @CO_FG_MIX_SRC, align 8
  %95 = load i32, i32* @CO_REG_FGMIX, align 4
  %96 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %97 = call i32 @cyber2000fb_writeb(i64 %94, i32 %95, %struct.cfb_info* %96)
  %98 = load i64, i64* @CO_CMD_L_PATTERN_FGCOL, align 8
  %99 = load i32, i32* @CO_REG_CMD_L, align 4
  %100 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %101 = call i32 @cyber2000fb_writew(i64 %98, i32 %99, %struct.cfb_info* %100)
  %102 = load i64, i64* @CO_CMD_H_BLITTER, align 8
  %103 = load i32, i32* @CO_REG_CMD_H, align 4
  %104 = load %struct.cfb_info*, %struct.cfb_info** %5, align 8
  %105 = call i32 @cyber2000fb_writew(i64 %102, i32 %103, %struct.cfb_info* %104)
  br label %106

106:                                              ; preds = %89, %18
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @cyber2000fb_writeb(i64, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_writew(i64, i32, %struct.cfb_info*) #1

declare dso_local i32 @cyber2000fb_writel(i64, i32, %struct.cfb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
