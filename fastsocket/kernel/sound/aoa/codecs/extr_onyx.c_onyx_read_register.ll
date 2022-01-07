; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_read_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/aoa/codecs/extr_onyx.c_onyx_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.onyx = type { i64*, i32 }

@ONYX_REG_CONTROL = common dso_local global i64 0, align 8
@FIRSTREGISTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.onyx*, i64, i64*)* @onyx_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_read_register(%struct.onyx* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.onyx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.onyx* %0, %struct.onyx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @ONYX_REG_CONTROL, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.onyx*, %struct.onyx** %5, align 8
  %14 = getelementptr inbounds %struct.onyx, %struct.onyx* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @FIRSTREGISTER, align 8
  %18 = sub nsw i64 %16, %17
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  store i32 0, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load %struct.onyx*, %struct.onyx** %5, align 8
  %24 = getelementptr inbounds %struct.onyx, %struct.onyx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @i2c_smbus_read_byte_data(i32 %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -1, i32* %4, align 4
  br label %43

31:                                               ; preds = %22
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.onyx*, %struct.onyx** %5, align 8
  %37 = getelementptr inbounds %struct.onyx, %struct.onyx* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* @ONYX_REG_CONTROL, align 8
  %40 = load i64, i64* @FIRSTREGISTER, align 8
  %41 = sub nsw i64 %39, %40
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 %35, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %31, %30, %12
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @i2c_smbus_read_byte_data(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
