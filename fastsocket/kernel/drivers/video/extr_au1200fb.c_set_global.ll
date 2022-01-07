; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_set_global.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_set_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.au1200_lcd_global_regs_t = type { i32, i32, i32, i32, i32 }

@SCREEN_BACKCOLOR = common dso_local global i32 0, align 4
@lcd = common dso_local global %struct.TYPE_2__* null, align 8
@SCREEN_BRIGHTNESS = common dso_local global i32 0, align 4
@SCREEN_COLORKEY = common dso_local global i32 0, align 4
@SCREEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.au1200_lcd_global_regs_t*)* @set_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_global(i32 %0, %struct.au1200_lcd_global_regs_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1200_lcd_global_regs_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.au1200_lcd_global_regs_t* %1, %struct.au1200_lcd_global_regs_t** %4, align 8
  %7 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %8 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SCREEN_BACKCOLOR, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %15 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %21 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SCREEN_BRIGHTNESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %19
  %27 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %28 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 30
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %33 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %32, i32 0, i32 1
  store i32 30, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 262143
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = ashr i32 %42, 16
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  %45 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %46 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 255
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = mul i32 %49, %50
  %52 = lshr i32 %51, 8
  store i32 %52, i32* %5, align 4
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65535
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 %57, 16
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %34, %19
  %64 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %65 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SCREEN_COLORKEY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %72 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %78 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @SCREEN_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load %struct.au1200_lcd_global_regs_t*, %struct.au1200_lcd_global_regs_t** %4, align 8
  %85 = getelementptr inbounds %struct.au1200_lcd_global_regs_t, %struct.au1200_lcd_global_regs_t* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @lcd, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %76
  %90 = call i32 (...) @au_sync()
  ret void
}

declare dso_local i32 @au_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
