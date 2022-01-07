; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_nv_driver.c_riva_get_memlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_nv_driver.c_riva_get_memlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.riva_par = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }

@NV_CHIP_IGEFORCE2 = common dso_local global i32 0, align 4
@NV_CHIP_0x01F0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @riva_get_memlen(%struct.riva_par* %0) #0 {
  %2 = alloca %struct.riva_par*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.riva_par* %0, %struct.riva_par** %2, align 8
  %8 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %9 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %8, i32 0, i32 1
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  store i64 0, i64* %4, align 8
  %10 = load %struct.riva_par*, %struct.riva_par** %2, align 8
  %11 = getelementptr inbounds %struct.riva_par, %struct.riva_par* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %141 [
    i32 132, label %16
    i32 131, label %60
    i32 130, label %91
    i32 129, label %91
    i32 128, label %91
  ]

16:                                               ; preds = %1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @NV_RD32(i32 %19, i32 0)
  %21 = and i32 %20, 32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %49

23:                                               ; preds = %16
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @NV_RD32(i32 %26, i32 0)
  %28 = and i32 %27, 240
  %29 = icmp eq i32 %28, 32
  br i1 %29, label %30, label %47

30:                                               ; preds = %23
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @NV_RD32(i32 %33, i32 0)
  %35 = and i32 %34, 15
  %36 = icmp sge i32 %35, 2
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NV_RD32(i32 %40, i32 0)
  %42 = and i32 %41, 3
  switch i32 %42, label %45 [
    i32 2, label %43
    i32 1, label %44
  ]

43:                                               ; preds = %37
  store i64 4096, i64* %4, align 8
  br label %46

44:                                               ; preds = %37
  store i64 2048, i64* %4, align 8
  br label %46

45:                                               ; preds = %37
  store i64 8192, i64* %4, align 8
  br label %46

46:                                               ; preds = %45, %44, %43
  br label %48

47:                                               ; preds = %30, %23
  store i64 8192, i64* %4, align 8
  br label %48

48:                                               ; preds = %47, %46
  br label %59

49:                                               ; preds = %16
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @NV_RD32(i32 %52, i32 0)
  %54 = and i32 %53, 3
  switch i32 %54, label %57 [
    i32 0, label %55
    i32 2, label %56
  ]

55:                                               ; preds = %49
  store i64 8192, i64* %4, align 8
  br label %58

56:                                               ; preds = %49
  store i64 4096, i64* %4, align 8
  br label %58

57:                                               ; preds = %49
  store i64 2048, i64* %4, align 8
  br label %58

58:                                               ; preds = %57, %56, %55
  br label %59

59:                                               ; preds = %58, %48
  br label %141

60:                                               ; preds = %1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @NV_RD32(i32 %63, i32 0)
  %65 = and i32 %64, 256
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @NV_RD32(i32 %70, i32 0)
  %72 = ashr i32 %71, 12
  %73 = and i32 %72, 15
  %74 = mul nsw i32 %73, 1024
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 %75, 2048
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %4, align 8
  br label %90

78:                                               ; preds = %60
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @NV_RD32(i32 %81, i32 0)
  %83 = and i32 %82, 3
  switch i32 %83, label %88 [
    i32 0, label %84
    i32 1, label %85
    i32 2, label %86
    i32 3, label %87
  ]

84:                                               ; preds = %78
  store i64 32768, i64* %4, align 8
  br label %89

85:                                               ; preds = %78
  store i64 4096, i64* %4, align 8
  br label %89

86:                                               ; preds = %78
  store i64 8192, i64* %4, align 8
  br label %89

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %78, %87
  store i64 16384, i64* %4, align 8
  br label %89

89:                                               ; preds = %88, %86, %85, %84
  br label %90

90:                                               ; preds = %89, %67
  br label %141

91:                                               ; preds = %1, %1, %1
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @NV_CHIP_IGEFORCE2, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %91
  %96 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %96, %struct.pci_dev** %6, align 8
  %97 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %98 = call i32 @pci_read_config_dword(%struct.pci_dev* %97, i32 124, i32* %7)
  %99 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %100 = call i32 @pci_dev_put(%struct.pci_dev* %99)
  %101 = load i32, i32* %7, align 4
  %102 = ashr i32 %101, 6
  %103 = and i32 %102, 31
  %104 = add nsw i32 %103, 1
  %105 = mul nsw i32 %104, 1024
  %106 = sext i32 %105 to i64
  store i64 %106, i64* %4, align 8
  br label %140

107:                                              ; preds = %91
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @NV_CHIP_0x01F0, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %112, %struct.pci_dev** %6, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %114 = call i32 @pci_read_config_dword(%struct.pci_dev* %113, i32 132, i32* %7)
  %115 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %116 = call i32 @pci_dev_put(%struct.pci_dev* %115)
  %117 = load i32, i32* %7, align 4
  %118 = ashr i32 %117, 4
  %119 = and i32 %118, 127
  %120 = add nsw i32 %119, 1
  %121 = mul nsw i32 %120, 1024
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %4, align 8
  br label %139

123:                                              ; preds = %107
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @NV_RD32(i32 %126, i32 524)
  %128 = ashr i32 %127, 20
  %129 = and i32 %128, 255
  switch i32 %129, label %137 [
    i32 2, label %130
    i32 4, label %131
    i32 8, label %132
    i32 16, label %133
    i32 32, label %134
    i32 64, label %135
    i32 128, label %136
  ]

130:                                              ; preds = %123
  store i64 2048, i64* %4, align 8
  br label %138

131:                                              ; preds = %123
  store i64 4096, i64* %4, align 8
  br label %138

132:                                              ; preds = %123
  store i64 8192, i64* %4, align 8
  br label %138

133:                                              ; preds = %123
  store i64 16384, i64* %4, align 8
  br label %138

134:                                              ; preds = %123
  store i64 32768, i64* %4, align 8
  br label %138

135:                                              ; preds = %123
  store i64 65536, i64* %4, align 8
  br label %138

136:                                              ; preds = %123
  store i64 131072, i64* %4, align 8
  br label %138

137:                                              ; preds = %123
  store i64 16384, i64* %4, align 8
  br label %138

138:                                              ; preds = %137, %136, %135, %134, %133, %132, %131, %130
  br label %139

139:                                              ; preds = %138, %111
  br label %140

140:                                              ; preds = %139, %95
  br label %141

141:                                              ; preds = %1, %140, %90, %59
  %142 = load i64, i64* %4, align 8
  ret i64 %142
}

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
