; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_HalUsbSetQueuePipeMapping8192SUsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_core.c_HalUsbSetQueuePipeMapping8192SUsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64, i64, i8**, i8**, i8** }

@__const.HalUsbSetQueuePipeMapping8192SUsb.queuetopipe = private unnamed_addr constant [9 x i64] [i64 3, i64 2, i64 1, i64 0, i64 4, i64 4, i64 4, i64 4, i64 4], align 16
@__const.HalUsbSetQueuePipeMapping8192SUsb.queuetopipe.1 = private unnamed_addr constant [9 x i64] [i64 1, i64 1, i64 0, i64 0, i64 2, i64 2, i64 2, i64 2, i64 2], align 16
@__const.HalUsbSetQueuePipeMapping8192SUsb.queuetopipe.2 = private unnamed_addr constant [9 x i64] [i64 3, i64 2, i64 1, i64 0, i64 4, i64 8, i64 7, i64 6, i64 5], align 16
@.str = private unnamed_addr constant [43 x i8] c"==>ep_num:%d, in_ep_num:%d, out_ep_num:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"==>RtInPipes:\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%d  \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"==>RtOutPipes:\00", align 1
@.str.7 = private unnamed_addr constant [79 x i8] c"==>txqueue_to_outpipemap for BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*, %struct.net_device*)* @HalUsbSetQueuePipeMapping8192SUsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HalUsbSetQueuePipeMapping8192SUsb(%struct.usb_interface* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  %6 = alloca %struct.usb_host_interface*, align 8
  %7 = alloca %struct.usb_endpoint_descriptor*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [9 x i64], align 16
  %10 = alloca [9 x i64], align 16
  %11 = alloca [9 x i64], align 16
  %12 = alloca [9 x i64], align 16
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %5, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 4
  %21 = load i8**, i8*** %20, align 8
  %22 = call i32 @memset(i8** %21, i32 0, i32 16)
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 5
  %25 = load i8**, i8*** %24, align 8
  %26 = call i32 @memset(i8** %25, i32 0, i32 16)
  %27 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = load %struct.usb_host_interface*, %struct.usb_host_interface** %28, align 8
  store %struct.usb_host_interface* %29, %struct.usb_host_interface** %6, align 8
  %30 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %31 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %35 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %86, %2
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %36
  %43 = load %struct.usb_host_interface*, %struct.usb_host_interface** %6, align 8
  %44 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %48, %struct.usb_endpoint_descriptor** %7, align 8
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %50 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %42
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %54 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %53)
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 5
  %57 = load i8**, i8*** %56, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i8*, i8** %57, i64 %60
  store i8* %54, i8** %61, align 8
  %62 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %63 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %85

66:                                               ; preds = %42
  %67 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %68 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %66
  %71 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %7, align 8
  %72 = call i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor* %71)
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 4
  %75 = load i8**, i8*** %74, align 8
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i8*, i8** %75, i64 %78
  store i8* %72, i8** %79, align 8
  %80 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %81 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %70, %66
  br label %85

85:                                               ; preds = %84, %52
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %8, align 8
  br label %36

89:                                               ; preds = %36
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 3
  %92 = load i8**, i8*** %91, align 8
  %93 = call i32 @memset(i8** %92, i32 0, i32 9)
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %96, 6
  br i1 %97, label %98, label %105

98:                                               ; preds = %89
  %99 = bitcast [9 x i64]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %99, i8* align 16 bitcast ([9 x i64]* @__const.HalUsbSetQueuePipeMapping8192SUsb.queuetopipe to i8*), i64 72, i1 false)
  %100 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %101 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %100, i32 0, i32 3
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %104 = call i32 @memcpy(i8** %102, i64* %103, i32 9)
  br label %138

105:                                              ; preds = %89
  %106 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %107 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 4
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = bitcast [9 x i64]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %111, i8* align 16 bitcast ([9 x i64]* @__const.HalUsbSetQueuePipeMapping8192SUsb.queuetopipe.1 to i8*), i64 72, i1 false)
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 3
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 0
  %116 = call i32 @memcpy(i8** %114, i64* %115, i32 9)
  br label %137

117:                                              ; preds = %105
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ugt i64 %120, 9
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = bitcast [9 x i64]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %123, i8* align 16 bitcast ([9 x i64]* @__const.HalUsbSetQueuePipeMapping8192SUsb.queuetopipe.2 to i8*), i64 72, i1 false)
  %124 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %125 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %124, i32 0, i32 3
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds [9 x i64], [9 x i64]* %11, i64 0, i64 0
  %128 = call i32 @memcpy(i8** %126, i64* %127, i32 9)
  br label %136

129:                                              ; preds = %117
  %130 = bitcast [9 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %130, i8 0, i64 72, i1 false)
  %131 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %132 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %131, i32 0, i32 3
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds [9 x i64], [9 x i64]* %12, i64 0, i64 0
  %135 = call i32 @memcpy(i8** %133, i64* %134, i32 9)
  br label %136

136:                                              ; preds = %129, %122
  br label %137

137:                                              ; preds = %136, %110
  br label %138

138:                                              ; preds = %137, %98
  %139 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %140 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %146 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %141, i64 %144, i64 %147)
  %149 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %150

150:                                              ; preds = %164, %138
  %151 = load i64, i64* %8, align 8
  %152 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %153 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ult i64 %151, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %158 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %157, i32 0, i32 5
  %159 = load i8**, i8*** %158, align 8
  %160 = load i64, i64* %8, align 8
  %161 = getelementptr inbounds i8*, i8** %159, i64 %160
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %156
  %165 = load i64, i64* %8, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %8, align 8
  br label %150

167:                                              ; preds = %150
  %168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %170

170:                                              ; preds = %184, %167
  %171 = load i64, i64* %8, align 8
  %172 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %173 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = icmp ult i64 %171, %174
  br i1 %175, label %176, label %187

176:                                              ; preds = %170
  %177 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %178 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %177, i32 0, i32 4
  %179 = load i8**, i8*** %178, align 8
  %180 = load i64, i64* %8, align 8
  %181 = getelementptr inbounds i8*, i8** %179, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %176
  %185 = load i64, i64* %8, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %8, align 8
  br label %170

187:                                              ; preds = %170
  %188 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %189 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.7, i64 0, i64 0))
  store i64 0, i64* %8, align 8
  br label %190

190:                                              ; preds = %201, %187
  %191 = load i64, i64* %8, align 8
  %192 = icmp ult i64 %191, 9
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %195 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %194, i32 0, i32 3
  %196 = load i8**, i8*** %195, align 8
  %197 = load i64, i64* %8, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %193
  %202 = load i64, i64* %8, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %8, align 8
  br label %190

204:                                              ; preds = %190
  %205 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i8* @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8**, i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
