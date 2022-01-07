; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_OneByteWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_OneByteWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @efuse_OneByteWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_OneByteWrite(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = load i64, i64* @EFUSE_CTRL, align 8
  %11 = add nsw i64 %10, 1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 255
  %14 = call i32 @write_nic_byte(%struct.net_device* %9, i64 %11, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = load i64, i64* @EFUSE_CTRL, align 8
  %17 = add nsw i64 %16, 2
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i64, i64* @EFUSE_CTRL, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @read_nic_byte(%struct.net_device* %18, i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 3
  %25 = or i32 %21, %24
  %26 = call i32 @write_nic_byte(%struct.net_device* %15, i64 %17, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load i64, i64* @EFUSE_CTRL, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @write_nic_byte(%struct.net_device* %27, i64 %28, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load i64, i64* @EFUSE_CTRL, align 8
  %33 = add nsw i64 %32, 3
  %34 = call i32 @write_nic_byte(%struct.net_device* %31, i64 %33, i32 242)
  br label %35

35:                                               ; preds = %47, %3
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load i64, i64* @EFUSE_CTRL, align 8
  %38 = add nsw i64 %37, 3
  %39 = call i32 @read_nic_byte(%struct.net_device* %36, i64 %38)
  %40 = and i32 128, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 100
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i1 [ false, %35 ], [ %44, %42 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %35

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp slt i32 %51, 100
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
