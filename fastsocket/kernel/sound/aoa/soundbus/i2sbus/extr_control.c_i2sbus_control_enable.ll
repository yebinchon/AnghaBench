; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/soundbus/i2sbus/extr_control.c_i2sbus_control_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2sbus_control = type { %struct.macio_chip* }
%struct.macio_chip = type { i32* }
%struct.i2sbus_dev = type { i32, i64 }
%struct.pmf_args = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@KEYLARGO_FCR1 = common dso_local global i32 0, align 4
@KL1_I2S0_ENABLE = common dso_local global i32 0, align 4
@KL1_I2S1_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2sbus_control_enable(%struct.i2sbus_control* %0, %struct.i2sbus_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2sbus_control*, align 8
  %5 = alloca %struct.i2sbus_dev*, align 8
  %6 = alloca %struct.pmf_args, align 4
  %7 = alloca %struct.macio_chip*, align 8
  store %struct.i2sbus_control* %0, %struct.i2sbus_control** %4, align 8
  store %struct.i2sbus_dev* %1, %struct.i2sbus_dev** %5, align 8
  %8 = bitcast %struct.pmf_args* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.i2sbus_control*, %struct.i2sbus_control** %4, align 8
  %10 = getelementptr inbounds %struct.i2sbus_control, %struct.i2sbus_control* %9, i32 0, i32 0
  %11 = load %struct.macio_chip*, %struct.macio_chip** %10, align 8
  store %struct.macio_chip* %11, %struct.macio_chip** %7, align 8
  %12 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %13 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %18 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @pmf_call_one(i64 %19, %struct.pmf_args* %6)
  store i32 %20, i32* %3, align 4
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.macio_chip*, %struct.macio_chip** %7, align 8
  %23 = icmp eq %struct.macio_chip* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.macio_chip*, %struct.macio_chip** %7, align 8
  %26 = getelementptr inbounds %struct.macio_chip, %struct.macio_chip* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %21
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %24
  %33 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %34 = getelementptr inbounds %struct.i2sbus_dev, %struct.i2sbus_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %44 [
    i32 0, label %36
    i32 1, label %40
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @KEYLARGO_FCR1, align 4
  %38 = load i32, i32* @KL1_I2S0_ENABLE, align 4
  %39 = call i32 @MACIO_BIS(i32 %37, i32 %38)
  br label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @KEYLARGO_FCR1, align 4
  %42 = load i32, i32* @KL1_I2S1_ENABLE, align 4
  %43 = call i32 @MACIO_BIS(i32 %41, i32 %42)
  br label %47

44:                                               ; preds = %32
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %40, %36
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44, %29, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pmf_call_one(i64, %struct.pmf_args*) #2

declare dso_local i32 @MACIO_BIS(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
