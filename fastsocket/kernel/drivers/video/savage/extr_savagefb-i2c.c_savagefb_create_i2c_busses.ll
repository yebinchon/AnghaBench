; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb-i2c.c_savagefb_create_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb-i2c.c_savagefb_create_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.savagefb_par* }
%struct.TYPE_5__ = type { i32 }
%struct.savagefb_par = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.savagefb_par*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@CR_SERIAL2 = common dso_local global i32 0, align 4
@prosavage_gpio_setsda = common dso_local global i32 0, align 4
@prosavage_gpio_setscl = common dso_local global i32 0, align 4
@prosavage_gpio_getsda = common dso_local global i32 0, align 4
@prosavage_gpio_getscl = common dso_local global i32 0, align 4
@savage4_gpio_setsda = common dso_local global i32 0, align 4
@savage4_gpio_setscl = common dso_local global i32 0, align 4
@savage4_gpio_getsda = common dso_local global i32 0, align 4
@savage4_gpio_getscl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"SAVAGE DDC2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @savagefb_create_i2c_busses(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.savagefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %4 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %5 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %4, i32 0, i32 1
  %6 = load %struct.savagefb_par*, %struct.savagefb_par** %5, align 8
  store %struct.savagefb_par* %6, %struct.savagefb_par** %3, align 8
  %7 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %8 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %9 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store %struct.savagefb_par* %7, %struct.savagefb_par** %10, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %78 [
    i32 131, label %15
    i32 130, label %15
    i32 128, label %47
    i32 129, label %47
  ]

15:                                               ; preds = %1, %1
  %16 = load i32, i32* @CR_SERIAL2, align 4
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %18 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  %20 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %21 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %25 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 3
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @prosavage_gpio_setsda, align 4
  %28 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %29 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 3
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* @prosavage_gpio_setscl, align 4
  %33 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %34 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 %32, i32* %36, align 8
  %37 = load i32, i32* @prosavage_gpio_getsda, align 4
  %38 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %39 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* @prosavage_gpio_getscl, align 4
  %43 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %44 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 8
  br label %82

47:                                               ; preds = %1, %1
  %48 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %49 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 65312, i32* %50, align 8
  %51 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %52 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %56 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @savage4_gpio_setsda, align 4
  %59 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %60 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @savage4_gpio_setscl, align 4
  %64 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %65 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32 %63, i32* %67, align 8
  %68 = load i32, i32* @savage4_gpio_getsda, align 4
  %69 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %70 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load i32, i32* @savage4_gpio_getscl, align 4
  %74 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %75 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  br label %82

78:                                               ; preds = %1
  %79 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %80 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store %struct.savagefb_par* null, %struct.savagefb_par** %81, align 8
  br label %82

82:                                               ; preds = %78, %47, %15
  %83 = load %struct.savagefb_par*, %struct.savagefb_par** %3, align 8
  %84 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %83, i32 0, i32 0
  %85 = call i32 @savage_setup_i2c_bus(%struct.TYPE_8__* %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @savage_setup_i2c_bus(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
