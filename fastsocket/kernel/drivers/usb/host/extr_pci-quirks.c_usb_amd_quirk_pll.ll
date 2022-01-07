; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_pci-quirks.c_usb_amd_quirk_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_pci-quirks.c_usb_amd_quirk_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@amd_lock = common dso_local global i32 0, align 4
@amd_chipset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AB_REG_BAR_LOW = common dso_local global i32 0, align 4
@AB_REG_BAR_HIGH = common dso_local global i32 0, align 4
@AB_REG_BAR_SB700 = common dso_local global i32 0, align 4
@AX_INDXC = common dso_local global i32 0, align 4
@AX_DATAC = common dso_local global i32 0, align 4
@PCIE_P_CNTL = common dso_local global i32 0, align 4
@NB_PCIE_INDX_ADDR = common dso_local global i32 0, align 4
@NB_PCIE_INDX_DATA = common dso_local global i32 0, align 4
@BIF_NB = common dso_local global i32 0, align 4
@NB_PIF0_PWRDOWN_0 = common dso_local global i32 0, align 4
@NB_PIF0_PWRDOWN_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @usb_amd_quirk_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_amd_quirk_pll(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 0, i32 1
  store i32 %12, i32* %7, align 4
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @amd_lock, i64 %13)
  %15 = load i32, i32* %2, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %23)
  br label %223

25:                                               ; preds = %17
  br label %35

26:                                               ; preds = %1
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 0), align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %32)
  br label %223

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 1), align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 1), align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %64

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @AB_REG_BAR_LOW, align 4
  %43 = call i32 @outb_p(i32 %42, i32 3286)
  %44 = call i32 @inb_p(i32 3287)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* @AB_REG_BAR_HIGH, align 4
  %46 = call i32 @outb_p(i32 %45, i32 3286)
  %47 = call i32 @inb_p(i32 3287)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 8
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @AB_INDX(i32 %52)
  %54 = call i32 @outl_p(i32 48, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @AB_DATA(i32 %55)
  %57 = call i32 @outl_p(i32 64, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @AB_INDX(i32 %58)
  %60 = call i32 @outl_p(i32 52, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @AB_DATA(i32 %61)
  %63 = call i32 @inl_p(i32 %62)
  store i32 %63, i32* %6, align 4
  br label %89

64:                                               ; preds = %38
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 1), align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 4), align 4
  %69 = load i32, i32* @AB_REG_BAR_SB700, align 4
  %70 = call i32 @pci_read_config_dword(i32 %68, i32 %69, i32* %3)
  %71 = load i32, i32* @AX_INDXC, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @AB_INDX(i32 %72)
  %74 = call i32 @outl(i32 %71, i32 %73)
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @AB_DATA(i32 %75)
  %77 = call i32 @outl(i32 64, i32 %76)
  %78 = load i32, i32* @AX_DATAC, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @AB_INDX(i32 %79)
  %81 = call i32 @outl(i32 %78, i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @AB_DATA(i32 %82)
  %84 = call i32 @inl(i32 %83)
  store i32 %84, i32* %6, align 4
  br label %88

85:                                               ; preds = %64
  %86 = load i64, i64* %8, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %86)
  br label %223

88:                                               ; preds = %67
  br label %89

89:                                               ; preds = %88, %41
  %90 = load i32, i32* %2, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %93, -9
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = or i32 %95, 528
  store i32 %96, i32* %6, align 4
  br label %102

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %98, 8
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, -529
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @AB_DATA(i32 %104)
  %106 = call i32 @outl_p(i32 %103, i32 %105)
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %110)
  br label %223

112:                                              ; preds = %102
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 2), align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %118, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 2), align 4
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %173

118:                                              ; preds = %115, %112
  %119 = load i32, i32* @PCIE_P_CNTL, align 4
  store i32 %119, i32* %3, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %121 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @pci_write_config_dword(i32 %120, i32 %121, i32 %122)
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %125 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %126 = call i32 @pci_read_config_dword(i32 %124, i32 %125, i32* %6)
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, -4634
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 %130, 3
  %132 = or i32 %129, %131
  %133 = load i32, i32* %7, align 4
  %134 = shl i32 %133, 12
  %135 = or i32 %132, %134
  %136 = load i32, i32* %6, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = shl i32 %141, 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = shl i32 %146, 9
  %148 = or i32 %142, %147
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %152 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 @pci_write_config_dword(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* @BIF_NB, align 4
  store i32 %155, i32* %3, align 4
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %157 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @pci_write_config_dword(i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %161 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %162 = call i32 @pci_read_config_dword(i32 %160, i32 %161, i32* %6)
  %163 = load i32, i32* %6, align 4
  %164 = and i32 %163, -257
  store i32 %164, i32* %6, align 4
  %165 = load i32, i32* %7, align 4
  %166 = shl i32 %165, 8
  %167 = load i32, i32* %6, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %170 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @pci_write_config_dword(i32 %169, i32 %170, i32 %171)
  br label %220

173:                                              ; preds = %115
  %174 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 2), align 4
  %175 = icmp eq i32 %174, 2
  br i1 %175, label %176, label %219

176:                                              ; preds = %173
  %177 = load i32, i32* @NB_PIF0_PWRDOWN_0, align 4
  store i32 %177, i32* %3, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %179 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @pci_write_config_dword(i32 %178, i32 %179, i32 %180)
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %183 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %184 = call i32 @pci_read_config_dword(i32 %182, i32 %183, i32* %6)
  %185 = load i32, i32* %2, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %176
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, -8065
  store i32 %189, i32* %6, align 4
  br label %193

190:                                              ; preds = %176
  %191 = load i32, i32* %6, align 4
  %192 = or i32 %191, 8064
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %195 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 @pci_write_config_dword(i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* @NB_PIF0_PWRDOWN_1, align 4
  store i32 %198, i32* %3, align 4
  %199 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %200 = load i32, i32* @NB_PCIE_INDX_ADDR, align 4
  %201 = load i32, i32* %3, align 4
  %202 = call i32 @pci_write_config_dword(i32 %199, i32 %200, i32 %201)
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %204 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %205 = call i32 @pci_read_config_dword(i32 %203, i32 %204, i32* %6)
  %206 = load i32, i32* %2, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %193
  %209 = load i32, i32* %6, align 4
  %210 = and i32 %209, -8065
  store i32 %210, i32* %6, align 4
  br label %214

211:                                              ; preds = %193
  %212 = load i32, i32* %6, align 4
  %213 = or i32 %212, 8064
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %211, %208
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @amd_chipset, i32 0, i32 3), align 4
  %216 = load i32, i32* @NB_PCIE_INDX_DATA, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @pci_write_config_dword(i32 %215, i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %173
  br label %220

220:                                              ; preds = %219, %118
  %221 = load i64, i64* %8, align 8
  %222 = call i32 @spin_unlock_irqrestore(i32* @amd_lock, i64 %221)
  br label %223

223:                                              ; preds = %220, %109, %85, %31, %22
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outl_p(i32, i32) #1

declare dso_local i32 @AB_INDX(i32) #1

declare dso_local i32 @AB_DATA(i32) #1

declare dso_local i32 @inl_p(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
