; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_alloc_bandwidth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_usb_hcd_alloc_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.usb_host_endpoint**, %struct.usb_host_endpoint**, i32 }
%struct.usb_host_endpoint = type { i32 }
%struct.usb_host_config = type { %struct.TYPE_6__**, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_host_interface* }
%struct.TYPE_5__ = type { i32 }
%struct.usb_host_interface = type { %struct.usb_host_endpoint*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_hcd = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)* }
%struct.usb_interface = type { %struct.usb_host_interface*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_hcd_alloc_bandwidth(%struct.usb_device* %0, %struct.usb_host_config* %1, %struct.usb_host_interface* %2, %struct.usb_host_interface* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.usb_host_config*, align 8
  %8 = alloca %struct.usb_host_interface*, align 8
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.usb_host_interface*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.usb_hcd*, align 8
  %16 = alloca %struct.usb_host_endpoint*, align 8
  %17 = alloca %struct.usb_host_interface*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_interface*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %6, align 8
  store %struct.usb_host_config* %1, %struct.usb_host_config** %7, align 8
  store %struct.usb_host_interface* %2, %struct.usb_host_interface** %8, align 8
  store %struct.usb_host_interface* %3, %struct.usb_host_interface** %9, align 8
  store %struct.usb_host_interface* null, %struct.usb_host_interface** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.usb_hcd* @bus_to_hcd(i32 %22)
  store %struct.usb_hcd* %23, %struct.usb_hcd** %15, align 8
  %24 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %25 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %27, align 8
  %29 = icmp ne i32 (%struct.usb_hcd*, %struct.usb_device*)* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %331

31:                                               ; preds = %4
  %32 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %33 = icmp ne %struct.usb_host_config* %32, null
  br i1 %33, label %94, label %34

34:                                               ; preds = %31
  %35 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %36 = icmp ne %struct.usb_host_interface* %35, null
  br i1 %36, label %94, label %37

37:                                               ; preds = %34
  store i32 1, i32* %11, align 4
  br label %38

38:                                               ; preds = %82, %37
  %39 = load i32, i32* %11, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %85

41:                                               ; preds = %38
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %42, i32 0, i32 1
  %44 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %44, i64 %46
  %48 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %47, align 8
  store %struct.usb_host_endpoint* %48, %struct.usb_host_endpoint** %16, align 8
  %49 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %50 = icmp ne %struct.usb_host_endpoint* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %53 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %55, align 8
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %58 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %59 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %60 = call i32 %56(%struct.usb_hcd* %57, %struct.usb_device* %58, %struct.usb_host_endpoint* %59)
  br label %61

61:                                               ; preds = %51, %41
  %62 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %64, i64 %66
  %68 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %67, align 8
  store %struct.usb_host_endpoint* %68, %struct.usb_host_endpoint** %16, align 8
  %69 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %70 = icmp ne %struct.usb_host_endpoint* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %73 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %75, align 8
  %77 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %78 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %79 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %80 = call i32 %76(%struct.usb_hcd* %77, %struct.usb_device* %78, %struct.usb_host_endpoint* %79)
  br label %81

81:                                               ; preds = %71, %61
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %38

85:                                               ; preds = %38
  %86 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %87 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %89, align 8
  %91 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %92 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %93 = call i32 %90(%struct.usb_hcd* %91, %struct.usb_device* %92)
  store i32 0, i32* %5, align 4
  br label %331

94:                                               ; preds = %34, %31
  %95 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %96 = icmp ne %struct.usb_host_config* %95, null
  br i1 %96, label %97, label %219

97:                                               ; preds = %94
  %98 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %99 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %102

102:                                              ; preds = %154, %97
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %157

105:                                              ; preds = %102
  %106 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %107 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %106, i32 0, i32 1
  %108 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %108, i64 %110
  %112 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %111, align 8
  store %struct.usb_host_endpoint* %112, %struct.usb_host_endpoint** %16, align 8
  %113 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %114 = icmp ne %struct.usb_host_endpoint* %113, null
  br i1 %114, label %115, label %129

115:                                              ; preds = %105
  %116 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %117 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %119, align 8
  %121 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %122 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %123 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %124 = call i32 %120(%struct.usb_hcd* %121, %struct.usb_device* %122, %struct.usb_host_endpoint* %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %317

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %105
  %130 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %131 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %130, i32 0, i32 0
  %132 = load %struct.usb_host_endpoint**, %struct.usb_host_endpoint*** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %132, i64 %134
  %136 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %135, align 8
  store %struct.usb_host_endpoint* %136, %struct.usb_host_endpoint** %16, align 8
  %137 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %138 = icmp ne %struct.usb_host_endpoint* %137, null
  br i1 %138, label %139, label %153

139:                                              ; preds = %129
  %140 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %141 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %143, align 8
  %145 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %146 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %147 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %16, align 8
  %148 = call i32 %144(%struct.usb_hcd* %145, %struct.usb_device* %146, %struct.usb_host_endpoint* %147)
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %317

152:                                              ; preds = %139
  br label %153

153:                                              ; preds = %152, %129
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %11, align 4
  br label %102

157:                                              ; preds = %102
  store i32 0, i32* %11, align 4
  br label %158

158:                                              ; preds = %215, %157
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %218

162:                                              ; preds = %158
  %163 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %164 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %163, i32 0, i32 0
  %165 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %165, i64 %167
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load %struct.usb_host_interface*, %struct.usb_host_interface** %170, align 8
  %172 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %171, i64 0
  store %struct.usb_host_interface* %172, %struct.usb_host_interface** %17, align 8
  %173 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  %174 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  store i32 %176, i32* %18, align 4
  %177 = load %struct.usb_host_config*, %struct.usb_host_config** %7, align 8
  %178 = load i32, i32* %18, align 4
  %179 = call %struct.usb_host_interface* @usb_find_alt_setting(%struct.usb_host_config* %177, i32 %178, i32 0)
  store %struct.usb_host_interface* %179, %struct.usb_host_interface** %13, align 8
  %180 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %181 = icmp ne %struct.usb_host_interface* %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %162
  %183 = load %struct.usb_host_interface*, %struct.usb_host_interface** %17, align 8
  store %struct.usb_host_interface* %183, %struct.usb_host_interface** %13, align 8
  br label %184

184:                                              ; preds = %182, %162
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %211, %184
  %186 = load i32, i32* %12, align 4
  %187 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %188 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp slt i32 %186, %190
  br i1 %191, label %192, label %214

192:                                              ; preds = %185
  %193 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %194 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %193, i32 0, i32 0
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %196, align 8
  %198 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %199 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %200 = load %struct.usb_host_interface*, %struct.usb_host_interface** %13, align 8
  %201 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %200, i32 0, i32 0
  %202 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %202, i64 %204
  %206 = call i32 %197(%struct.usb_hcd* %198, %struct.usb_device* %199, %struct.usb_host_endpoint* %205)
  store i32 %206, i32* %14, align 4
  %207 = load i32, i32* %14, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %192
  br label %317

210:                                              ; preds = %192
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %185

214:                                              ; preds = %185
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %11, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %11, align 4
  br label %158

218:                                              ; preds = %158
  br label %219

219:                                              ; preds = %218, %94
  %220 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %221 = icmp ne %struct.usb_host_interface* %220, null
  br i1 %221, label %222, label %308

222:                                              ; preds = %219
  %223 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %224 = icmp ne %struct.usb_host_interface* %223, null
  br i1 %224, label %225, label %308

225:                                              ; preds = %222
  %226 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %227 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %228 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device* %226, i32 %230)
  store %struct.usb_interface* %231, %struct.usb_interface** %19, align 8
  %232 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  %233 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %247

236:                                              ; preds = %225
  %237 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  %238 = call %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface* %237, i32 0)
  store %struct.usb_host_interface* %238, %struct.usb_host_interface** %8, align 8
  %239 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %240 = icmp ne %struct.usb_host_interface* %239, null
  br i1 %240, label %246, label %241

241:                                              ; preds = %236
  %242 = load %struct.usb_interface*, %struct.usb_interface** %19, align 8
  %243 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %242, i32 0, i32 0
  %244 = load %struct.usb_host_interface*, %struct.usb_host_interface** %243, align 8
  %245 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %244, i64 0
  store %struct.usb_host_interface* %245, %struct.usb_host_interface** %8, align 8
  br label %246

246:                                              ; preds = %241, %236
  br label %247

247:                                              ; preds = %246, %225
  store i32 0, i32* %11, align 4
  br label %248

248:                                              ; preds = %274, %247
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %251 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %249, %253
  br i1 %254, label %255, label %277

255:                                              ; preds = %248
  %256 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %257 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %256, i32 0, i32 0
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 1
  %260 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %259, align 8
  %261 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %262 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %263 = load %struct.usb_host_interface*, %struct.usb_host_interface** %8, align 8
  %264 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %263, i32 0, i32 0
  %265 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %265, i64 %267
  %269 = call i32 %260(%struct.usb_hcd* %261, %struct.usb_device* %262, %struct.usb_host_endpoint* %268)
  store i32 %269, i32* %14, align 4
  %270 = load i32, i32* %14, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %255
  br label %317

273:                                              ; preds = %255
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %11, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %248

277:                                              ; preds = %248
  store i32 0, i32* %11, align 4
  br label %278

278:                                              ; preds = %304, %277
  %279 = load i32, i32* %11, align 4
  %280 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %281 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %279, %283
  br i1 %284, label %285, label %307

285:                                              ; preds = %278
  %286 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %287 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %286, i32 0, i32 0
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 2
  %290 = load i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)** %289, align 8
  %291 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %292 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %293 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %294 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %293, i32 0, i32 0
  %295 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %294, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %295, i64 %297
  %299 = call i32 %290(%struct.usb_hcd* %291, %struct.usb_device* %292, %struct.usb_host_endpoint* %298)
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %14, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %285
  br label %317

303:                                              ; preds = %285
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %11, align 4
  br label %278

307:                                              ; preds = %278
  br label %308

308:                                              ; preds = %307, %222, %219
  %309 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %310 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %309, i32 0, i32 0
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 0
  %313 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %312, align 8
  %314 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %315 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %316 = call i32 %313(%struct.usb_hcd* %314, %struct.usb_device* %315)
  store i32 %316, i32* %14, align 4
  br label %317

317:                                              ; preds = %308, %302, %272, %209, %151, %127
  %318 = load i32, i32* %14, align 4
  %319 = icmp slt i32 %318, 0
  br i1 %319, label %320, label %329

320:                                              ; preds = %317
  %321 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %322 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %321, i32 0, i32 0
  %323 = load %struct.TYPE_8__*, %struct.TYPE_8__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %323, i32 0, i32 3
  %325 = load i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)** %324, align 8
  %326 = load %struct.usb_hcd*, %struct.usb_hcd** %15, align 8
  %327 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %328 = call i32 %325(%struct.usb_hcd* %326, %struct.usb_device* %327)
  br label %329

329:                                              ; preds = %320, %317
  %330 = load i32, i32* %14, align 4
  store i32 %330, i32* %5, align 4
  br label %331

331:                                              ; preds = %329, %85, %30
  %332 = load i32, i32* %5, align 4
  ret i32 %332
}

declare dso_local %struct.usb_hcd* @bus_to_hcd(i32) #1

declare dso_local %struct.usb_host_interface* @usb_find_alt_setting(%struct.usb_host_config*, i32, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.usb_device*, i32) #1

declare dso_local %struct.usb_host_interface* @usb_altnum_to_altsetting(%struct.usb_interface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
