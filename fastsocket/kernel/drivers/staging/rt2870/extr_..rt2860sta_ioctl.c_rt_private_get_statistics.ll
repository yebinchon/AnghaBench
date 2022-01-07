; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_private_get_statistics.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/extr_..rt2860sta_ioctl.c_rt_private_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i64, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_27__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_27__ = type { i64 }
%struct.iw_request_info = type { i32 }
%struct.iw_point = type { i32 }

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
@.str.15 = private unnamed_addr constant [39 x i8] c"WpaSupplicantUP                 = %d\0A\0A\00", align 1
@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [49 x i8] c"<== rt_private_get_statistics, wrq->length = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %struct.iw_point*, i8*)* @rt_private_get_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_private_get_statistics(%struct.net_device* %0, %struct.iw_request_info* %1, %struct.iw_point* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %struct.iw_point*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_19__*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %struct.iw_point* %2, %struct.iw_point** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %19 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %236

22:                                               ; preds = %4
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @IW_PRIV_SIZE_MASK, align 4
  %25 = call i32 @memset(i8* %23, i32 0, i32 %24)
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = sub nsw i32 %50, %56
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %59, i64 %62
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, i8*, ...) @sprintf(i8* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strlen(i8* %72)
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = call i32 (i8*, i8*, ...) @sprintf(i8* %87, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i8*, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = call i32 @strlen(i8* %96)
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load i8*, i8** %9, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @strlen(i8* %108)
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %107, i64 %110
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %9, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = call i32 @strlen(i8* %120)
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = load i8*, i8** %9, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @strlen(i8* %132)
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %140)
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = call i32 @strlen(i8* %143)
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = call i32 (i8*, i8*, ...) @sprintf(i8* %146, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32 %152)
  %154 = load i8*, i8** %9, align 8
  %155 = load i8*, i8** %9, align 8
  %156 = call i32 @strlen(i8* %155)
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %154, i64 %157
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 (i8*, i8*, ...) @sprintf(i8* %158, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  %165 = load i8*, i8** %9, align 8
  %166 = load i8*, i8** %9, align 8
  %167 = call i32 @strlen(i8* %166)
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %174, %177
  %179 = trunc i64 %178 to i32
  %180 = call i32 (i8*, i8*, ...) @sprintf(i8* %169, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %179)
  %181 = load i8*, i8** %9, align 8
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 @strlen(i8* %182)
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %181, i64 %184
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = sub nsw i64 %190, %193
  %195 = trunc i64 %194 to i32
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* %185, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %195)
  %197 = load i8*, i8** %9, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = call i32 @strlen(i8* %198)
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %197, i64 %200
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %206, %209
  %211 = trunc i64 %210 to i32
  %212 = call i32 (i8*, i8*, ...) @sprintf(i8* %201, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32 %211)
  %213 = load i8*, i8** %9, align 8
  %214 = load i8*, i8** %9, align 8
  %215 = call i32 @strlen(i8* %214)
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %213, i64 %216
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 (i8*, i8*, ...) @sprintf(i8* %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %221)
  %223 = load i8*, i8** %9, align 8
  %224 = call i32 @strlen(i8* %223)
  %225 = add nsw i32 %224, 1
  %226 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %227 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %229 = load %struct.iw_point*, %struct.iw_point** %8, align 8
  %230 = getelementptr inbounds %struct.iw_point, %struct.iw_point* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to i8*
  %234 = call i32 @DBGPRINT(i32 %228, i8* %233)
  %235 = load i32, i32* %10, align 4
  store i32 %235, i32* %5, align 4
  br label %236

236:                                              ; preds = %22, %17
  %237 = load i32, i32* %5, align 4
  ret i32 %237
}

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
