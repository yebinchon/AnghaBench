; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_Write1Byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_Write1Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EFUSE_MAC_LEN = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EFUSE_Write1Byte(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @EFUSE_MAC_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %71

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load i64, i64* @EFUSE_CTRL, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @write_nic_byte(%struct.net_device* %14, i64 %15, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i64, i64* @EFUSE_CTRL, align 8
  %22 = add nsw i64 %21, 1
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @write_nic_byte(%struct.net_device* %20, i64 %22, i32 %23)
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load i64, i64* @EFUSE_CTRL, align 8
  %27 = add nsw i64 %26, 2
  %28 = call i32 @read_nic_byte(%struct.net_device* %25, i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 3
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 252
  %34 = or i32 %31, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = load i64, i64* @EFUSE_CTRL, align 8
  %37 = add nsw i64 %36, 2
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @write_nic_byte(%struct.net_device* %35, i64 %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i64, i64* @EFUSE_CTRL, align 8
  %42 = add nsw i64 %41, 3
  %43 = call i32 @read_nic_byte(%struct.net_device* %40, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, 128
  store i32 %45, i32* %8, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i64, i64* @EFUSE_CTRL, align 8
  %48 = add nsw i64 %47, 3
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @write_nic_byte(%struct.net_device* %46, i64 %48, i32 %49)
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = load i64, i64* @EFUSE_CTRL, align 8
  %53 = add nsw i64 %52, 3
  %54 = call i32 @read_nic_byte(%struct.net_device* %51, i64 %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %69, %13
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, 128
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = load i64, i64* @EFUSE_CTRL, align 8
  %62 = add nsw i64 %61, 3
  %63 = call i32 @read_nic_byte(%struct.net_device* %60, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %66, 100
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %70

69:                                               ; preds = %59
  br label %55

70:                                               ; preds = %68, %55
  br label %71

71:                                               ; preds = %70, %3
  ret void
}

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
