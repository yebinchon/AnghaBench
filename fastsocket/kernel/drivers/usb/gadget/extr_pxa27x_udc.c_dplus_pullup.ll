; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_dplus_pullup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_pxa27x_udc.c_dplus_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_udc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32)*, i32 }

@PXA2XX_UDC_CMD_CONNECT = common dso_local global i32 0, align 4
@PXA2XX_UDC_CMD_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa_udc*, i32)* @dplus_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dplus_pullup(%struct.pxa_udc* %0, i32 %1) #0 {
  %3 = alloca %struct.pxa_udc*, align 8
  %4 = alloca i32, align 4
  store %struct.pxa_udc* %0, %struct.pxa_udc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %46

7:                                                ; preds = %2
  %8 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %9 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @gpio_is_valid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %7
  %16 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %17 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %22 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @gpio_set_value(i32 %20, i32 %28)
  br label %30

30:                                               ; preds = %15, %7
  %31 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %32 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i32)*, i32 (i32)** %34, align 8
  %36 = icmp ne i32 (i32)* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %39 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load i32, i32* @PXA2XX_UDC_CMD_CONNECT, align 4
  %44 = call i32 %42(i32 %43)
  br label %45

45:                                               ; preds = %37, %30
  br label %82

46:                                               ; preds = %2
  %47 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %48 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @gpio_is_valid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %56 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %61 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @gpio_set_value(i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %54, %46
  %67 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %68 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32 (i32)*, i32 (i32)** %70, align 8
  %72 = icmp ne i32 (i32)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %75 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32 (i32)*, i32 (i32)** %77, align 8
  %79 = load i32, i32* @PXA2XX_UDC_CMD_DISCONNECT, align 4
  %80 = call i32 %78(i32 %79)
  br label %81

81:                                               ; preds = %73, %66
  br label %82

82:                                               ; preds = %81, %45
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.pxa_udc*, %struct.pxa_udc** %3, align 8
  %85 = getelementptr inbounds %struct.pxa_udc, %struct.pxa_udc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  ret void
}

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
