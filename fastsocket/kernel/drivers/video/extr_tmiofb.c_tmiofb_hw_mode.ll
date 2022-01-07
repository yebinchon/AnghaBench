; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_hw_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_tmiofb.c_tmiofb_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mfd_cell* }
%struct.mfd_cell = type { %struct.tmio_fb_data* }
%struct.tmio_fb_data = type { i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.1*, %struct.fb_videomode*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device.1 = type opaque
%struct.fb_videomode = type opaque
%struct.fb_info = type { %struct.TYPE_4__, %struct.tmiofb_par*, %struct.fb_videomode.2* }
%struct.TYPE_4__ = type { i32 }
%struct.tmiofb_par = type { i64 }
%struct.fb_videomode.2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@LCR_GM = common dso_local global i64 0, align 8
@LCR_LCDCCRC = common dso_local global i64 0, align 8
@LCR_VHPN = common dso_local global i64 0, align 8
@LCR_GDSAH = common dso_local global i64 0, align 8
@LCR_GDSAL = common dso_local global i64 0, align 8
@LCR_VHPCH = common dso_local global i64 0, align 8
@LCR_VHPCL = common dso_local global i64 0, align 8
@LCR_HSS = common dso_local global i64 0, align 8
@LCR_HSE = common dso_local global i64 0, align 8
@LCR_HDS = common dso_local global i64 0, align 8
@LCR_HT = common dso_local global i64 0, align 8
@LCR_HNP = common dso_local global i64 0, align 8
@LCR_VSS = common dso_local global i64 0, align 8
@LCR_VSE = common dso_local global i64 0, align 8
@LCR_VDS = common dso_local global i64 0, align 8
@LCR_ILN = common dso_local global i64 0, align 8
@LCR_VT = common dso_local global i64 0, align 8
@LCR_MISC = common dso_local global i64 0, align 8
@LCR_LCDCC = common dso_local global i64 0, align 8
@LCR_SP = common dso_local global i64 0, align 8
@LCR_VCS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @tmiofb_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmiofb_hw_mode(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mfd_cell*, align 8
  %4 = alloca %struct.tmio_fb_data*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.fb_videomode.2*, align 8
  %7 = alloca %struct.tmiofb_par*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.mfd_cell*, %struct.mfd_cell** %11, align 8
  store %struct.mfd_cell* %12, %struct.mfd_cell** %3, align 8
  %13 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %14 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %13, i32 0, i32 0
  %15 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %14, align 8
  store %struct.tmio_fb_data* %15, %struct.tmio_fb_data** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = call %struct.fb_info* @platform_get_drvdata(%struct.platform_device* %16)
  store %struct.fb_info* %17, %struct.fb_info** %5, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 2
  %20 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %19, align 8
  store %struct.fb_videomode.2* %20, %struct.fb_videomode.2** %6, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 1
  %23 = load %struct.tmiofb_par*, %struct.tmiofb_par** %22, align 8
  store %struct.tmiofb_par* %23, %struct.tmiofb_par** %7, align 8
  %24 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %25 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @LCR_GM, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @tmio_iowrite16(i32 0, i64 %28)
  %30 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %4, align 8
  %31 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %30, i32 0, i32 0
  %32 = load i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.0*, i32)** %31, align 8
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = bitcast %struct.platform_device* %33 to %struct.platform_device.0*
  %35 = call i32 %32(%struct.platform_device.0* %34, i32 0)
  %36 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %37 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @LCR_LCDCCRC, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @tmio_iowrite16(i32 16, i64 %40)
  %42 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %4, align 8
  %43 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %42, i32 0, i32 1
  %44 = load i32 (%struct.platform_device.1*, %struct.fb_videomode*)*, i32 (%struct.platform_device.1*, %struct.fb_videomode*)** %43, align 8
  %45 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %46 = bitcast %struct.platform_device* %45 to %struct.platform_device.1*
  %47 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %48 = bitcast %struct.fb_videomode.2* %47 to %struct.fb_videomode*
  %49 = call i32 %44(%struct.platform_device.1* %46, %struct.fb_videomode* %48)
  %50 = load %struct.tmio_fb_data*, %struct.tmio_fb_data** %4, align 8
  %51 = getelementptr inbounds %struct.tmio_fb_data, %struct.tmio_fb_data* %50, i32 0, i32 0
  %52 = load i32 (%struct.platform_device.0*, i32)*, i32 (%struct.platform_device.0*, i32)** %51, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %54 = bitcast %struct.platform_device* %53 to %struct.platform_device.0*
  %55 = call i32 %52(%struct.platform_device.0* %54, i32 1)
  %56 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %61 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @LCR_VHPN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @tmio_iowrite16(i32 %59, i64 %64)
  %66 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %67 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LCR_GDSAH, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @tmio_iowrite16(i32 0, i64 %70)
  %72 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %73 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LCR_GDSAL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @tmio_iowrite16(i32 0, i64 %76)
  %78 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = ashr i32 %81, 16
  %83 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %84 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @LCR_VHPCH, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @tmio_iowrite16(i32 %82, i64 %87)
  %89 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %94 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @LCR_VHPCL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @tmio_iowrite16(i32 %92, i64 %97)
  store i32 0, i32* %8, align 4
  %99 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %100 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @LCR_HSS, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @tmio_iowrite16(i32 0, i64 %103)
  %105 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %106 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %111 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LCR_HSE, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @tmio_iowrite16(i32 %109, i64 %114)
  %116 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %117 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %122 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @LCR_HDS, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @tmio_iowrite16(i32 %120, i64 %125)
  %127 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %128 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %131 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %129, %132
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %137 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @LCR_HT, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @tmio_iowrite16(i32 %135, i64 %140)
  %142 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %143 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %146 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @LCR_HNP, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @tmio_iowrite16(i32 %144, i64 %149)
  store i32 0, i32* %8, align 4
  %151 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %152 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @LCR_VSS, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @tmio_iowrite16(i32 0, i64 %155)
  %157 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %158 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %163 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @LCR_VSE, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @tmio_iowrite16(i32 %161, i64 %166)
  %168 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %169 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %8, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %8, align 4
  %173 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %174 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @LCR_VDS, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @tmio_iowrite16(i32 %172, i64 %177)
  %179 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %180 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %8, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %8, align 4
  %184 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %185 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @LCR_ILN, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @tmio_iowrite16(i32 %183, i64 %188)
  %190 = load %struct.fb_videomode.2*, %struct.fb_videomode.2** %6, align 8
  %191 = getelementptr inbounds %struct.fb_videomode.2, %struct.fb_videomode.2* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %8, align 4
  %194 = add i32 %193, %192
  store i32 %194, i32* %8, align 4
  %195 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %196 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @LCR_VT, align 8
  %199 = add nsw i64 %197, %198
  %200 = call i32 @tmio_iowrite16(i32 %194, i64 %199)
  %201 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %202 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @LCR_MISC, align 8
  %205 = add nsw i64 %203, %204
  %206 = call i32 @tmio_iowrite16(i32 3, i64 %205)
  %207 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %208 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @LCR_GM, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @tmio_iowrite16(i32 1, i64 %211)
  %213 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %214 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @LCR_LCDCC, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @tmio_iowrite16(i32 16391, i64 %217)
  %219 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %220 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @LCR_SP, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @tmio_iowrite16(i32 3, i64 %223)
  %225 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %226 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @LCR_LCDCCRC, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @tmio_iowrite16(i32 16, i64 %229)
  %231 = call i32 @msleep(i32 5)
  %232 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %233 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* @LCR_LCDCCRC, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @tmio_iowrite16(i32 20, i64 %236)
  %238 = call i32 @msleep(i32 5)
  %239 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %240 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @LCR_LCDCCRC, align 8
  %243 = add nsw i64 %241, %242
  %244 = call i32 @tmio_iowrite16(i32 21, i64 %243)
  %245 = load %struct.tmiofb_par*, %struct.tmiofb_par** %7, align 8
  %246 = getelementptr inbounds %struct.tmiofb_par, %struct.tmiofb_par* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @LCR_VCS, align 8
  %249 = add nsw i64 %247, %248
  %250 = call i32 @tmio_iowrite16(i32 65530, i64 %249)
  ret void
}

declare dso_local %struct.fb_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @tmio_iowrite16(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
