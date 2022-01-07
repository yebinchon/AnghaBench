; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxRegisterVapDev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/extr_usbdrv.c_zfLnxRegisterVapDev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64*, i64, i32, i32*, i32, i32, i32, i32, i32 }
%struct.net_device = type { i64*, i32, i32, i32, i32, i32 }

@vap = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Register vap dev=%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_etherdev fail\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@vap_netdev_ops = common dso_local global i32 0, align 4
@free_netdev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"vap%d\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Register VAP dev success : %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"register VAP device fail\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfLnxRegisterVapDev(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call %struct.TYPE_7__* @alloc_etherdev(i32 0)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %8 = load i64, i64* %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = ptrtoint %struct.TYPE_7__* %15 to i32
  %17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %231

28:                                               ; preds = %2
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = call i32 @ether_setup(%struct.TYPE_7__* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* @ETH_ALEN, align 4
  %46 = call i32 @memcpy(i64* %41, i64* %44, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 9
  store i32 %49, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 8
  store i32 %58, i32* %64, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %69 = load i64, i64* %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 7
  store i32 %67, i32* %73, align 8
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 6
  store i32 %76, i32* %82, align 4
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 5
  store i32 %85, i32* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  store i32* @vap_netdev_ops, i32** %97, align 8
  %98 = load i32, i32* @free_netdev, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %100 = load i64, i64* %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 3
  store i32 %98, i32* %104, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %106 = load i64, i64* %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  store i64 %115, i64* %123, align 8
  %124 = load %struct.net_device*, %struct.net_device** %4, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  store i64 %128, i64* %136, align 8
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %143 = load i64, i64* %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 2
  store i64 %141, i64* %149, align 8
  %150 = load %struct.net_device*, %struct.net_device** %4, align 8
  %151 = getelementptr inbounds %struct.net_device, %struct.net_device* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %156 = load i64, i64* %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 3
  store i64 %154, i64* %162, align 8
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 4
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %169 = load i64, i64* %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 4
  store i64 %167, i64* %175, align 8
  %176 = load %struct.net_device*, %struct.net_device** %4, align 8
  %177 = getelementptr inbounds %struct.net_device, %struct.net_device* %176, i32 0, i32 0
  %178 = load i64*, i64** %177, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 5
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %5, align 8
  %182 = add i64 %181, 1
  %183 = add i64 %180, %182
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %185 = load i64, i64* %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = load i64*, i64** %189, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 5
  store i64 %183, i64* %191, align 8
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %193 = load i64, i64* %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = call i32 @netif_stop_queue(%struct.TYPE_7__* %196)
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %199 = load i64, i64* %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i64, i64* %5, align 8
  %206 = call i32 @sprintf(i32 %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %205)
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %208 = load i64, i64* %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %216 = load i64, i64* %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = call i64 @register_netdevice(%struct.TYPE_7__* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %28
  %223 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vap, align 8
  %225 = load i64, i64* %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %227, align 8
  %228 = load i32, i32* @EINVAL, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %3, align 4
  br label %231

230:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %222, %24
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.TYPE_7__* @alloc_etherdev(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ether_setup(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_7__*) #1

declare dso_local i32 @sprintf(i32, i8*, i64) #1

declare dso_local i64 @register_netdevice(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
