; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_gpio_setscl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_gpio_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_i2c_chan = type { i32, %struct.intelfb_info* }
%struct.intelfb_info = type { i32 }

@SCL_VAL_OUT = common dso_local global i32 0, align 4
@SCL_DIR = common dso_local global i32 0, align 4
@SCL_DIR_MASK = common dso_local global i32 0, align 4
@SCL_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @intelfb_gpio_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intelfb_gpio_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intelfb_i2c_chan*, align 8
  %6 = alloca %struct.intelfb_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.intelfb_i2c_chan*
  store %struct.intelfb_i2c_chan* %9, %struct.intelfb_i2c_chan** %5, align 8
  %10 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %5, align 8
  %11 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %10, i32 0, i32 1
  %12 = load %struct.intelfb_info*, %struct.intelfb_info** %11, align 8
  store %struct.intelfb_info* %12, %struct.intelfb_info** %6, align 8
  %13 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %5, align 8
  %14 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @SCL_VAL_OUT, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = load i32, i32* @SCL_DIR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SCL_DIR_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SCL_VAL_MASK, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @OUTREG(i32 %15, i32 %28)
  %30 = load %struct.intelfb_i2c_chan*, %struct.intelfb_i2c_chan** %5, align 8
  %31 = getelementptr inbounds %struct.intelfb_i2c_chan, %struct.intelfb_i2c_chan* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @INREG(i32 %32)
  store i32 %33, i32* %7, align 4
  ret void
}

declare dso_local i32 @OUTREG(i32, i32) #1

declare dso_local i32 @INREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
