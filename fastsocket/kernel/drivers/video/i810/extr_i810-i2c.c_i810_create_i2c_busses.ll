; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810-i2c.c_i810_create_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810-i2c.c_i810_create_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i810fb_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.i810fb_par* }

@GPIOA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"I810-DDC\00", align 1
@GPIOB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"I810-I2C\00", align 1
@GPIOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"I810-GPIOC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i810_create_i2c_busses(%struct.i810fb_par* %0) #0 {
  %2 = alloca %struct.i810fb_par*, align 8
  store %struct.i810fb_par* %0, %struct.i810fb_par** %2, align 8
  %3 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %4 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %5 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.i810fb_par* %3, %struct.i810fb_par** %8, align 8
  %9 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %10 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %11 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.i810fb_par* %9, %struct.i810fb_par** %14, align 8
  %15 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %16 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %17 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store %struct.i810fb_par* %15, %struct.i810fb_par** %20, align 8
  %21 = load i32, i32* @GPIOA, align 4
  %22 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %23 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %21, i32* %26, align 8
  %27 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %28 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = call i32 @i810_setup_i2c_bus(%struct.TYPE_2__* %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @GPIOB, align 4
  %33 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %34 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %32, i32* %37, align 8
  %38 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %39 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 1
  %42 = call i32 @i810_setup_i2c_bus(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @GPIOC, align 4
  %44 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %45 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  %49 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %50 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 2
  %53 = call i32 @i810_setup_i2c_bus(%struct.TYPE_2__* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @i810_setup_i2c_bus(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
