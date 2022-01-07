; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7720.c_set_higher_rates.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_mos7720.c_set_higher_rates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moschip_port = type { i8, i8, %struct.usb_serial_port* }
%struct.usb_serial_port = type { i32, %struct.usb_serial* }
%struct.usb_serial = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Sending Setting Commands ..........\00", align 1
@MOS_WRITE = common dso_local global i32 0, align 4
@MOS_READ = common dso_local global i32 0, align 4
@MOS_MAX_PORT = common dso_local global i32 0, align 4
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moschip_port*, i32)* @set_higher_rates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_higher_rates(%struct.moschip_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.moschip_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.usb_serial_port*, align 8
  %8 = alloca %struct.usb_serial*, align 8
  %9 = alloca i32, align 4
  store %struct.moschip_port* %0, %struct.moschip_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %11 = icmp eq %struct.moschip_port* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %132

15:                                               ; preds = %2
  %16 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %17 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %16, i32 0, i32 2
  %18 = load %struct.usb_serial_port*, %struct.usb_serial_port** %17, align 8
  store %struct.usb_serial_port* %18, %struct.usb_serial_port** %7, align 8
  %19 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %20 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %19, i32 0, i32 1
  %21 = load %struct.usb_serial*, %struct.usb_serial** %20, align 8
  store %struct.usb_serial* %21, %struct.usb_serial** %8, align 8
  %22 = call i32 @dbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %24 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %27 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %26, i32 0, i32 1
  %28 = load %struct.usb_serial*, %struct.usb_serial** %27, align 8
  %29 = getelementptr inbounds %struct.usb_serial, %struct.usb_serial* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %25, %30
  store i32 %31, i32* %9, align 4
  store i8 0, i8* %6, align 1
  %32 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %33 = load i32, i32* @MOS_WRITE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @send_mos_cmd(%struct.usb_serial* %32, i32 %33, i32 %34, i32 1, i8* %6)
  store i8 0, i8* %6, align 1
  %36 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %37 = load i32, i32* @MOS_WRITE, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @send_mos_cmd(%struct.usb_serial* %36, i32 %37, i32 %38, i32 2, i8* %6)
  store i8 -49, i8* %6, align 1
  %40 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %41 = load i32, i32* @MOS_WRITE, align 4
  %42 = load %struct.usb_serial_port*, %struct.usb_serial_port** %7, align 8
  %43 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @send_mos_cmd(%struct.usb_serial* %40, i32 %41, i32 %44, i32 2, i8* %6)
  store i8 11, i8* %6, align 1
  %46 = load i8, i8* %6, align 1
  %47 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %48 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %47, i32 0, i32 0
  store i8 %46, i8* %48, align 8
  %49 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %50 = load i32, i32* @MOS_WRITE, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @send_mos_cmd(%struct.usb_serial* %49, i32 %50, i32 %51, i32 4, i8* %6)
  store i8 11, i8* %6, align 1
  %53 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %54 = load i32, i32* @MOS_WRITE, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @send_mos_cmd(%struct.usb_serial* %53, i32 %54, i32 %55, i32 4, i8* %6)
  store i8 0, i8* %6, align 1
  %57 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %58 = load i32, i32* @MOS_READ, align 4
  %59 = load i32, i32* @MOS_MAX_PORT, align 4
  %60 = call i32 @send_mos_cmd(%struct.usb_serial* %57, i32 %58, i32 %59, i32 8, i8* %6)
  store i8 0, i8* %6, align 1
  %61 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %62 = load i32, i32* @MOS_WRITE, align 4
  %63 = load i32, i32* @MOS_MAX_PORT, align 4
  %64 = call i32 @send_mos_cmd(%struct.usb_serial* %61, i32 %62, i32 %63, i32 8, i8* %6)
  %65 = load i32, i32* %5, align 4
  %66 = mul i32 %65, 16
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  %68 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %69 = load i32, i32* @MOS_WRITE, align 4
  %70 = load i32, i32* @MOS_MAX_PORT, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @send_mos_cmd(%struct.usb_serial* %68, i32 %69, i32 %70, i32 %72, i8* %6)
  store i8 3, i8* %6, align 1
  %74 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %75 = load i32, i32* @MOS_READ, align 4
  %76 = load i32, i32* @MOS_MAX_PORT, align 4
  %77 = call i32 @send_mos_cmd(%struct.usb_serial* %74, i32 %75, i32 %76, i32 8, i8* %6)
  store i8 3, i8* %6, align 1
  %78 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %79 = load i32, i32* @MOS_WRITE, align 4
  %80 = load i32, i32* @MOS_MAX_PORT, align 4
  %81 = call i32 @send_mos_cmd(%struct.usb_serial* %78, i32 %79, i32 %80, i32 8, i8* %6)
  store i8 43, i8* %6, align 1
  %82 = load i8, i8* %6, align 1
  %83 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %84 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %83, i32 0, i32 0
  store i8 %82, i8* %84, align 8
  %85 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %86 = load i32, i32* @MOS_WRITE, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @send_mos_cmd(%struct.usb_serial* %85, i32 %86, i32 %87, i32 4, i8* %6)
  store i8 43, i8* %6, align 1
  %89 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %90 = load i32, i32* @MOS_WRITE, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @send_mos_cmd(%struct.usb_serial* %89, i32 %90, i32 %91, i32 4, i8* %6)
  %93 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %94 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %93, i32 0, i32 1
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = load i8, i8* @UART_LCR_DLAB, align 1
  %98 = zext i8 %97 to i32
  %99 = or i32 %96, %98
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %6, align 1
  %101 = load i8, i8* %6, align 1
  %102 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %103 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %102, i32 0, i32 1
  store i8 %101, i8* %103, align 1
  %104 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %105 = load i32, i32* @MOS_WRITE, align 4
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @send_mos_cmd(%struct.usb_serial* %104, i32 %105, i32 %106, i32 3, i8* %6)
  store i8 1, i8* %6, align 1
  %108 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %109 = load i32, i32* @MOS_WRITE, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @send_mos_cmd(%struct.usb_serial* %108, i32 %109, i32 %110, i32 0, i8* %6)
  store i8 0, i8* %6, align 1
  %112 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %113 = load i32, i32* @MOS_WRITE, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @send_mos_cmd(%struct.usb_serial* %112, i32 %113, i32 %114, i32 1, i8* %6)
  %116 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %117 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %116, i32 0, i32 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i8, i8* @UART_LCR_DLAB, align 1
  %121 = zext i8 %120 to i32
  %122 = xor i32 %121, -1
  %123 = and i32 %119, %122
  %124 = trunc i32 %123 to i8
  store i8 %124, i8* %6, align 1
  %125 = load i8, i8* %6, align 1
  %126 = load %struct.moschip_port*, %struct.moschip_port** %4, align 8
  %127 = getelementptr inbounds %struct.moschip_port, %struct.moschip_port* %126, i32 0, i32 1
  store i8 %125, i8* %127, align 1
  %128 = load %struct.usb_serial*, %struct.usb_serial** %8, align 8
  %129 = load i32, i32* @MOS_WRITE, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @send_mos_cmd(%struct.usb_serial* %128, i32 %129, i32 %130, i32 3, i8* %6)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %15, %12
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @send_mos_cmd(%struct.usb_serial*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
