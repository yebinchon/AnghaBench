; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_set_current_channel_ex.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_set_current_channel_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32, i32, i64, %struct.wb35_reg }
%struct.wb35_reg = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Going to channel: %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hw_data*, i64)* @hal_set_current_channel_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_set_current_channel_ex(%struct.hw_data* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.wb35_reg*, align 8
  %6 = bitcast %struct.TYPE_4__* %3 to i64*
  store i64 %1, i64* %6, align 4
  store %struct.hw_data* %0, %struct.hw_data** %4, align 8
  %7 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %8 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %7, i32 0, i32 3
  store %struct.wb35_reg* %8, %struct.wb35_reg** %5, align 8
  %9 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %10 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %48

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %18)
  %20 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %21 = bitcast %struct.TYPE_4__* %3 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @RFSynthesizer_SwitchingChannel(%struct.hw_data* %20, i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %27 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %31 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %33 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, -256
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %39 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %43 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %44 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %struct.TYPE_4__* %3 to i32*
  %47 = call i32 @Wb35Reg_WriteWithCallbackValue(%struct.hw_data* %42, i32 2088, i32 %45, i32* %46, i32 8)
  br label %48

48:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @RFSynthesizer_SwitchingChannel(%struct.hw_data*, i64) #1

declare dso_local i32 @Wb35Reg_WriteWithCallbackValue(%struct.hw_data*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
