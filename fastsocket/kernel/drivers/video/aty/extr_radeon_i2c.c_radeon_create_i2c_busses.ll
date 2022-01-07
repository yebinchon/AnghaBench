; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_i2c.c_radeon_create_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_i2c.c_radeon_create_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.radeonfb_info* }

@GPIO_MONID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"monid\00", align 1
@GPIO_DVI_DDC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dvi\00", align 1
@GPIO_VGA_DDC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@GPIO_CRT2_DDC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"crt2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_create_i2c_busses(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %3 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %4 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.radeonfb_info* %3, %struct.radeonfb_info** %8, align 8
  %9 = load i32, i32* @GPIO_MONID, align 4
  %10 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %11 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %9, i32* %14, align 8
  %15 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %16 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_2__* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %21 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %22 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.radeonfb_info* %20, %struct.radeonfb_info** %25, align 8
  %26 = load i32, i32* @GPIO_DVI_DDC, align 4
  %27 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %28 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %26, i32* %31, align 8
  %32 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %33 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 1
  %36 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_2__* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %38 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %39 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.radeonfb_info* %37, %struct.radeonfb_info** %42, align 8
  %43 = load i32, i32* @GPIO_VGA_DDC, align 4
  %44 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %45 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 %43, i32* %48, align 8
  %49 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %50 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 2
  %53 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_2__* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %55 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %56 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store %struct.radeonfb_info* %54, %struct.radeonfb_info** %59, align 8
  %60 = load i32, i32* @GPIO_CRT2_DDC, align 4
  %61 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %62 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 %60, i32* %65, align 8
  %66 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %67 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 3
  %70 = call i32 @radeon_setup_i2c_bus(%struct.TYPE_2__* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @radeon_setup_i2c_bus(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
