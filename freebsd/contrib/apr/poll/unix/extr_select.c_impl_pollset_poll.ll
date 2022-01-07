; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/apr/poll/unix/extr_select.c_impl_pollset_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/apr/poll/unix/extr_select.c_impl_pollset_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_11__** }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_15__*, i64, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.timeval = type { i64, i64 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@APR_TIMEUP = common dso_local global i32 0, align 4
@APR_POLL_SOCKET = common dso_local global i64 0, align 8
@APR_POLLSET_WAKEABLE = common dso_local global i32 0, align 4
@APR_EINTR = common dso_local global i32 0, align 4
@APR_EBADF = common dso_local global i32 0, align 4
@APR_POLLIN = common dso_local global i32 0, align 4
@APR_POLLOUT = common dso_local global i32 0, align 4
@APR_POLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i32*, %struct.TYPE_15__**)* @impl_pollset_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @impl_pollset_poll(%struct.TYPE_14__* %0, i64 %1, i32* %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %20 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %20, i32* %18, align 4
  %21 = load i64, i64* %7, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store %struct.timeval* null, %struct.timeval** %14, align 8
  br label %31

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @apr_time_sec(i64 %25)
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @apr_time_usec(i64 %28)
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %13, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  store %struct.timeval* %13, %struct.timeval** %14, align 8
  br label %31

31:                                               ; preds = %24, %23
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 6
  %36 = call i32 @memcpy(i32* %15, i32* %35, i32 4)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 5
  %41 = call i32 @memcpy(i32* %16, i32* %40, i32 4)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 4
  %46 = call i32 @memcpy(i32* %17, i32* %45, i32 4)
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = load %struct.timeval*, %struct.timeval** %14, align 8
  %54 = call i32 @select(i64 %52, i32* %15, i32* %16, i32* %17, %struct.timeval* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %31
  %60 = call i32 (...) @apr_get_netos_error()
  store i32 %60, i32* %5, align 4
  br label %238

61:                                               ; preds = %31
  %62 = load i32, i32* %10, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @APR_TIMEUP, align 4
  store i32 %65, i32* %5, align 4
  br label %238

66:                                               ; preds = %61
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %67

67:                                               ; preds = %216, %66
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %219

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @APR_POLL_SOCKET, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %73
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %89, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %19, align 4
  br label %128

98:                                               ; preds = %73
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @APR_POLLSET_WAKEABLE, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %98
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %114, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %118, i64 0
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %119, align 8
  %121 = icmp eq %struct.TYPE_11__* %115, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %105
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = call i32 @apr_pollset_drain_wakeup_pipe(%struct.TYPE_14__* %123)
  %125 = load i32, i32* @APR_EINTR, align 4
  store i32 %125, i32* %18, align 4
  br label %216

126:                                              ; preds = %105, %98
  %127 = load i32, i32* @APR_EBADF, align 4
  store i32 %127, i32* %5, align 4
  br label %238

128:                                              ; preds = %85
  %129 = load i32, i32* %19, align 4
  %130 = call i64 @FD_ISSET(i32 %129, i32* %15)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i32, i32* %19, align 4
  %134 = call i64 @FD_ISSET(i32 %133, i32* %16)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %19, align 4
  %138 = call i64 @FD_ISSET(i32 %137, i32* %17)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %215

140:                                              ; preds = %136, %132, %128
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  %146 = load i64, i64* %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i64 %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 8
  %153 = load i64, i64* %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i64 %153
  %155 = bitcast %struct.TYPE_15__* %147 to i8*
  %156 = bitcast %struct.TYPE_15__* %154 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 32, i1 false)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = load i64, i64* %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  store i32 0, i32* %164, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i64 @FD_ISSET(i32 %165, i32* %15)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %180

168:                                              ; preds = %140
  %169 = load i32, i32* @APR_POLLIN, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = load i64, i64* %12, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = or i32 %178, %169
  store i32 %179, i32* %177, align 8
  br label %180

180:                                              ; preds = %168, %140
  %181 = load i32, i32* %19, align 4
  %182 = call i64 @FD_ISSET(i32 %181, i32* %16)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %180
  %185 = load i32, i32* @APR_POLLOUT, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = load i64, i64* %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %185
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %184, %180
  %197 = load i32, i32* %19, align 4
  %198 = call i64 @FD_ISSET(i32 %197, i32* %17)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %196
  %201 = load i32, i32* @APR_POLLERR, align 4
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %205, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %201
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %200, %196
  %213 = load i64, i64* %12, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %12, align 8
  br label %215

215:                                              ; preds = %212, %136
  br label %216

216:                                              ; preds = %215, %122
  %217 = load i64, i64* %11, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %11, align 8
  br label %67

219:                                              ; preds = %67
  %220 = load i64, i64* %12, align 8
  %221 = trunc i64 %220 to i32
  %222 = load i32*, i32** %8, align 8
  store i32 %221, i32* %222, align 4
  %223 = icmp ne i32 %221, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %225, i32* %18, align 4
  br label %226

226:                                              ; preds = %224, %219
  %227 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %228 = icmp ne %struct.TYPE_15__** %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 2
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %234, %struct.TYPE_15__** %235, align 8
  br label %236

236:                                              ; preds = %229, %226
  %237 = load i32, i32* %18, align 4
  store i32 %237, i32* %5, align 4
  br label %238

238:                                              ; preds = %236, %126, %64, %59
  %239 = load i32, i32* %5, align 4
  ret i32 %239
}

declare dso_local i64 @apr_time_sec(i64) #1

declare dso_local i64 @apr_time_usec(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @apr_get_netos_error(...) #1

declare dso_local i32 @apr_pollset_drain_wakeup_pipe(%struct.TYPE_14__*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
