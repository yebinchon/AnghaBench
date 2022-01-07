; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_hw_dac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_hw_dac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i64 }
%struct.dac_conf = type { i32 }

@CTSB055X = common dso_local global i64 0, align 8
@GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.dac_conf*)* @hw_dac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_dac_init(%struct.hw* %0, %struct.dac_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.dac_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.dac_conf* %1, %struct.dac_conf** %5, align 8
  %9 = load %struct.hw*, %struct.hw** %4, align 8
  %10 = getelementptr inbounds %struct.hw, %struct.hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CTSB055X, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.hw*, %struct.hw** %4, align 8
  %16 = load i32, i32* @GPIO, align 4
  %17 = call i64 @hw_read_20kx(%struct.hw* %15, i32 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 65471
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load %struct.hw*, %struct.hw** %4, align 8
  %24 = load i32, i32* @GPIO, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @hw_write_20kx(%struct.hw* %23, i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %88

27:                                               ; preds = %2
  %28 = load %struct.hw*, %struct.hw** %4, align 8
  %29 = load i32, i32* @GPIO, align 4
  %30 = call i64 @hw_read_20kx(%struct.hw* %28, i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 65471
  store i32 %33, i32* %7, align 4
  %34 = load %struct.hw*, %struct.hw** %4, align 8
  %35 = load i32, i32* @GPIO, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @hw_write_20kx(%struct.hw* %34, i32 %35, i32 %36)
  %38 = load %struct.hw*, %struct.hw** %4, align 8
  %39 = call i32 @hw_reset_dac(%struct.hw* %38)
  %40 = load %struct.hw*, %struct.hw** %4, align 8
  %41 = call i64 @i2c_unlock(%struct.hw* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %88

44:                                               ; preds = %27
  %45 = load %struct.hw*, %struct.hw** %4, align 8
  %46 = call i32 @hw_write_pci(%struct.hw* %45, i32 236, i32 5)
  br label %47

47:                                               ; preds = %50, %44
  %48 = load %struct.hw*, %struct.hw** %4, align 8
  %49 = call i32 @hw_read_pci(%struct.hw* %48, i32 236)
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, 8388608
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br i1 %54, label %47, label %55

55:                                               ; preds = %50
  %56 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %57 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %62 [
    i32 1, label %59
    i32 2, label %60
    i32 4, label %61
  ]

59:                                               ; preds = %55
  store i32 36, i32* %6, align 4
  br label %63

60:                                               ; preds = %55
  store i32 37, i32* %6, align 4
  br label %63

61:                                               ; preds = %55
  store i32 38, i32* %6, align 4
  br label %63

62:                                               ; preds = %55
  store i32 36, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %61, %60, %59
  %64 = load %struct.hw*, %struct.hw** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @i2c_write(%struct.hw* %64, i32 1572992, i32 6, i32 %65)
  %67 = load %struct.hw*, %struct.hw** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @i2c_write(%struct.hw* %67, i32 1572992, i32 9, i32 %68)
  %70 = load %struct.hw*, %struct.hw** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @i2c_write(%struct.hw* %70, i32 1572992, i32 12, i32 %71)
  %73 = load %struct.hw*, %struct.hw** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @i2c_write(%struct.hw* %73, i32 1572992, i32 15, i32 %74)
  %76 = load %struct.hw*, %struct.hw** %4, align 8
  %77 = call i32 @i2c_lock(%struct.hw* %76)
  %78 = load %struct.hw*, %struct.hw** %4, align 8
  %79 = load i32, i32* @GPIO, align 4
  %80 = call i64 @hw_read_20kx(%struct.hw* %78, i32 %79)
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, 64
  store i32 %83, i32* %7, align 4
  %84 = load %struct.hw*, %struct.hw** %4, align 8
  %85 = load i32, i32* @GPIO, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @hw_write_20kx(%struct.hw* %84, i32 %85, i32 %86)
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %63, %43, %14
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @hw_read_20kx(%struct.hw*, i32) #1

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_reset_dac(%struct.hw*) #1

declare dso_local i64 @i2c_unlock(%struct.hw*) #1

declare dso_local i32 @hw_write_pci(%struct.hw*, i32, i32) #1

declare dso_local i32 @hw_read_pci(%struct.hw*, i32) #1

declare dso_local i32 @i2c_write(%struct.hw*, i32, i32, i32) #1

declare dso_local i32 @i2c_lock(%struct.hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
