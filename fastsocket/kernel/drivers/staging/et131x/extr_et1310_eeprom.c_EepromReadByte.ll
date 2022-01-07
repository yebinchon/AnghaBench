; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_eeprom.c_EepromReadByte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_eeprom.c_EepromReadByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@MAX_NUM_REGISTER_POLLS = common dso_local global i32 0, align 4
@LBCIF_DWORD1_GROUP_OFFSET = common dso_local global i32 0, align 4
@LBCIF_STATUS_PHY_QUEUE_AVAIL = common dso_local global i32 0, align 4
@LBCIF_STATUS_I2C_IDLE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@LBCIF_CONTROL_LBCIF_ENABLE = common dso_local global i32 0, align 4
@LBCIF_CONTROL_REGISTER_OFFSET = common dso_local global i32 0, align 4
@LBCIF_ADDRESS_REGISTER_OFFSET = common dso_local global i32 0, align 4
@LBCIF_STATUS_ACK_ERROR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EepromReadByte(%struct.et131x_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.et131x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %41, %3
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %23 = load i32, i32* @LBCIF_DWORD1_GROUP_OFFSET, align 4
  %24 = call i64 @pci_read_config_dword(%struct.pci_dev* %22, i32 %23, i32* %13)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @EXTRACT_STATUS_REGISTER(i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @LBCIF_STATUS_PHY_QUEUE_AVAIL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @LBCIF_STATUS_I2C_IDLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %44

40:                                               ; preds = %34, %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %17

44:                                               ; preds = %39, %26, %17
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %44
  %52 = load i32, i32* @FAILURE, align 4
  store i32 %52, i32* %4, align 4
  br label %123

53:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %54 = load i32, i32* @LBCIF_CONTROL_LBCIF_ENABLE, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %58 = load i32, i32* @LBCIF_CONTROL_REGISTER_OFFSET, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i64 @pci_write_config_byte(%struct.pci_dev* %57, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @FAILURE, align 4
  store i32 %63, i32* %4, align 4
  br label %123

64:                                               ; preds = %53
  %65 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %66 = load i32, i32* @LBCIF_ADDRESS_REGISTER_OFFSET, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @pci_write_config_dword(%struct.pci_dev* %65, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @FAILURE, align 4
  store i32 %71, i32* %4, align 4
  br label %123

72:                                               ; preds = %64
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %97, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %79 = load i32, i32* @LBCIF_DWORD1_GROUP_OFFSET, align 4
  %80 = call i64 @pci_read_config_dword(%struct.pci_dev* %78, i32 %79, i32* %13)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  store i32 1, i32* %10, align 4
  br label %100

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @EXTRACT_STATUS_REGISTER(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @LBCIF_STATUS_PHY_QUEUE_AVAIL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @LBCIF_STATUS_I2C_IDLE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %100

96:                                               ; preds = %90, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %73

100:                                              ; preds = %95, %82, %73
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %106 = icmp sge i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103, %100
  %108 = load i32, i32* @FAILURE, align 4
  store i32 %108, i32* %4, align 4
  br label %123

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @EXTRACT_DATA_REGISTER(i32 %110)
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @LBCIF_STATUS_ACK_ERROR, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = load i32, i32* @FAILURE, align 4
  br label %121

119:                                              ; preds = %109
  %120 = load i32, i32* @SUCCESS, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %107, %70, %62, %51
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @EXTRACT_STATUS_REGISTER(i32) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @EXTRACT_DATA_REGISTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
