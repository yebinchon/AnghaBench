; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_isp1301_clear_bits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/otg/extr_isp1301_omap.c_isp1301_clear_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1301 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp1301*, i64, i64)* @isp1301_clear_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1301_clear_bits(%struct.isp1301* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.isp1301*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.isp1301* %0, %struct.isp1301** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.isp1301*, %struct.isp1301** %4, align 8
  %8 = getelementptr inbounds %struct.isp1301, %struct.isp1301* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @i2c_smbus_write_byte_data(i32 %9, i64 %11, i64 %12)
  ret i32 %13
}

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
