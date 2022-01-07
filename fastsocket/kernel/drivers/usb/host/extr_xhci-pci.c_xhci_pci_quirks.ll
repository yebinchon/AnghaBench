; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_quirks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_xhci-pci.c_xhci_pci_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.xhci_hcd = type { i32, i32, i32 }
%struct.pci_dev = type { i64, i64, i32 }

@PCI_VENDOR_ID_FRESCO_LOGIC = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_FRESCO_LOGIC_PDK = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_FRESCO_LOGIC_FL1400 = common dso_local global i64 0, align 8
@XHCI_RESET_EP_QUIRK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\0A\00", align 1
@XHCI_BROKEN_MSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"QUIRK: Fresco Logic revision %u has broken MSI implementation\0A\00", align 1
@XHCI_TRUST_TX_LENGTH = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NEC = common dso_local global i64 0, align 8
@XHCI_NEC_HOST = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@XHCI_AMD_0x96_HOST = common dso_local global i32 0, align 4
@XHCI_AMD_PLL_FIX = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_INTEL = common dso_local global i64 0, align 8
@XHCI_LPM_SUPPORT = common dso_local global i32 0, align 4
@XHCI_INTEL_HOST = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_PANTHERPOINT_XHCI = common dso_local global i64 0, align 8
@XHCI_SPURIOUS_SUCCESS = common dso_local global i32 0, align 4
@XHCI_EP_LIMIT_QUIRK = common dso_local global i32 0, align 4
@XHCI_SW_BW_CHECKING = common dso_local global i32 0, align 4
@XHCI_SPURIOUS_REBOOT = common dso_local global i32 0, align 4
@XHCI_AVOID_BEI = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ETRON = common dso_local global i64 0, align 8
@PCI_DEVICE_ID_ASROCK_P67 = common dso_local global i64 0, align 8
@XHCI_RESET_ON_RESUME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"QUIRK: Resetting on resume\0A\00", align 1
@PCI_VENDOR_ID_VIA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.xhci_hcd*)* @xhci_pci_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xhci_pci_quirks(%struct.device* %0, %struct.xhci_hcd* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.xhci_hcd* %1, %struct.xhci_hcd** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.pci_dev* @to_pci_dev(%struct.device* %6)
  store %struct.pci_dev* %7, %struct.pci_dev** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PCI_VENDOR_ID_FRESCO_LOGIC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI_DEVICE_ID_FRESCO_LOGIC_PDK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PCI_DEVICE_ID_FRESCO_LOGIC_FL1400, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %19, %13
  %26 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCI_DEVICE_ID_FRESCO_LOGIC_PDK, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load i32, i32* @XHCI_RESET_EP_QUIRK, align 4
  %38 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %39 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %43 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %42, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %36, %31, %25
  %45 = load i32, i32* @XHCI_BROKEN_MSI, align 4
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %47 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %50, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %56 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %57 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %44, %19, %2
  %61 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PCI_VENDOR_ID_NEC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @XHCI_NEC_HOST, align 4
  %68 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %69 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %80 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 150
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i32, i32* @XHCI_AMD_0x96_HOST, align 4
  %85 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %86 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %83, %78, %72
  %90 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = call i64 (...) @usb_amd_find_chipset_info()
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* @XHCI_AMD_PLL_FIX, align 4
  %100 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %101 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %95, %89
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @XHCI_LPM_SUPPORT, align 4
  %112 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %113 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  %116 = load i32, i32* @XHCI_INTEL_HOST, align 4
  %117 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %118 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %110, %104
  %122 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @PCI_VENDOR_ID_INTEL, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %161

127:                                              ; preds = %121
  %128 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @PCI_DEVICE_ID_INTEL_PANTHERPOINT_XHCI, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %161

133:                                              ; preds = %127
  %134 = load i32, i32* @XHCI_SPURIOUS_SUCCESS, align 4
  %135 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %136 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @XHCI_EP_LIMIT_QUIRK, align 4
  %140 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %141 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %145 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %144, i32 0, i32 1
  store i32 64, i32* %145, align 4
  %146 = load i32, i32* @XHCI_SW_BW_CHECKING, align 4
  %147 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %148 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  %151 = load i32, i32* @XHCI_SPURIOUS_REBOOT, align 4
  %152 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %153 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load i32, i32* @XHCI_AVOID_BEI, align 4
  %157 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %158 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %133, %127, %121
  %162 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %163 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PCI_VENDOR_ID_ETRON, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %161
  %168 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %169 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @PCI_DEVICE_ID_ASROCK_P67, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %167
  %174 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %175 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %176 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %180 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_dbg(%struct.xhci_hcd* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %181 = load i32, i32* @XHCI_TRUST_TX_LENGTH, align 4
  %182 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %183 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %173, %167, %161
  %187 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %188 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load i32, i32* @XHCI_RESET_ON_RESUME, align 4
  %194 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %195 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %186
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(%struct.device*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i64 @usb_amd_find_chipset_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
