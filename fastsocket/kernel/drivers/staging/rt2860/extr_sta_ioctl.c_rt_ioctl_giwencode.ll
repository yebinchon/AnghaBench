; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_giwencode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_giwencode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32, i64 }

@fRTMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"INFO::Network is down!\0A\00", align 1
@ENETDOWN = common dso_local global i32 0, align 4
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
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = load i32, i32* @fRTMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %17 = call i32 @RTMP_TEST_FLAG(%struct.TYPE_7__* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %21 = call i32 @DBGPRINT(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENETDOWN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %220

24:                                               ; preds = %4
  %25 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %31 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %32 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %35 = and i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @DBGPRINT(i32 %30, i8* %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @Ndis802_11WEPDisabled, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %24
  %46 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %47 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %49 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %50 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %219

51:                                               ; preds = %24
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %129

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp sle i32 %55, 4
  br i1 %56, label %57, label %129

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %60 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %62 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %65, align 8
  %67 = load i64, i64* @BSS0, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %66, i64 %67
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %63, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %57
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %79, align 8
  %81 = load i64, i64* @BSS0, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %80, i64 %81
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %91 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %77, %57
  %93 = load i8*, i8** %9, align 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %95, align 8
  %97 = load i64, i64* @BSS0, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %96, i64 %97
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %107 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @memcpy(i8* %93, i32 %105, i64 %108)
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %92
  %117 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %118 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %119 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %128

122:                                              ; preds = %92
  %123 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %124 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %125 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %116
  br label %218

129:                                              ; preds = %54, %51
  %130 = load i32, i32* %11, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %217

132:                                              ; preds = %129
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %141 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %142 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %151

145:                                              ; preds = %132
  %146 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %147 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %148 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %153, align 8
  %155 = load i64, i64* @BSS0, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %154, i64 %155
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %166 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %165, i32 0, i32 1
  store i64 %164, i64* %166, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %169, align 8
  %171 = load i64, i64* @BSS0, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %170, i64 %171
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %182 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @memcpy(i8* %167, i32 %180, i64 %183)
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @Ndis802_11AuthModeShared, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %151
  %192 = load i32, i32* @IW_ENCODE_RESTRICTED, align 4
  %193 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %194 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 8
  br label %203

197:                                              ; preds = %151
  %198 = load i32, i32* @IW_ENCODE_OPEN, align 4
  %199 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %200 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 8
  br label %203

203:                                              ; preds = %197, %191
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = add i64 %207, 1
  %209 = trunc i64 %208 to i32
  %210 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %211 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %210, i32 0, i32 0
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %213 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %214 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %203, %129
  br label %218

218:                                              ; preds = %217, %128
  br label %219

219:                                              ; preds = %218, %45
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %219, %19
  %221 = load i32, i32* %5, align 4
  ret i32 %221
}

declare dso_local i32 @RTMP_TEST_FLAG(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
