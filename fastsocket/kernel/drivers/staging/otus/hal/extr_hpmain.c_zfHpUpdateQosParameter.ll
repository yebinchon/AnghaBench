; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpUpdateQosParameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpUpdateQosParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.zsHpPriv* }
%struct.TYPE_3__ = type { i32 }
%struct.zsHpPriv = type { i64, i32*, i32*, i32* }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"zfHalUpdateQosParameter()\00", align 1
@ZM_HAL_80211_MODE_STA = common dso_local global i64 0, align 8
@ZM_MAC_REG_AC0_CW = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC1_CW = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC2_CW = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC3_CW = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC4_CW = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC1_AC0_AIFS = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC3_AC2_AIFS = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC1_AC0_TXOP = common dso_local global i32 0, align 4
@ZM_MAC_REG_AC3_AC2_TXOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfHpUpdateQosParameter(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.zsHpPriv*, %struct.zsHpPriv** %15, align 8
  store %struct.zsHpPriv* %16, %struct.zsHpPriv** %11, align 8
  %17 = load i32, i32* @ZM_LV_0, align 4
  %18 = call i32 @zm_msg0_mm(i32 %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %20 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZM_HAL_80211_MODE_STA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load i32*, i32** %8, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 127, i32* %26, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 28, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %5
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @ZM_MAC_REG_AC0_CW, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = add nsw i32 %34, %38
  %40 = call i32 @zfDelayWriteInternalReg(i32* %30, i32 %31, i32 %39)
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* @ZM_MAC_REG_AC1_CW, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 16
  %50 = add nsw i32 %45, %49
  %51 = call i32 @zfDelayWriteInternalReg(i32* %41, i32 %42, i32 %50)
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* @ZM_MAC_REG_AC2_CW, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 16
  %61 = add nsw i32 %56, %60
  %62 = call i32 @zfDelayWriteInternalReg(i32* %52, i32 %53, i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @ZM_MAC_REG_AC3_CW, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 16
  %72 = add nsw i32 %67, %71
  %73 = call i32 @zfDelayWriteInternalReg(i32* %63, i32 %64, i32 %72)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @ZM_MAC_REG_AC4_CW, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 4
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = add nsw i32 %78, %82
  %84 = call i32 @zfDelayWriteInternalReg(i32* %74, i32 %75, i32 %83)
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @ZM_MAC_REG_AC1_AC0_AIFS, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 12
  %94 = add nsw i32 %89, %93
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 24
  %99 = add nsw i32 %94, %98
  %100 = call i32 @zfDelayWriteInternalReg(i32* %85, i32 %86, i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* @ZM_MAC_REG_AC3_AC2_AIFS, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = ashr i32 %105, 8
  %107 = load i32*, i32** %9, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 4
  %111 = add nsw i32 %106, %110
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 16
  %116 = add nsw i32 %111, %115
  %117 = call i32 @zfDelayWriteInternalReg(i32* %101, i32 %102, i32 %116)
  %118 = load i32*, i32** %6, align 8
  %119 = load i32, i32* @ZM_MAC_REG_AC1_AC0_TXOP, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 %125, 16
  %127 = add nsw i32 %122, %126
  %128 = call i32 @zfDelayWriteInternalReg(i32* %118, i32 %119, i32 %127)
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* @ZM_MAC_REG_AC3_AC2_TXOP, align 4
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = shl i32 %136, 16
  %138 = add nsw i32 %133, %137
  %139 = call i32 @zfDelayWriteInternalReg(i32* %129, i32 %130, i32 %138)
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @zfFlushDelayWrite(i32* %140)
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %146 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  store i32 %144, i32* %148, align 4
  %149 = load i32*, i32** %10, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %153 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 %151, i32* %155, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %160 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32 %158, i32* %162, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %167 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  store i32 %165, i32* %169, align 4
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %174 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 %172, i32* %176, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %181 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  store i32 %179, i32* %183, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %188 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %186, i32* %190, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.zsHpPriv*, %struct.zsHpPriv** %11, align 8
  %195 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  store i32 %193, i32* %197, align 4
  ret i32 0
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfDelayWriteInternalReg(i32*, i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
