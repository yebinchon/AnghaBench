; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_rxfifo_read_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_amd5536udc.c_udc_rxfifo_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udc = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"udc_read_bytes(): %d bytes\0A\00", align 1
@UDC_DWORD_BYTES = common dso_local global i32 0, align 4
@UDC_BYTE_MASK = common dso_local global i32 0, align 4
@UDC_BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udc*, i64*, i32)* @udc_rxfifo_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udc_rxfifo_read_bytes(%struct.udc* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.udc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.udc* %0, %struct.udc** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.udc*, %struct.udc** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @VDBG(%struct.udc* %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @UDC_DWORD_BYTES, align 4
  %17 = sdiv i32 %15, %16
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load %struct.udc*, %struct.udc** %4, align 8
  %21 = getelementptr inbounds %struct.udc, %struct.udc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readl(i32 %22)
  %24 = load i64*, i64** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = bitcast i64* %28 to i32*
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @UDC_DWORD_BYTES, align 4
  %36 = srem i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %33
  %39 = load %struct.udc*, %struct.udc** %4, align 8
  %40 = getelementptr inbounds %struct.udc, %struct.udc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @readl(i32 %41)
  store i32 %42, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %65, %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @UDC_DWORD_BYTES, align 4
  %47 = srem i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @UDC_BYTE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = shl i32 %55, 2
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %53, i64* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @UDC_BITS_PER_BYTE, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %43

68:                                               ; preds = %43
  br label %69

69:                                               ; preds = %68, %33
  ret i32 0
}

declare dso_local i32 @VDBG(%struct.udc*, i8*, i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
