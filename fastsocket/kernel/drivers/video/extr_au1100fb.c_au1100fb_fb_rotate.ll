; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1100fb.c_au1100fb_fb_rotate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1100fb.c_au1100fb_fb_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.au1100fb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"fb_rotate %p %d\00", align 1
@LCD_CONTROL_GO = common dso_local global i32 0, align 4
@LCD_CONTROL_SM_MASK = common dso_local global i32 0, align 4
@LCD_CONTROL_SM_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au1100fb_fb_rotate(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.au1100fb_device*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = call %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info* %6)
  store %struct.au1100fb_device* %7, %struct.au1100fb_device** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @print_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.fb_info* %8, i32 %9)
  %11 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %12 = icmp ne %struct.au1100fb_device* %11, null
  br i1 %12, label %13, label %54

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 90
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %54, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @LCD_CONTROL_GO, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %24 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %22
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @LCD_CONTROL_SM_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %32 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %30
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 %37, 90
  %39 = load i32, i32* @LCD_CONTROL_SM_BIT, align 4
  %40 = shl i32 %38, %39
  %41 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %42 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %40
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* @LCD_CONTROL_GO, align 4
  %48 = load %struct.au1100fb_device*, %struct.au1100fb_device** %5, align 8
  %49 = getelementptr inbounds %struct.au1100fb_device, %struct.au1100fb_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %20, %16, %13, %2
  ret void
}

declare dso_local %struct.au1100fb_device* @to_au1100fb_device(%struct.fb_info*) #1

declare dso_local i32 @print_dbg(i8*, %struct.fb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
