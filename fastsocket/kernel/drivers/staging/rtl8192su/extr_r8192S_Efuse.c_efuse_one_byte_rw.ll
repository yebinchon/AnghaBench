; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_one_byte_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_one_byte_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@EFUSE_CTRL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efuse_one_byte_rw(%struct.net_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load i64, i64* @EFUSE_CTRL, align 8
  %14 = add nsw i64 %13, 1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 255
  %17 = call i32 @write_nic_byte(%struct.net_device* %12, i64 %14, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 3
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i64, i64* @EFUSE_CTRL, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @read_nic_byte(%struct.net_device* %21, i64 %23)
  %25 = and i32 %24, 252
  %26 = or i32 %20, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load i64, i64* @EFUSE_CTRL, align 8
  %29 = add nsw i64 %28, 2
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @write_nic_byte(%struct.net_device* %27, i64 %29, i32 %30)
  %32 = load i32, i32* @TRUE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %68

35:                                               ; preds = %4
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load i64, i64* @EFUSE_CTRL, align 8
  %38 = add nsw i64 %37, 3
  %39 = call i32 @write_nic_byte(%struct.net_device* %36, i64 %38, i32 114)
  br label %40

40:                                               ; preds = %52, %35
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load i64, i64* @EFUSE_CTRL, align 8
  %43 = add nsw i64 %42, 3
  %44 = call i32 @read_nic_byte(%struct.net_device* %41, i64 %43)
  %45 = and i32 128, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 100
  br label %50

50:                                               ; preds = %47, %40
  %51 = phi i1 [ false, %40 ], [ %49, %47 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %40

55:                                               ; preds = %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 100
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load i64, i64* @EFUSE_CTRL, align 8
  %61 = call i32 @read_nic_byte(%struct.net_device* %59, i64 %60)
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @TRUE, align 4
  store i32 %63, i32* %9, align 4
  br label %67

64:                                               ; preds = %55
  %65 = load i32*, i32** %8, align 8
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %64, %58
  br label %106

68:                                               ; preds = %4
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = load i64, i64* @EFUSE_CTRL, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @write_nic_byte(%struct.net_device* %69, i64 %70, i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i64, i64* @EFUSE_CTRL, align 8
  %76 = add nsw i64 %75, 3
  %77 = call i32 @write_nic_byte(%struct.net_device* %74, i64 %76, i32 242)
  br label %78

78:                                               ; preds = %90, %68
  %79 = load %struct.net_device*, %struct.net_device** %5, align 8
  %80 = load i64, i64* @EFUSE_CTRL, align 8
  %81 = add nsw i64 %80, 3
  %82 = call i32 @read_nic_byte(%struct.net_device* %79, i64 %81)
  %83 = and i32 128, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 100
  br label %88

88:                                               ; preds = %85, %78
  %89 = phi i1 [ false, %78 ], [ %87, %85 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %78

93:                                               ; preds = %88
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 100
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = load i64, i64* @EFUSE_CTRL, align 8
  %99 = call i32 @read_nic_byte(%struct.net_device* %97, i64 %98)
  %100 = load i32*, i32** %8, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @TRUE, align 4
  store i32 %101, i32* %9, align 4
  br label %105

102:                                              ; preds = %93
  %103 = load i32*, i32** %8, align 8
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* @FALSE, align 4
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %67
  %107 = load i32, i32* %9, align 4
  ret i32 %107
}

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
