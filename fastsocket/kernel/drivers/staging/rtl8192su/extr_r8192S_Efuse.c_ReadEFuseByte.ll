; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_ReadEFuseByte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_ReadEFuseByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadEFuseByte(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = load i64, i64* @EFUSE_CTRL, align 8
  %12 = add nsw i64 %11, 1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 255
  %15 = call i32 @write_nic_byte(%struct.net_device* %10, i64 %12, i32 %14)
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load i64, i64* @EFUSE_CTRL, align 8
  %18 = add nsw i64 %17, 2
  %19 = call i32 @read_nic_byte(%struct.net_device* %16, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load i64, i64* @EFUSE_CTRL, align 8
  %22 = add nsw i64 %21, 2
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 3
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, 252
  %28 = or i32 %25, %27
  %29 = call i32 @write_nic_byte(%struct.net_device* %20, i64 %22, i32 %28)
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load i64, i64* @EFUSE_CTRL, align 8
  %32 = add nsw i64 %31, 3
  %33 = call i32 @read_nic_byte(%struct.net_device* %30, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i64, i64* @EFUSE_CTRL, align 8
  %36 = add nsw i64 %35, 3
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 127
  %39 = call i32 @write_nic_byte(%struct.net_device* %34, i64 %36, i32 %38)
  store i32 0, i32* %9, align 4
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = load i64, i64* @EFUSE_CTRL, align 8
  %42 = call i32 @read_nic_dword(%struct.net_device* %40, i64 %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %54, %3
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 24
  %46 = and i32 %45, 255
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 10000
  br label %52

52:                                               ; preds = %49, %43
  %53 = phi i1 [ false, %43 ], [ %51, %49 ]
  br i1 %53, label %54, label %60

54:                                               ; preds = %52
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i64, i64* @EFUSE_CTRL, align 8
  %57 = call i32 @read_nic_dword(%struct.net_device* %55, i64 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %43

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 255
  %63 = load i32*, i32** %6, align 8
  store i32 %62, i32* %63, align 4
  ret void
}

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

declare dso_local i32 @read_nic_dword(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
