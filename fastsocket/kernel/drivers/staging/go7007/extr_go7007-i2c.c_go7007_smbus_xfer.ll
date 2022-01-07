; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-i2c.c_go7007_smbus_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-i2c.c_go7007_smbus_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.go7007 = type { i32 }

@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_CLIENT_SCCB = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @go7007_smbus_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_smbus_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.go7007*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %18 = call %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter* %17)
  store %struct.go7007* %18, %struct.go7007** %16, align 8
  %19 = load i32, i32* %14, align 4
  %20 = load i32, i32* @I2C_SMBUS_BYTE_DATA, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %44

23:                                               ; preds = %7
  %24 = load %struct.go7007*, %struct.go7007** %16, align 8
  %25 = load i32, i32* %10, align 4
  %26 = load i8, i8* %12, align 1
  %27 = sext i8 %26 to i32
  %28 = load i8, i8* @I2C_SMBUS_READ, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %13, align 4
  %33 = load i16, i16* %11, align 2
  %34 = zext i16 %33 to i32
  %35 = load i16, i16* @I2C_CLIENT_SCCB, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 16, i32 0
  %41 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %42 = bitcast %union.i2c_smbus_data* %41 to i32*
  %43 = call i32 @go7007_i2c_xfer(%struct.go7007* %24, i32 %25, i32 %31, i32 %32, i32 %40, i32* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %23, %22
  %45 = load i32, i32* %8, align 4
  ret i32 %45
}

declare dso_local %struct.go7007* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @go7007_i2c_xfer(%struct.go7007*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
