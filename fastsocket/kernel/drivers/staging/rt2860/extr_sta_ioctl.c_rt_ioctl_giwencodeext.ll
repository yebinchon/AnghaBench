; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_giwencodeext.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2860/extr_sta_ioctl.c_rt_ioctl_giwencodeext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.TYPE_4__ = type { i32, i32* }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.iw_point }
%struct.iw_point = type { i32, i32 }
%struct.iw_encode_ext = type { i32, i32, i32 }

@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"===> rt_ioctl_giwencodeext\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IW_ENCODE_INDEX = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_NONE = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_WEP = common dso_local global i32 0, align 4
@BSS0 = common dso_local global i64 0, align 8
@E2BIG = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_TKIP = common dso_local global i32 0, align 4
@IW_ENCODE_ALG_CCMP = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ioctl_giwencodeext(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iw_point*, align 8
  %13 = alloca %struct.iw_encode_ext*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %10, align 8
  store i32* null, i32** %11, align 8
  %19 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %20 = bitcast %union.iwreq_data* %19 to %struct.iw_point*
  store %struct.iw_point* %20, %struct.iw_point** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.iw_encode_ext*
  store %struct.iw_encode_ext* %22, %struct.iw_encode_ext** %13, align 8
  %23 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %24 = call i32 @DBGPRINT(i32 %23, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %26 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = sub i64 %28, 12
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %208

36:                                               ; preds = %4
  %37 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %38 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IW_ENCODE_INDEX, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %36
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 1
  br i1 %46, label %50, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %48, 4
  br i1 %49, label %50, label %53

50:                                               ; preds = %47, %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %208

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %14, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 131
  br i1 %60, label %67, label %61

61:                                               ; preds = %53
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 130
  br i1 %66, label %67, label %78

67:                                               ; preds = %61, %53
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %68, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %76 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  store i32 0, i32* %5, align 4
  br label %208

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77, %61
  br label %84

79:                                               ; preds = %36
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %14, align 4
  br label %84

84:                                               ; preds = %79, %78
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %88 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %90 = call i32 @memset(%struct.iw_encode_ext* %89, i32 0, i32 12)
  %91 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %92 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  switch i32 %96, label %182 [
    i32 129, label %97
    i32 128, label %106
    i32 131, label %153
    i32 130, label %153
  ]

97:                                               ; preds = %84
  %98 = load i32, i32* @IW_ENCODE_ALG_NONE, align 4
  %99 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %100 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  %102 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %103 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %185

106:                                              ; preds = %84
  %107 = load i32, i32* @IW_ENCODE_ALG_WEP, align 4
  %108 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %109 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %111, align 8
  %113 = load i64, i64* @BSS0, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %112, i64 %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %15, align 4
  %122 = icmp sgt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %106
  %124 = load i32, i32* @E2BIG, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %208

126:                                              ; preds = %106
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %128, align 8
  %130 = load i64, i64* @BSS0, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %129, i64 %130
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %139 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %141, align 8
  %143 = load i64, i64* @BSS0, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %142, i64 %143
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32* %151, i32** %11, align 8
  br label %152

152:                                              ; preds = %126
  br label %185

153:                                              ; preds = %84, %84
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 131
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load i32, i32* @IW_ENCODE_ALG_TKIP, align 4
  %161 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %162 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  br label %167

163:                                              ; preds = %153
  %164 = load i32, i32* @IW_ENCODE_ALG_CCMP, align 4
  %165 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %166 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %15, align 4
  %169 = icmp slt i32 %168, 32
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load i32, i32* @E2BIG, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %5, align 4
  br label %208

173:                                              ; preds = %167
  %174 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %175 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %174, i32 0, i32 0
  store i32 32, i32* %175, align 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 0
  store i32* %180, i32** %11, align 8
  br label %181

181:                                              ; preds = %173
  br label %185

182:                                              ; preds = %84
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %5, align 4
  br label %208

185:                                              ; preds = %181, %152, %97
  %186 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %187 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %185
  %191 = load i32*, i32** %11, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %207

193:                                              ; preds = %190
  %194 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %195 = load %struct.iw_point*, %struct.iw_point** %12, align 8
  %196 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %200 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %11, align 8
  %203 = load %struct.iw_encode_ext*, %struct.iw_encode_ext** %13, align 8
  %204 = getelementptr inbounds %struct.iw_encode_ext, %struct.iw_encode_ext* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @memcpy(i32 %201, i32* %202, i32 %205)
  br label %207

207:                                              ; preds = %193, %190, %185
  store i32 0, i32* %5, align 4
  br label %208

208:                                              ; preds = %207, %182, %170, %123, %74, %50, %33
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @memset(%struct.iw_encode_ext*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
