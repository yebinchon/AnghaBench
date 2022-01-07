; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_private_get_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/extr_sta_ioctl.c_rt_private_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__, i64, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_31__ }
%struct.TYPE_22__ = type { i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__ }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_31__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@IW_PRIV_SIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Tx success                      = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Tx success without retry        = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Tx success after retry          = %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Tx fail to Rcv ACK after retry  = %ld\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"RTS Success Rcv CTS             = %ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"RTS Fail Rcv CTS                = %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Rx success                      = %ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Rx with CRC                     = %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Rx drop due to out of resource  = %ld\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"Rx duplicate frame              = %ld\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"False CCA (one second)          = %ld\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"RSSI-A                          = %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"RSSI-B (if available)           = %ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"RSSI-C (if available)           = %ld\0A\0A\00", align 1
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [49 x i8] c"<== rt_private_get_statistics, wrq->length = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @rt_private_get_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_private_get_statistics(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.TYPE_23__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device* %12)
  store %struct.TYPE_23__* %13, %struct.TYPE_23__** %11, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %18 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %225

21:                                               ; preds = %4
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @IW_PRIV_SIZE_MASK, align 4
  %24 = call i32 @memset(i8* %22, i32 0, i32 %23)
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i8*, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = sub nsw i32 %49, %55
  %57 = call i32 (i8*, i8*, ...) @sprintf(i8* %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @strlen(i8* %59)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i8*, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @strlen(i8* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, i8*, ...) @sprintf(i8* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, i8*, ...) @sprintf(i8* %86, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = load i8*, i8** %9, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %9, align 8
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @strlen(i8* %107)
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %116)
  %118 = load i8*, i8** %9, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %118, i64 %121
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* %122, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %128)
  %130 = load i8*, i8** %9, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %130, i64 %133
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = call i32 (i8*, i8*, ...) @sprintf(i8* %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %139)
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 @strlen(i8* %142)
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %141, i64 %144
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %9, align 8
  %154 = load i8*, i8** %9, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 (i8*, i8*, ...) @sprintf(i8* %157, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %162)
  %164 = load i8*, i8** %9, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %173, %176
  %178 = trunc i64 %177 to i32
  %179 = call i32 (i8*, i8*, ...) @sprintf(i8* %168, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %178)
  %180 = load i8*, i8** %9, align 8
  %181 = load i8*, i8** %9, align 8
  %182 = call i32 @strlen(i8* %181)
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %180, i64 %183
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = trunc i64 %193 to i32
  %195 = call i32 (i8*, i8*, ...) @sprintf(i8* %184, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %194)
  %196 = load i8*, i8** %9, align 8
  %197 = load i8*, i8** %9, align 8
  %198 = call i32 @strlen(i8* %197)
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %196, i64 %199
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = sub nsw i64 %205, %208
  %210 = trunc i64 %209 to i32
  %211 = call i32 (i8*, i8*, ...) @sprintf(i8* %200, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %210)
  %212 = load i8*, i8** %9, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = add nsw i32 %213, 1
  %215 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %216 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 4
  %217 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %218 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %219 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = inttoptr i64 %221 to i8*
  %223 = call i32 @DBGPRINT(i32 %217, i8* %222)
  %224 = load i32, i32* %10, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %21, %16
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local %struct.TYPE_23__* @RTMP_OS_NETDEV_GET_PRIV(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
