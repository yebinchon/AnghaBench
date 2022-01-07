; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb-i2c.c_savage4_gpio_setscl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb-i2c.c_savage4_gpio_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.savagefb_i2c_chan = type { i64, i64 }

@SAVAGE4_I2C_SCL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @savage4_gpio_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @savage4_gpio_setscl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.savagefb_i2c_chan*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.savagefb_i2c_chan*
  store %struct.savagefb_i2c_chan* %8, %struct.savagefb_i2c_chan** %5, align 8
  %9 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %10 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %13 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @SAVAGE4_I2C_SCL_OUT, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  br label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @SAVAGE4_I2C_SCL_OUT, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %31 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %34 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = call i32 @writel(i32 %29, i64 %36)
  %38 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %39 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.savagefb_i2c_chan*, %struct.savagefb_i2c_chan** %5, align 8
  %42 = getelementptr inbounds %struct.savagefb_i2c_chan, %struct.savagefb_i2c_chan* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = call i32 @readl(i64 %44)
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
