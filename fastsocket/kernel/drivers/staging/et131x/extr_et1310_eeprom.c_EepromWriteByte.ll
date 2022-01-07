; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_eeprom.c_EepromWriteByte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_eeprom.c_EepromWriteByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.pci_dev* }
%struct.pci_dev = type { i64 }

@MAX_NUM_REGISTER_POLLS = common dso_local global i32 0, align 4
@LBCIF_DWORD1_GROUP_OFFSET = common dso_local global i32 0, align 4
@LBCIF_STATUS_PHY_QUEUE_AVAIL = common dso_local global i32 0, align 4
@LBCIF_STATUS_I2C_IDLE = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@LBCIF_CONTROL_LBCIF_ENABLE = common dso_local global i32 0, align 4
@LBCIF_CONTROL_I2C_WRITE = common dso_local global i32 0, align 4
@LBCIF_CONTROL_REGISTER_OFFSET = common dso_local global i32 0, align 4
@MAX_NUM_WRITE_RETRIES = common dso_local global i32 0, align 4
@LBCIF_ADDRESS_REGISTER_OFFSET = common dso_local global i32 0, align 4
@LBCIF_DATA_REGISTER_OFFSET = common dso_local global i32 0, align 4
@LBCIF_STATUS_GENERAL_ERROR = common dso_local global i32 0, align 4
@LBCIF_STATUS_ACK_ERROR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @EepromWriteByte(%struct.et131x_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.et131x_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %45, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %48

25:                                               ; preds = %21
  %26 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %27 = load i32, i32* @LBCIF_DWORD1_GROUP_OFFSET, align 4
  %28 = call i64 @pci_read_config_dword(%struct.pci_dev* %26, i32 %27, i32* %16)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  br label %48

31:                                               ; preds = %25
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @EXTRACT_STATUS_REGISTER(i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @LBCIF_STATUS_PHY_QUEUE_AVAIL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @LBCIF_STATUS_I2C_IDLE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %21

48:                                               ; preds = %43, %30, %21
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @FAILURE, align 4
  store i32 %56, i32* %4, align 4
  br label %205

57:                                               ; preds = %51
  store i32 0, i32* %14, align 4
  %58 = load i32, i32* @LBCIF_CONTROL_LBCIF_ENABLE, align 4
  %59 = load i32, i32* @LBCIF_CONTROL_I2C_WRITE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %64 = load i32, i32* @LBCIF_CONTROL_REGISTER_OFFSET, align 4
  %65 = load i32, i32* %14, align 4
  %66 = call i64 @pci_write_config_byte(%struct.pci_dev* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @FAILURE, align 4
  store i32 %69, i32* %4, align 4
  br label %205

70:                                               ; preds = %57
  store i32 1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %146, %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @MAX_NUM_WRITE_RETRIES, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %149

75:                                               ; preds = %71
  %76 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %77 = load i32, i32* @LBCIF_ADDRESS_REGISTER_OFFSET, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @pci_write_config_dword(%struct.pci_dev* %76, i32 %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %149

82:                                               ; preds = %75
  %83 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %84 = load i32, i32* @LBCIF_DATA_REGISTER_OFFSET, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @pci_write_config_byte(%struct.pci_dev* %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %149

89:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %90

90:                                               ; preds = %114, %89
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %117

94:                                               ; preds = %90
  %95 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %96 = load i32, i32* @LBCIF_DWORD1_GROUP_OFFSET, align 4
  %97 = call i64 @pci_read_config_dword(%struct.pci_dev* %95, i32 %96, i32* %16)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 1, i32* %11, align 4
  br label %117

100:                                              ; preds = %94
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @EXTRACT_STATUS_REGISTER(i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @LBCIF_STATUS_PHY_QUEUE_AVAIL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @LBCIF_STATUS_I2C_IDLE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %117

113:                                              ; preds = %107, %100
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %90

117:                                              ; preds = %112, %99, %90
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @MAX_NUM_REGISTER_POLLS, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %117
  br label %149

125:                                              ; preds = %120
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @LBCIF_STATUS_GENERAL_ERROR, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %125
  %131 = load %struct.et131x_adapter*, %struct.et131x_adapter** %5, align 8
  %132 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %131, i32 0, i32 0
  %133 = load %struct.pci_dev*, %struct.pci_dev** %132, align 8
  %134 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %149

138:                                              ; preds = %130, %125
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @LBCIF_STATUS_ACK_ERROR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @udelay(i32 10)
  br label %146

145:                                              ; preds = %138
  store i32 1, i32* %13, align 4
  br label %149

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %71

149:                                              ; preds = %145, %137, %124, %88, %81, %71
  %150 = call i32 @udelay(i32 10)
  store i32 0, i32* %9, align 4
  br label %151

151:                                              ; preds = %193, %149
  %152 = load i32, i32* %12, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %196

154:                                              ; preds = %151
  %155 = load i32, i32* @LBCIF_CONTROL_I2C_WRITE, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %14, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %14, align 4
  %159 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %160 = load i32, i32* @LBCIF_CONTROL_REGISTER_OFFSET, align 4
  %161 = load i32, i32* %14, align 4
  %162 = call i64 @pci_write_config_byte(%struct.pci_dev* %159, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  store i32 0, i32* %13, align 4
  br label %165

165:                                              ; preds = %164, %154
  br label %166

166:                                              ; preds = %180, %165
  %167 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %168 = load i32, i32* @LBCIF_ADDRESS_REGISTER_OFFSET, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i64 @pci_write_config_dword(%struct.pci_dev* %167, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %175, %166
  %172 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %173 = load i32, i32* @LBCIF_DATA_REGISTER_OFFSET, align 4
  %174 = call i64 @pci_read_config_dword(%struct.pci_dev* %172, i32 %173, i32* %17)
  br label %175

175:                                              ; preds = %171
  %176 = load i32, i32* %17, align 4
  %177 = and i32 %176, 65536
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %171, label %179

179:                                              ; preds = %175
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %17, align 4
  %182 = and i32 %181, 262144
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %166, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %17, align 4
  %186 = call i32 @EXTRACT_CONTROL_REG(i32 %185)
  store i32 %186, i32* %14, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 192
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = load i32, i32* %9, align 4
  %191 = icmp eq i32 %190, 10000
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %184
  br label %196

193:                                              ; preds = %189
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %9, align 4
  br label %151

196:                                              ; preds = %192, %151
  %197 = load i32, i32* %13, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* @SUCCESS, align 4
  br label %203

201:                                              ; preds = %196
  %202 = load i32, i32* @FAILURE, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %203, %68, %55
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @EXTRACT_STATUS_REGISTER(i32) #1

declare dso_local i64 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @EXTRACT_CONTROL_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
