; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_find_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_find_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32, i32*, i32* }
%struct.pci_dev = type { i32 }

@ET1310_NMI_DISABLE = common dso_local global i32 0, align 4
@ET1310_PCI_EEPROM_STATUS = common dso_local global i32 0, align 4
@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Could not read PCI config space for EEPROM Status\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PCI_REVISION_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Could not read PCI config space for Revision ID\0A\00", align 1
@__const.et131x_find_adapter.temp = private unnamed_addr constant [4 x i32] [i32 254, i32 19, i32 16, i32 255], align 16
@.str.2 = private unnamed_addr constant [36 x i8] c"Fatal EEPROM Status Error - 0x%04x\0A\00", align 1
@ET1310_PCI_MAX_PYLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Could not read PCI config space for Max Payload Size\0A\00", align 1
@__const.et131x_find_adapter.AckNak = private unnamed_addr constant [2 x i32] [i32 118, i32 208], align 4
@__const.et131x_find_adapter.Replay = private unnamed_addr constant [2 x i32] [i32 480, i32 749], align 4
@ET1310_PCI_ACK_NACK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Could not write PCI config space for ACK/NAK\0A\00", align 1
@ET1310_PCI_REPLAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"Could not write PCI config space for Replay Timer\0A\00", align 1
@ET1310_PCI_L0L1LATENCY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Could not write PCI config space for Latency Timers\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Could not read PCI config space for Max read size\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"Could not write PCI config space for Max read size\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ET1310_PCI_MAC_ADDRESS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c";Could not read PCI config space for MAC address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_find_adapter(%struct.et131x_adapter* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.et131x_adapter*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* @ET1310_NMI_DISABLE, align 4
  %23 = call i32 @inb(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 243
  store i32 %25, i32* %11, align 4
  %26 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, 12
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %30, %21
  %34 = load i32, i32* @ET1310_NMI_DISABLE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @outb(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* @ET1310_PCI_EEPROM_STATUS, align 4
  %40 = call i32 @pci_read_config_byte(%struct.pci_dev* %38, i32 %39, i32* %7)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %42 = load i32, i32* @ET1310_PCI_EEPROM_STATUS, align 4
  %43 = call i32 @pci_read_config_byte(%struct.pci_dev* %41, i32 %42, i32* %7)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_err(i32* %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %261

53:                                               ; preds = %37
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 76
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %53
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = load i32, i32* @PCI_REVISION_ID, align 4
  %60 = call i32 @pci_read_config_byte(%struct.pci_dev* %58, i32 %59, i32* %10)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %261

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %90

73:                                               ; preds = %70
  %74 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %74, i8* align 16 bitcast ([4 x i32]* @__const.et131x_find_adapter.temp to i8*), i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %86, %73
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 3
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @EepromWriteByte(%struct.et131x_adapter* %79, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %78
  %87 = load i32, i32* %12, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %12, align 4
  br label %75

89:                                               ; preds = %75
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %261

100:                                              ; preds = %53
  %101 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %102 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  br label %103

103:                                              ; preds = %100
  %104 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %105 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %106 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @EepromReadByte(%struct.et131x_adapter* %104, i32 112, i32* %108)
  %110 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %111 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %112 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = call i32 @EepromReadByte(%struct.et131x_adapter* %110, i32 113, i32* %114)
  %116 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %117 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 205
  br i1 %121, label %122, label %127

122:                                              ; preds = %103
  %123 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %124 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 0, i32* %126, align 4
  br label %127

127:                                              ; preds = %122, %103
  %128 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %129 = load i32, i32* @ET1310_PCI_MAX_PYLD, align 4
  %130 = call i32 @pci_read_config_byte(%struct.pci_dev* %128, i32 %129, i32* %8)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = call i32 (i32*, i8*, ...) @dev_err(i32* %136, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %138 = load i32, i32* @EIO, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %261

140:                                              ; preds = %127
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, 7
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %182

145:                                              ; preds = %140
  %146 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 bitcast ([2 x i32]* @__const.et131x_find_adapter.AckNak to i8*), i64 8, i1 false)
  %147 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 bitcast ([2 x i32]* @__const.et131x_find_adapter.Replay to i8*), i64 8, i1 false)
  %148 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %149 = load i32, i32* @ET1310_PCI_ACK_NACK, align 4
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @pci_write_config_word(%struct.pci_dev* %148, i32 %149, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %157 = icmp ne i32 %155, %156
  br i1 %157, label %158, label %164

158:                                              ; preds = %145
  %159 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %160 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %159, i32 0, i32 0
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %160, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %162 = load i32, i32* @EIO, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %3, align 4
  br label %261

164:                                              ; preds = %145
  %165 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %166 = load i32, i32* @ET1310_PCI_REPLAY, align 4
  %167 = load i32, i32* %8, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @pci_write_config_word(%struct.pci_dev* %165, i32 %166, i32 %170)
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %164
  %176 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i32, i32* @EIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %261

181:                                              ; preds = %164
  br label %182

182:                                              ; preds = %181, %140
  %183 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %184 = load i32, i32* @ET1310_PCI_L0L1LATENCY, align 4
  %185 = call i32 @pci_write_config_byte(%struct.pci_dev* %183, i32 %184, i32 17)
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %191 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %190, i32 0, i32 0
  %192 = call i32 (i32*, i8*, ...) @dev_err(i32* %191, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %193 = load i32, i32* @EIO, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %3, align 4
  br label %261

195:                                              ; preds = %182
  %196 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %197 = call i32 @pci_read_config_byte(%struct.pci_dev* %196, i32 81, i32* %9)
  store i32 %197, i32* %6, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %203 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %202, i32 0, i32 0
  %204 = call i32 (i32*, i8*, ...) @dev_err(i32* %203, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %205 = load i32, i32* @EIO, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %261

207:                                              ; preds = %195
  %208 = load i32, i32* %9, align 4
  %209 = and i32 %208, 143
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = or i32 %210, 64
  store i32 %211, i32* %9, align 4
  %212 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @pci_write_config_byte(%struct.pci_dev* %212, i32 81, i32 %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %217 = icmp ne i32 %215, %216
  br i1 %217, label %218, label %224

218:                                              ; preds = %207
  %219 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 0
  %221 = call i32 (i32*, i8*, ...) @dev_err(i32* %220, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %222 = load i32, i32* @EIO, align 4
  %223 = sub nsw i32 0, %222
  store i32 %223, i32* %3, align 4
  br label %261

224:                                              ; preds = %207
  %225 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %226 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %260

229:                                              ; preds = %224
  store i32 0, i32* %16, align 4
  br label %230

230:                                              ; preds = %256, %229
  %231 = load i32, i32* %16, align 4
  %232 = load i32, i32* @ETH_ALEN, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %230
  %235 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %236 = load i32, i32* @ET1310_PCI_MAC_ADDRESS, align 4
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %236, %237
  %239 = load %struct.et131x_adapter*, %struct.et131x_adapter** %4, align 8
  %240 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = call i32 @pci_read_config_byte(%struct.pci_dev* %235, i32 %238, i32* %244)
  store i32 %245, i32* %6, align 4
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %234
  %250 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %251 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %250, i32 0, i32 0
  %252 = call i32 (i32*, i8*, ...) @dev_err(i32* %251, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %253 = load i32, i32* @EIO, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %3, align 4
  br label %261

255:                                              ; preds = %234
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %16, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %16, align 4
  br label %230

259:                                              ; preds = %230
  br label %260

260:                                              ; preds = %259, %224
  store i32 0, i32* %3, align 4
  br label %261

261:                                              ; preds = %260, %249, %218, %201, %189, %175, %158, %134, %91, %64, %47
  %262 = load i32, i32* %3, align 4
  ret i32 %262
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EepromWriteByte(%struct.et131x_adapter*, i32, i32) #1

declare dso_local i32 @EepromReadByte(%struct.et131x_adapter*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
