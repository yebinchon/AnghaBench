; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200_setmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.au1200fb_device = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@win = common dso_local global %struct.TYPE_11__* null, align 8
@lcd = common dso_local global %struct.TYPE_12__* null, align 8
@LCD_WINCTRL2_CKMODE_00 = common dso_local global i32 0, align 4
@LCD_WINCTRL2_DBM = common dso_local global i32 0, align 4
@LCD_WINCTRL2_SCX_1 = common dso_local global i32 0, align 4
@LCD_WINCTRL2_SCY_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.au1200fb_device*)* @au1200_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @au1200_setmode(%struct.au1200fb_device* %0) #0 {
  %2 = alloca %struct.au1200fb_device*, align 8
  %3 = alloca i32, align 4
  store %struct.au1200fb_device* %0, %struct.au1200fb_device** %2, align 8
  %4 = load %struct.au1200fb_device*, %struct.au1200fb_device** %2, align 8
  %5 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @LCD_WINCTRL1_PRI_N(i32 %7)
  %9 = or i32 0, %8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @win, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %9, %17
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lcd, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %18, i32* %25, align 4
  %26 = load %struct.au1200fb_device*, %struct.au1200fb_device** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @win, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** @win, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @au1200_setlocation(%struct.au1200fb_device* %26, i32 %27, i32 %35, i32 %43)
  %45 = load i32, i32* @LCD_WINCTRL2_CKMODE_00, align 4
  %46 = or i32 0, %45
  %47 = load i32, i32* @LCD_WINCTRL2_DBM, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.au1200fb_device*, %struct.au1200fb_device** %2, align 8
  %50 = getelementptr inbounds %struct.au1200fb_device, %struct.au1200fb_device* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LCD_WINCTRL2_BX_N(i32 %53)
  %55 = or i32 %48, %54
  %56 = load i32, i32* @LCD_WINCTRL2_SCX_1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @LCD_WINCTRL2_SCY_1, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lcd, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 %59, i32* %66, align 4
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** @win, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lcd, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @LCD_WINCTRL1_PRI_N(i32) #1

declare dso_local i32 @au1200_setlocation(%struct.au1200fb_device*, i32, i32, i32) #1

declare dso_local i32 @LCD_WINCTRL2_BX_N(i32) #1

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
