; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_setup_gpio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_sa1100fb.c_sa1100fb_setup_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LCCR0_CMS = common dso_local global i32 0, align 4
@LCCR0_Color = common dso_local global i32 0, align 4
@LCCR0_Dual = common dso_local global i32 0, align 4
@LCCR0_Act = common dso_local global i32 0, align 4
@GPIO_LDD11 = common dso_local global i32 0, align 4
@GPIO_LDD10 = common dso_local global i32 0, align 4
@GPIO_LDD9 = common dso_local global i32 0, align 4
@GPIO_LDD8 = common dso_local global i32 0, align 4
@GPIO_LDD15 = common dso_local global i32 0, align 4
@GPIO_LDD14 = common dso_local global i32 0, align 4
@GPIO_LDD13 = common dso_local global i32 0, align 4
@GPIO_LDD12 = common dso_local global i32 0, align 4
@GPDR = common dso_local global i32 0, align 4
@GAFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sa1100fb_info*)* @sa1100fb_setup_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100fb_setup_gpio(%struct.sa1100fb_info* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.sa1100fb_info* %0, %struct.sa1100fb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @LCCR0_CMS, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @LCCR0_Color, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %55

11:                                               ; preds = %1
  %12 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %13 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @LCCR0_Dual, align 4
  %16 = load i32, i32* @LCCR0_Act, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %11
  %21 = load i32, i32* @GPIO_LDD11, align 4
  %22 = load i32, i32* @GPIO_LDD10, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GPIO_LDD9, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GPIO_LDD8, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %3, align 4
  %28 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %29 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 8
  br i1 %33, label %44, label %34

34:                                               ; preds = %20
  %35 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LCCR0_Dual, align 4
  %39 = load i32, i32* @LCCR0_Act, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = load i32, i32* @LCCR0_Dual, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %34, %20
  %45 = load i32, i32* @GPIO_LDD15, align 4
  %46 = load i32, i32* @GPIO_LDD14, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @GPIO_LDD13, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @GPIO_LDD12, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %44, %34
  br label %55

55:                                               ; preds = %54, %11, %1
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @GPDR, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* @GPDR, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @GAFR, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* @GAFR, align 4
  br label %65

65:                                               ; preds = %58, %55
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
