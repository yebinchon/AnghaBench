; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_get_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_get_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"cannot find bridge device\0A\00", align 1
@INTEL_GMCH_CTRL = common dso_local global i32 0, align 4
@INTEL_GMCH_MEM_MASK = common dso_local global i32 0, align 4
@INTEL_GMCH_MEM_64M = common dso_local global i32 0, align 4
@INTEL_830_GMCH_GMS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"only local memory found\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"video memory is disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unexpected GMCH_GMS value: 0x%02x\0A\00", align 1
@INTEL_855_GMCH_GMS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_get_memory(%struct.pci_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = icmp ne %struct.pci_dev* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %13, %3
  store i32 1, i32* %4, align 4
  br label %153

20:                                               ; preds = %16
  %21 = call i32 @PCI_DEVFN(i32 0, i32 0)
  %22 = call %struct.pci_dev* @pci_get_bus_and_slot(i32 0, i32 %21)
  store %struct.pci_dev* %22, %struct.pci_dev** %8, align 8
  %23 = icmp ne %struct.pci_dev* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %153

26:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %28 = load i32, i32* @INTEL_GMCH_CTRL, align 4
  %29 = call i32 @pci_read_config_word(%struct.pci_dev* %27, i32 %28, i32* %9)
  %30 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %31 = call i32 @pci_dev_put(%struct.pci_dev* %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %47 [
    i32 134, label %35
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
  ]

35:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i32 @pci_resource_start(%struct.pci_dev* %36, i32 2)
  %38 = and i32 %37, 134217728
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = call i32 @MB(i32 128)
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %35
  %44 = call i32 @MB(i32 256)
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %40
  br label %60

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @INTEL_GMCH_MEM_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @INTEL_GMCH_MEM_64M, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i32 @MB(i32 64)
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %59

56:                                               ; preds = %47
  %57 = call i32 @MB(i32 128)
  %58 = load i32*, i32** %6, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MB(i32 1)
  %64 = sdiv i32 %62, %63
  %65 = add nsw i32 %64, 4
  store i32 %65, i32* %10, align 4
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %100 [
    i32 136, label %69
    i32 135, label %69
  ]

69:                                               ; preds = %60, %60
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @INTEL_830_GMCH_GMS_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %95 [
    i32 146, label %73
    i32 147, label %79
    i32 145, label %85
    i32 148, label %91
    i32 149, label %93
  ]

73:                                               ; preds = %69
  %74 = call i32 @KB(i32 512)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @KB(i32 %75)
  %77 = sub nsw i32 %74, %76
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  store i32 0, i32* %4, align 4
  br label %153

79:                                               ; preds = %69
  %80 = call i32 @MB(i32 1)
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @KB(i32 %81)
  %83 = sub nsw i32 %80, %82
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %4, align 4
  br label %153

85:                                               ; preds = %69
  %86 = call i32 @MB(i32 8)
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @KB(i32 %87)
  %89 = sub nsw i32 %86, %88
  %90 = load i32*, i32** %7, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %153

91:                                               ; preds = %69
  %92 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %153

93:                                               ; preds = %69
  %94 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %153

95:                                               ; preds = %69
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @INTEL_830_GMCH_GMS_MASK, align 4
  %98 = and i32 %96, %97
  %99 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  store i32 1, i32* %4, align 4
  br label %153

100:                                              ; preds = %60
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* @INTEL_855_GMCH_GMS_MASK, align 4
  %103 = and i32 %101, %102
  switch i32 %103, label %148 [
    i32 142, label %104
    i32 140, label %110
    i32 139, label %116
    i32 143, label %122
    i32 141, label %128
    i32 138, label %134
    i32 137, label %140
    i32 144, label %146
  ]

104:                                              ; preds = %100
  %105 = call i32 @MB(i32 1)
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @KB(i32 %106)
  %108 = sub nsw i32 %105, %107
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  store i32 0, i32* %4, align 4
  br label %153

110:                                              ; preds = %100
  %111 = call i32 @MB(i32 4)
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @KB(i32 %112)
  %114 = sub nsw i32 %111, %113
  %115 = load i32*, i32** %7, align 8
  store i32 %114, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %153

116:                                              ; preds = %100
  %117 = call i32 @MB(i32 8)
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @KB(i32 %118)
  %120 = sub nsw i32 %117, %119
  %121 = load i32*, i32** %7, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %4, align 4
  br label %153

122:                                              ; preds = %100
  %123 = call i32 @MB(i32 16)
  %124 = load i32, i32* %10, align 4
  %125 = call i32 @KB(i32 %124)
  %126 = sub nsw i32 %123, %125
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  store i32 0, i32* %4, align 4
  br label %153

128:                                              ; preds = %100
  %129 = call i32 @MB(i32 32)
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @KB(i32 %130)
  %132 = sub nsw i32 %129, %131
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  store i32 0, i32* %4, align 4
  br label %153

134:                                              ; preds = %100
  %135 = call i32 @MB(i32 48)
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @KB(i32 %136)
  %138 = sub nsw i32 %135, %137
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  store i32 0, i32* %4, align 4
  br label %153

140:                                              ; preds = %100
  %141 = call i32 @MB(i32 64)
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @KB(i32 %142)
  %144 = sub nsw i32 %141, %143
  %145 = load i32*, i32** %7, align 8
  store i32 %144, i32* %145, align 4
  store i32 0, i32* %4, align 4
  br label %153

146:                                              ; preds = %100
  %147 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %153

148:                                              ; preds = %100
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @INTEL_855_GMCH_GMS_MASK, align 4
  %151 = and i32 %149, %150
  %152 = call i32 (i8*, ...) @ERR_MSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %151)
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %148, %146, %140, %134, %128, %122, %116, %110, %104, %95, %93, %91, %85, %79, %73, %24, %19
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local %struct.pci_dev* @pci_get_bus_and_slot(i32, i32) #1

declare dso_local i32 @PCI_DEVFN(i32, i32) #1

declare dso_local i32 @ERR_MSG(i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @MB(i32) #1

declare dso_local i32 @KB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
