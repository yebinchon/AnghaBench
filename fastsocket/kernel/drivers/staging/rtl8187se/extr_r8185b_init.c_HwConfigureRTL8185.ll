; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_HwConfigureRTL8185.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_HwConfigureRTL8185.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@BRSR = common dso_local global i32 0, align 4
@CW_CONF = common dso_local global i32 0, align 4
@TXAGC_CTL = common dso_local global i32 0, align 4
@CCK_TXAGC = common dso_local global i32 0, align 4
@OFDM_TXAGC = common dso_local global i32 0, align 4
@ANTSEL = common dso_local global i32 0, align 4
@RATE_FALLBACK = common dso_local global i32 0, align 4
@RATE_FALLBACK_CTL_ENABLE = common dso_local global i32 0, align 4
@RATE_FALLBACK_CTL_AUTO_STEP1 = common dso_local global i32 0, align 4
@ARFR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HwConfigureRTL8185(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* @BRSR, align 4
  %10 = call i32 @write_nic_word(%struct.net_device* %8, i32 %9, i32 4095)
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @CW_CONF, align 4
  %13 = call i32 @read_nic_byte(%struct.net_device* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 253
  store i32 %18, i32* %7, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, 2
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = load i32, i32* @CW_CONF, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @write_nic_byte(%struct.net_device* %23, i32 %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = load i32, i32* @TXAGC_CTL, align 4
  %29 = call i32 @read_nic_byte(%struct.net_device* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %22
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = load i32, i32* @CCK_TXAGC, align 4
  %35 = call i32 @write_nic_byte(%struct.net_device* %33, i32 %34, i32 128)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @OFDM_TXAGC, align 4
  %38 = call i32 @write_nic_byte(%struct.net_device* %36, i32 %37, i32 128)
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 254
  store i32 %40, i32* %7, align 4
  br label %44

41:                                               ; preds = %22
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, 1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %41, %32
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = load i32, i32* @TXAGC_CTL, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @write_nic_byte(%struct.net_device* %45, i32 %46, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = load i32, i32* @TXAGC_CTL, align 4
  %51 = call i32 @read_nic_byte(%struct.net_device* %49, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = load i32, i32* @ANTSEL, align 4
  %57 = call i32 @write_nic_byte(%struct.net_device* %55, i32 %56, i32 0)
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 253
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %44
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 2
  %64 = and i32 %61, %63
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %54
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load i32, i32* @TXAGC_CTL, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @write_nic_byte(%struct.net_device* %66, i32 %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i32, i32* @RATE_FALLBACK, align 4
  %72 = call i32 @read_nic_byte(%struct.net_device* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, 124
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load i32, i32* @RATE_FALLBACK_CTL_ENABLE, align 4
  %79 = load i32, i32* @RATE_FALLBACK_CTL_AUTO_STEP1, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = load i32, i32* @ARFR, align 4
  %85 = call i32 @PlatformIOWrite2Byte(%struct.net_device* %83, i32 %84, i32 4095)
  br label %87

86:                                               ; preds = %65
  br label %87

87:                                               ; preds = %86, %77
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = load i32, i32* @RATE_FALLBACK, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @write_nic_byte(%struct.net_device* %88, i32 %89, i32 %90)
  ret void
}

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @PlatformIOWrite2Byte(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
