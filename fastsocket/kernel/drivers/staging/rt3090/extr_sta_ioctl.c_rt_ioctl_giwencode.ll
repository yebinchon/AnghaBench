; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_giwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_ioctl_giwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@ENETDOWN = common dso_local global i32 0, align 4
@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"===>rt_ioctl_giwencode %d\0A\00", align 1
@Ndis802_11WEPDisabled = common dso_local global i64 0, align 8
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@BSS0 = common dso_local global i64 0, align 8
@Ndis802_11AuthModeShared = common dso_local global i64 0, align 8
@IW_ENCODE_RESTRICTED = common dso_local global i32 0, align 4
@IW_ENCODE_OPEN = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_giwencode(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_8__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %11, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %15 = icmp eq %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENETDOWN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %225

19:                                               ; preds = %4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %21 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %22 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_8__* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %26 = call i32 @DBGPRINT(i32 %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENETDOWN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %225

29:                                               ; preds = %19
  %30 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %31 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %36 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %37 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %40 = and i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @DBGPRINT(i32 %35, i8* %42)
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @Ndis802_11WEPDisabled, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %29
  %51 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %52 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %54 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %55 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %224

56:                                               ; preds = %29
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %134

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp sle i32 %60, 4
  br i1 %61, label %62, label %134

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %65 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %67 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %70, align 8
  %72 = load i64, i64* @BSS0, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %71, i64 %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sgt i64 %68, %80
  br i1 %81, label %82, label %97

82:                                               ; preds = %62
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %84, align 8
  %86 = load i64, i64* @BSS0, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %85, i64 %86
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %96 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %82, %62
  %98 = load i8*, i8** %9, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %100, align 8
  %102 = load i64, i64* @BSS0, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 %102
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %112 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @memcpy(i8* %98, i32 %110, i64 %113)
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %97
  %122 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %123 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %124 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %133

127:                                              ; preds = %97
  %128 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %129 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %130 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %133

133:                                              ; preds = %127, %121
  br label %223

134:                                              ; preds = %59, %56
  %135 = load i32, i32* %10, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %222

137:                                              ; preds = %134
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %146 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %147 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %156

150:                                              ; preds = %137
  %151 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %152 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %153 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %144
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %158, align 8
  %160 = load i64, i64* @BSS0, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %159, i64 %160
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %161, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %171 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load i8*, i8** %9, align 8
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  %175 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %174, align 8
  %176 = load i64, i64* @BSS0, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %175, i64 %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %187 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @memcpy(i8* %172, i32 %185, i64 %188)
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %156
  %197 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %198 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %199 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %208

202:                                              ; preds = %156
  %203 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %204 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %205 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  br label %208

208:                                              ; preds = %202, %196
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = add i64 %212, 1
  %214 = trunc i64 %213 to i32
  %215 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %216 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %218 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %219 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = or i32 %220, %217
  store i32 %221, i32* %219, align 8
  br label %222

222:                                              ; preds = %208, %134
  br label %223

223:                                              ; preds = %222, %133
  br label %224

224:                                              ; preds = %223, %50
  store i32 0, i32* %5, align 4
  br label %225

225:                                              ; preds = %224, %24, %16
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local %struct.TYPE_8__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
