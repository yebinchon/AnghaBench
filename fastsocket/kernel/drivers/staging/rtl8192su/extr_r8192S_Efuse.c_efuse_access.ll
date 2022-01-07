; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_access.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@SYS_FUNC_EN = common dso_local global i32 0, align 4
@EFUSE_TEST = common dso_local global i32 0, align 4
@EFUSE_CLK_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efuse_access(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sgt i32 %14, 512
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %92

17:                                               ; preds = %5
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load i32, i32* @SYS_FUNC_EN, align 4
  %20 = add nsw i32 %19, 1
  %21 = call i32 @read_nic_byte(%struct.net_device* %18, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = or i32 %22, 32
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %17
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = load i32, i32* @SYS_FUNC_EN, align 4
  %30 = add nsw i32 %29, 1
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @write_nic_byte(%struct.net_device* %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %17
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load i32, i32* @EFUSE_TEST, align 4
  %36 = add nsw i32 %35, 3
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = load i32, i32* @EFUSE_TEST, align 4
  %39 = add nsw i32 %38, 3
  %40 = call i32 @read_nic_byte(%struct.net_device* %37, i32 %39)
  %41 = or i32 %40, 128
  %42 = call i32 @write_nic_byte(%struct.net_device* %34, i32 %36, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = load i32, i32* @EFUSE_CLK_CTRL, align 4
  %45 = load %struct.net_device*, %struct.net_device** %6, align 8
  %46 = load i32, i32* @EFUSE_CLK_CTRL, align 4
  %47 = call i32 @read_nic_byte(%struct.net_device* %45, i32 %46)
  %48 = or i32 %47, 3
  %49 = call i32 @write_nic_byte(%struct.net_device* %43, i32 %44, i32 %48)
  store i32 0, i32* %13, align 4
  br label %50

50:                                               ; preds = %65, %33
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @efuse_one_byte_rw(%struct.net_device* %55, i32 %56, i32 %59, i32* %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  br label %50

68:                                               ; preds = %50
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = load i32, i32* @EFUSE_TEST, align 4
  %71 = add nsw i32 %70, 3
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = load i32, i32* @EFUSE_TEST, align 4
  %74 = add nsw i32 %73, 3
  %75 = call i32 @read_nic_byte(%struct.net_device* %72, i32 %74)
  %76 = and i32 %75, 127
  %77 = call i32 @write_nic_byte(%struct.net_device* %69, i32 %71, i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = load i32, i32* @EFUSE_CLK_CTRL, align 4
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = load i32, i32* @EFUSE_CLK_CTRL, align 4
  %82 = call i32 @read_nic_byte(%struct.net_device* %80, i32 %81)
  %83 = and i32 %82, 253
  %84 = call i32 @write_nic_byte(%struct.net_device* %78, i32 %79, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %68
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @write_nic_byte(%struct.net_device* %89, i32 270860291, i32 %90)
  br label %92

92:                                               ; preds = %16, %88, %68
  ret void
}

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @efuse_one_byte_rw(%struct.net_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
