; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_nForceUpdateArbitrationSettings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/nvidia/extr_nv_hw.c_nForceUpdateArbitrationSettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_par = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"nvidiafb: your nForce DIMMs are not arranged in optimal banks!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, %struct.nvidia_par*)* @nForceUpdateArbitrationSettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nForceUpdateArbitrationSettings(i32 %0, i32 %1, i32* %2, i32* %3, %struct.nvidia_par* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nvidia_par*, align 8
  %11 = alloca %struct.TYPE_6__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.pci_dev*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.nvidia_par* %4, %struct.nvidia_par** %10, align 8
  %24 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %25 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 4080
  %28 = icmp eq i32 %27, 416
  br i1 %28, label %29, label %42

29:                                               ; preds = %5
  %30 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 3)
  store %struct.pci_dev* %30, %struct.pci_dev** %20, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %32 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %31, i32 108, i32* %21)
  %33 = load i32, i32* %21, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 15
  store i32 %35, i32* %21, align 4
  %36 = load i32, i32* %21, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  store i32 4, i32* %21, align 4
  br label %39

39:                                               ; preds = %38, %29
  %40 = load i32, i32* %21, align 4
  %41 = udiv i32 400000, %40
  store i32 %41, i32* %17, align 4
  br label %48

42:                                               ; preds = %5
  %43 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 5)
  store %struct.pci_dev* %43, %struct.pci_dev** %20, align 8
  %44 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %45 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %44, i32 76, i32* %17)
  %46 = load i32, i32* %17, align 4
  %47 = udiv i32 %46, 1000
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %42, %39
  %49 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %50 = call i32 @pci_dev_put(%struct.pci_dev* %49)
  %51 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %52 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NV_RD32(i32 %53, i32 1280)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = lshr i32 %55, 0
  %57 = and i32 %56, 255
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %16, align 4
  %59 = lshr i32 %58, 8
  %60 = and i32 %59, 255
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %16, align 4
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 15
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.nvidia_par*, %struct.nvidia_par** %10, align 8
  %66 = getelementptr inbounds %struct.nvidia_par, %struct.nvidia_par* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 %64, %67
  %69 = load i32, i32* %13, align 4
  %70 = udiv i32 %68, %69
  %71 = load i32, i32* %15, align 4
  %72 = lshr i32 %70, %71
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %7, align 4
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8 %74, i8* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 11
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 10
  store i64 0, i64* %77, align 8
  %78 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 1)
  store %struct.pci_dev* %78, %struct.pci_dev** %20, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %81 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %79, i32 124, i32* %80)
  %82 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %83 = call i32 @pci_dev_put(%struct.pci_dev* %82)
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 12
  %87 = and i32 %86, 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i32 64, i32* %89, align 8
  %90 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 3)
  store %struct.pci_dev* %90, %struct.pci_dev** %20, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %92 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %91, i32 0, i32* %19)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %94 = call i32 @pci_dev_put(%struct.pci_dev* %93)
  %95 = load i32, i32* %19, align 4
  %96 = lshr i32 %95, 16
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = icmp eq i32 %97, 425
  br i1 %98, label %105, label %99

99:                                               ; preds = %48
  %100 = load i32, i32* %19, align 4
  %101 = icmp eq i32 %100, 427
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %19, align 4
  %104 = icmp eq i32 %103, 493
  br i1 %104, label %105, label %144

105:                                              ; preds = %102, %99, %48
  %106 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 2)
  store %struct.pci_dev* %106, %struct.pci_dev** %20, align 8
  %107 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %109 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %107, i32 64, i32* %108)
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = ashr i32 %111, 8
  %113 = and i32 %112, 79
  %114 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  store i32 %113, i32* %114, align 4
  %115 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %117 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %115, i32 68, i32* %116)
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 8
  %121 = and i32 %120, 79
  %122 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %125 = call i32 (%struct.pci_dev*, i32, ...) @pci_read_config_dword(%struct.pci_dev* %123, i32 72, i32* %124)
  %126 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 8
  %129 = and i32 %128, 79
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 %129, i32* %130, align 4
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %132, %134
  %136 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %135, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %105
  %140 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %105
  %142 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  %143 = call i32 @pci_dev_put(%struct.pci_dev* %142)
  br label %144

144:                                              ; preds = %141, %102
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 3
  store i32 3, i32* %145, align 4
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32 1, i32* %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  store i32 10, i32* %147, align 4
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 9
  store i64 0, i64* %148, align 8
  %149 = load i32, i32* %6, align 4
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 6
  store i32 %149, i32* %150, align 8
  %151 = load i32, i32* %17, align 4
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %18, align 4
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 8
  store i32 %153, i32* %154, align 8
  %155 = call i32 @nv10CalcArbitration(%struct.TYPE_6__* %11, %struct.TYPE_5__* %12)
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %177

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = ashr i32 %161, 4
  store i32 %162, i32* %23, align 4
  %163 = load i32*, i32** %8, align 8
  store i32 0, i32* %163, align 4
  br label %164

164:                                              ; preds = %168, %159
  %165 = load i32, i32* %23, align 4
  %166 = ashr i32 %165, 1
  store i32 %166, i32* %23, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %169, align 4
  br label %164

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 3
  %176 = load i32*, i32** %9, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %172, %144
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, ...) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @NV_RD32(i32, i32) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nv10CalcArbitration(%struct.TYPE_6__*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
