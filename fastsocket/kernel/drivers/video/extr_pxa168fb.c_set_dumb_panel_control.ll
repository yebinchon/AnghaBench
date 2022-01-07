; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_dumb_panel_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_set_dumb_panel_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.pxa168fb_info* }
%struct.TYPE_4__ = type { i32 }
%struct.pxa168fb_info = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pxa168fb_mach_info* }
%struct.pxa168fb_mach_info = type { i32, i32, i32, i64, i64, i64, i64 }

@LCD_SPU_DUMB_CTRL = common dso_local global i64 0, align 8
@FB_SYNC_COMP_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @set_dumb_panel_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dumb_panel_control(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pxa168fb_info*, align 8
  %4 = alloca %struct.pxa168fb_mach_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 1
  %8 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %7, align 8
  store %struct.pxa168fb_info* %8, %struct.pxa168fb_info** %3, align 8
  %9 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %12, align 8
  store %struct.pxa168fb_mach_info* %13, %struct.pxa168fb_mach_info** %4, align 8
  %14 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  %20 = and i32 %19, 1
  store i32 %20, i32* %5, align 4
  %21 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %30

26:                                               ; preds = %1
  %27 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %28 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i32 [ 7, %25 ], [ %29, %26 ]
  %32 = shl i32 %31, 28
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %36 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 20
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %42 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 %43, 12
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %48 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 128, i32 0
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %56 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 64, i32 0
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FB_SYNC_COMP_HIGH_ACT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 32, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  %74 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %75 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 16, i32 0
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 0, i32 8
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  %93 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 0, i32 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %4, align 8
  %105 = getelementptr inbounds %struct.pxa168fb_mach_info, %struct.pxa168fb_mach_info* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 2, i32 0
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %114 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel(i32 %112, i64 %117)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
