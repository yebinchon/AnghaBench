; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_GetHWRegOriginalValue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_phy.c_PHY_GetHWRegOriginalValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i8*, i8*, i8**, i8** }

@rTxAGC_Rate18_06 = common dso_local global i32 0, align 4
@bMaskDWord = common dso_local global i32 0, align 4
@rTxAGC_Rate54_24 = common dso_local global i32 0, align 4
@rTxAGC_Mcs03_Mcs00 = common dso_local global i32 0, align 4
@rTxAGC_Mcs07_Mcs04 = common dso_local global i32 0, align 4
@rTxAGC_Mcs11_Mcs08 = common dso_local global i32 0, align 4
@rTxAGC_Mcs15_Mcs12 = common dso_local global i32 0, align 4
@rTxAGC_CCK_Mcs32 = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Legacy OFDM =%08x/%08x HT_OFDM=%08x/%08x/%08x/%08x\0A\00", align 1
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@bMaskByte0 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Default initial gain (c50=0x%x, c58=0x%x, c60=0x%x, c68=0x%x) \0A\00", align 1
@rOFDM0_RxDetector3 = common dso_local global i32 0, align 4
@rOFDM0_RxDetector2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Default framesync (0x%x) = 0x%x \0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PHY_GetHWRegOriginalValue(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @rTxAGC_Rate18_06, align 4
  %8 = load i32, i32* @bMaskDWord, align 4
  %9 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %6, i32 %7, i32 %8)
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 3
  %12 = load i8**, i8*** %11, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  store i8* %9, i8** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load i32, i32* @rTxAGC_Rate54_24, align 4
  %16 = load i32, i32* @bMaskDWord, align 4
  %17 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %14, i32 %15, i32 %16)
  %18 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %19 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %18, i32 0, i32 3
  %20 = load i8**, i8*** %19, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  store i8* %17, i8** %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = load i32, i32* @rTxAGC_Mcs03_Mcs00, align 4
  %24 = load i32, i32* @bMaskDWord, align 4
  %25 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %22, i32 %23, i32 %24)
  %26 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %27 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %26, i32 0, i32 3
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 2
  store i8* %25, i8** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = load i32, i32* @rTxAGC_Mcs07_Mcs04, align 4
  %32 = load i32, i32* @bMaskDWord, align 4
  %33 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %30, i32 %31, i32 %32)
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 3
  %36 = load i8**, i8*** %35, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  store i8* %33, i8** %37, align 8
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = load i32, i32* @rTxAGC_Mcs11_Mcs08, align 4
  %40 = load i32, i32* @bMaskDWord, align 4
  %41 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %38, i32 %39, i32 %40)
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 4
  store i8* %41, i8** %45, align 8
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = load i32, i32* @rTxAGC_Mcs15_Mcs12, align 4
  %48 = load i32, i32* @bMaskDWord, align 4
  %49 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %46, i32 %47, i32 %48)
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = getelementptr inbounds i8*, i8** %52, i64 5
  store i8* %49, i8** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @rTxAGC_CCK_Mcs32, align 4
  %56 = load i32, i32* @bMaskDWord, align 4
  %57 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %54, i32 %55, i32 %56)
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 6
  store i8* %57, i8** %61, align 8
  %62 = load i32, i32* @COMP_INIT, align 4
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 3
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %70 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %69, i32 0, i32 3
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 3
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 2
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 3
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 3
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %85 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 4
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %90 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %89, i32 0, i32 3
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 5
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %68, i8* %73, i8* %78, i8* %83, i8* %88, i8* %93)
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %97 = load i32, i32* @bMaskByte0, align 4
  %98 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %95, i32 %96, i32 %97)
  %99 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %100 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %99, i32 0, i32 2
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  store i8* %98, i8** %102, align 8
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %105 = load i32, i32* @bMaskByte0, align 4
  %106 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %103, i32 %104, i32 %105)
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 2
  %109 = load i8**, i8*** %108, align 8
  %110 = getelementptr inbounds i8*, i8** %109, i64 1
  store i8* %106, i8** %110, align 8
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %113 = load i32, i32* @bMaskByte0, align 4
  %114 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %111, i32 %112, i32 %113)
  %115 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %116 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %115, i32 0, i32 2
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 2
  store i8* %114, i8** %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %121 = load i32, i32* @bMaskByte0, align 4
  %122 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %119, i32 %120, i32 %121)
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 2
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 3
  store i8* %122, i8** %126, align 8
  %127 = load i32, i32* @COMP_INIT, align 4
  %128 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %129 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %128, i32 0, i32 2
  %130 = load i8**, i8*** %129, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i64 0
  %132 = load i8*, i8** %131, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 2
  %136 = load i8**, i8*** %135, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %140 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %139, i32 0, i32 2
  %141 = load i8**, i8*** %140, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 2
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %145 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %144, i32 0, i32 2
  %146 = load i8**, i8*** %145, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 3
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %127, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %133, i8* %138, i8* %143, i8* %148)
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %152 = load i32, i32* @bMaskByte0, align 4
  %153 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %150, i32 %151, i32 %152)
  %154 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %155 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load %struct.net_device*, %struct.net_device** %2, align 8
  %157 = load i32, i32* @rOFDM0_RxDetector2, align 4
  %158 = load i32, i32* @bMaskDWord, align 4
  %159 = call i8* @rtl8192_QueryBBReg(%struct.net_device* %156, i32 %157, i32 %158)
  %160 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %161 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @COMP_INIT, align 4
  %163 = load i32, i32* @rOFDM0_RxDetector3, align 4
  %164 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 (i32, i8*, i32, i8*, ...) @RT_TRACE(i32 %162, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %163, i8* %166)
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i8* @rtl8192_QueryBBReg(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
