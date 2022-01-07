; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_Read1Byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_EFUSE_Read1Byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EFUSE_MAC_LEN = common dso_local global i32 0, align 4
@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EFUSE_Read1Byte(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @EFUSE_MAC_LEN, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %72

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load i64, i64* @EFUSE_CTRL, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @write_nic_byte(%struct.net_device* %16, i64 %18, i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load i64, i64* @EFUSE_CTRL, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @read_nic_byte(%struct.net_device* %21, i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 8
  %27 = and i32 %26, 3
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 252
  %30 = or i32 %27, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i64, i64* @EFUSE_CTRL, align 8
  %33 = add nsw i64 %32, 2
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @write_nic_byte(%struct.net_device* %31, i64 %33, i32 %34)
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load i64, i64* @EFUSE_CTRL, align 8
  %38 = add nsw i64 %37, 3
  %39 = call i32 @read_nic_byte(%struct.net_device* %36, i64 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 127
  store i32 %41, i32* %8, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load i64, i64* @EFUSE_CTRL, align 8
  %44 = add nsw i64 %43, 3
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @write_nic_byte(%struct.net_device* %42, i64 %44, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i64, i64* @EFUSE_CTRL, align 8
  %49 = add nsw i64 %48, 3
  %50 = call i32 @read_nic_byte(%struct.net_device* %47, i64 %49)
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %66, %13
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load i64, i64* @EFUSE_CTRL, align 8
  %59 = add nsw i64 %58, 3
  %60 = call i32 @read_nic_byte(%struct.net_device* %57, i64 %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp eq i32 %63, 1000
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %67

66:                                               ; preds = %56
  br label %51

67:                                               ; preds = %65, %51
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = load i64, i64* @EFUSE_CTRL, align 8
  %70 = call i32 @read_nic_byte(%struct.net_device* %68, i64 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %2
  store i32 255, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
