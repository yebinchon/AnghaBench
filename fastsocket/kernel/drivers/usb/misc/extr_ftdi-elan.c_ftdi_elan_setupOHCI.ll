; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_setupOHCI.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_setupOHCI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@PCI_VENDOR_ID_OPTI = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_NEC = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_ATT = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i32 0, align 4
@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_COMPAQ = common dso_local global i32 0, align 4
@OHCI_QUIRK_ZFMICRO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_setupOHCI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_setupOHCI(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %16 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %149, %1
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %152

20:                                               ; preds = %17
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = shl i32 %21, 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @ftdi_elan_read_config(%struct.usb_ftdi* %23, i32 %26, i32 0, i32* %5)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %186

32:                                               ; preds = %20
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 65535
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 65535
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* @PCI_VENDOR_ID_OPTI, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 51297
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @ftdi_elan_found_controller(%struct.usb_ftdi* %45, i32 %46, i32 0)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %130

50:                                               ; preds = %41, %32
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @PCI_VENDOR_ID_NEC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 53
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ftdi_elan_found_controller(%struct.usb_ftdi* %58, i32 %59, i32 0)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %129

63:                                               ; preds = %54, %50
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @PCI_VENDOR_ID_AL, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 21047
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ftdi_elan_found_controller(%struct.usb_ftdi* %71, i32 %72, i32 0)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %128

76:                                               ; preds = %67, %63
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @PCI_VENDOR_ID_ATT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 22530
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @ftdi_elan_found_controller(%struct.usb_ftdi* %84, i32 %85, i32 0)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %127

89:                                               ; preds = %80, %76
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @PCI_VENDOR_ID_AMD, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 29708
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %100 = call i32 @ftdi_elan_found_controller(%struct.usb_ftdi* %97, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %126

103:                                              ; preds = %93, %89
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @PCI_VENDOR_ID_COMPAQ, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i32, i32* %13, align 4
  %109 = icmp eq i32 %108, 41208
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @OHCI_QUIRK_ZFMICRO, align 4
  %114 = call i32 @ftdi_elan_found_controller(%struct.usb_ftdi* %111, i32 %112, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %125

117:                                              ; preds = %107, %103
  %118 = load i32, i32* %5, align 4
  %119 = icmp eq i32 0, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %124

121:                                              ; preds = %117
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %121, %120
  br label %125

125:                                              ; preds = %124, %110
  br label %126

126:                                              ; preds = %125, %96
  br label %127

127:                                              ; preds = %126, %83
  br label %128

128:                                              ; preds = %127, %70
  br label %129

129:                                              ; preds = %128, %57
  br label %130

130:                                              ; preds = %129, %44
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %148

134:                                              ; preds = %130
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  %138 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %139 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %142 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i32 %140, i32* %143, align 8
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %146 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %134, %130
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %17

152:                                              ; preds = %17
  %153 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %154 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %152
  %158 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %159 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %160 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 %161, 1
  %163 = call i32 @ftdi_elan_setup_controller(%struct.usb_ftdi* %158, i32 %162)
  store i32 %163, i32* %4, align 4
  %164 = load i32, i32* %4, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* %4, align 4
  store i32 %167, i32* %2, align 4
  br label %186

168:                                              ; preds = %157
  store i32 0, i32* %2, align 4
  br label %186

169:                                              ; preds = %152
  %170 = load i32, i32* %10, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @ENXIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %2, align 4
  br label %186

175:                                              ; preds = %169
  %176 = load i32, i32* %11, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @ENXIO, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %2, align 4
  br label %186

181:                                              ; preds = %175
  %182 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %183 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %182, i32 0, i32 1
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* @ENXIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %186

186:                                              ; preds = %181, %178, %172, %168, %166, %30
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @ftdi_elan_read_config(%struct.usb_ftdi*, i32, i32, i32*) #1

declare dso_local i32 @ftdi_elan_found_controller(%struct.usb_ftdi*, i32, i32) #1

declare dso_local i32 @ftdi_elan_setup_controller(%struct.usb_ftdi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
