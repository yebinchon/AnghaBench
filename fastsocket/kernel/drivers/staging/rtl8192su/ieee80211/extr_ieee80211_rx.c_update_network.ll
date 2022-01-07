; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_update_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_rx.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_network = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@NETWORK_HAS_ERP_VALUE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@NETWORK_HAS_QOS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"QoS the network %s is QoS supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"QoS the network is QoS supported\0A\00", align 1
@WME_AC_PRAM_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_network*, %struct.ieee80211_network*)* @update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_network(%struct.ieee80211_network* %0, %struct.ieee80211_network* %1) #0 {
  %3 = alloca %struct.ieee80211_network*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_network* %0, %struct.ieee80211_network** %3, align 8
  store %struct.ieee80211_network* %1, %struct.ieee80211_network** %4, align 8
  %7 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %7, i32 0, i32 48
  %9 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %9, i32 0, i32 48
  %11 = call i32 @memcpy(%struct.TYPE_8__* %8, %struct.TYPE_8__* %10, i32 4)
  %12 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %12, i32 0, i32 47
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %15, i32 0, i32 47
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %17, i32 0, i32 46
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %20, i32 0, i32 46
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memcpy(%struct.TYPE_8__* %19, %struct.TYPE_8__* %22, i32 %25)
  %27 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %32, i32 0, i32 45
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %35, i32 0, i32 45
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy(%struct.TYPE_8__* %34, %struct.TYPE_8__* %37, i32 %40)
  %42 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %2
  %52 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %53 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %52, i32 0, i32 23
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @memset(%struct.TYPE_8__* %54, i32 0, i32 %57)
  %59 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %63 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %65 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %64, i32 0, i32 23
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %67, i32 0, i32 23
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @memcpy(%struct.TYPE_8__* %66, %struct.TYPE_8__* %69, i32 %72)
  br label %74

74:                                               ; preds = %51, %2
  %75 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %75, i32 0, i32 44
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %78, i32 0, i32 44
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %85, i32 0, i32 43
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %90, i32 0, i32 43
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %94, i32 0, i32 43
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %99, i32 0, i32 43
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @NETWORK_HAS_ERP_VALUE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %74
  %110 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %110, i32 0, i32 42
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %113, i32 0, i32 42
  store i32 %112, i32* %114, align 4
  %115 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %116 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %115, i32 0, i32 4
  store i32 1, i32* %116, align 8
  %117 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %118 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %117, i32 0, i32 4
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %109, %74
  %120 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %121 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %120, i32 0, i32 41
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %124 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %123, i32 0, i32 41
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %126 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %125, i32 0, i32 40
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %128, i32 0, i32 40
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %130, i32 0, i32 39
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %134 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %133, i32 0, i32 39
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %136 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %135, i32 0, i32 38
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %138, i32 0, i32 38
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %140, i32 0, i32 37
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %144 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %143, i32 0, i32 37
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %146 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %145, i32 0, i32 36
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %151 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %150, i32 0, i32 36
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %154, i32 0, i32 36
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %159, i32 0, i32 36
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %158, i32* %162, align 4
  %163 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %164 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %163, i32 0, i32 35
  %165 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %165, i32 0, i32 35
  %167 = call i32 @memcpy(%struct.TYPE_8__* %164, %struct.TYPE_8__* %166, i32 4)
  %168 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %169 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %168, i32 0, i32 34
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %173 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %172, i32 0, i32 34
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 7
  store i32 %171, i32* %174, align 4
  %175 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %176 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %175, i32 0, i32 34
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %179, i32 0, i32 34
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 6
  store i32 %178, i32* %181, align 8
  %182 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %183 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %182, i32 0, i32 34
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %187 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %186, i32 0, i32 34
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %190 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %189, i32 0, i32 34
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %193, i32 0, i32 34
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %198 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %197, i32 0, i32 34
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @memcpy(%struct.TYPE_8__* %192, %struct.TYPE_8__* %196, i32 %200)
  %202 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %203 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %202, i32 0, i32 34
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %207 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %206, i32 0, i32 34
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  %209 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %210 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %209, i32 0, i32 34
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %214 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %213, i32 0, i32 34
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %218 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %217, i32 0, i32 34
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @memcpy(%struct.TYPE_8__* %212, %struct.TYPE_8__* %216, i32 %220)
  %222 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %223 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %222, i32 0, i32 34
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %227 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %226, i32 0, i32 34
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 3
  store i32 %225, i32* %228, align 4
  %229 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %230 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %229, i32 0, i32 34
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %234 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %233, i32 0, i32 34
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  %236 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %237 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %236, i32 0, i32 33
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %240 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %239, i32 0, i32 33
  store i32 %238, i32* %240, align 8
  %241 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %242 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %241, i32 0, i32 32
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %245 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %244, i32 0, i32 32
  store i32 %243, i32* %245, align 4
  %246 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %247 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %246, i32 0, i32 31
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %250 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %249, i32 0, i32 31
  store i32 %248, i32* %250, align 8
  %251 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %252 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %251, i32 0, i32 30
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %255 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %254, i32 0, i32 30
  store i32 %253, i32* %255, align 4
  %256 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %257 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %256, i32 0, i32 29
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %260 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %259, i32 0, i32 29
  store i32 %258, i32* %260, align 8
  %261 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %262 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %261, i32 0, i32 28
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %265 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %264, i32 0, i32 28
  store i32 %263, i32* %265, align 4
  %266 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %267 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %266, i32 0, i32 27
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %270 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %269, i32 0, i32 27
  store i32 %268, i32* %270, align 8
  %271 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %272 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %271, i32 0, i32 26
  %273 = load %struct.TYPE_8__*, %struct.TYPE_8__** %272, align 8
  %274 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %275 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %274, i32 0, i32 26
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %275, align 8
  %277 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %278 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @memcpy(%struct.TYPE_8__* %273, %struct.TYPE_8__* %276, i32 %279)
  %281 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %282 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %281, i32 0, i32 5
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %285 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 4
  %286 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %287 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %286, i32 0, i32 25
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %287, align 8
  %289 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %290 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %289, i32 0, i32 25
  %291 = load %struct.TYPE_8__*, %struct.TYPE_8__** %290, align 8
  %292 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %293 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @memcpy(%struct.TYPE_8__* %288, %struct.TYPE_8__* %291, i32 %294)
  %296 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %297 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %296, i32 0, i32 6
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %300 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %299, i32 0, i32 6
  store i32 %298, i32* %300, align 8
  %301 = load i32, i32* @jiffies, align 4
  %302 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %303 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %302, i32 0, i32 24
  store i32 %301, i32* %303, align 8
  %304 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %305 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %304, i32 0, i32 22
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %5, align 4
  %308 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %309 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %308, i32 0, i32 22
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  store i32 %311, i32* %6, align 4
  %312 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %313 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @NETWORK_HAS_QOS_MASK, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %119
  br label %334

319:                                              ; preds = %119
  %320 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %321 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %320, i32 0, i32 22
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %325 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %324, i32 0, i32 22
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %325, i32 0, i32 1
  store i32 %323, i32* %326, align 4
  %327 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %328 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %327, i32 0, i32 22
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %332 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %331, i32 0, i32 22
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 3
  store i32 %330, i32* %333, align 4
  br label %334

334:                                              ; preds = %319, %318
  %335 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %336 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %335, i32 0, i32 22
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %355

340:                                              ; preds = %334
  %341 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %342 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %341, i32 0, i32 7
  store i32 1, i32* %342, align 4
  %343 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %344 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %343, i32 0, i32 2
  %345 = load i32, i32* %344, align 8
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %340
  %348 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %349 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %348, i32 0, i32 23
  %350 = load %struct.TYPE_8__*, %struct.TYPE_8__** %349, align 8
  %351 = call i32 (i8*, ...) @IEEE80211_DEBUG_QOS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %350)
  br label %354

352:                                              ; preds = %340
  %353 = call i32 (i8*, ...) @IEEE80211_DEBUG_QOS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %354

354:                                              ; preds = %352, %347
  br label %355

355:                                              ; preds = %354, %334
  %356 = load i32, i32* %5, align 4
  %357 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %358 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %357, i32 0, i32 22
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 0
  store i32 %356, i32* %359, align 4
  %360 = load i32, i32* %6, align 4
  %361 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %362 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %361, i32 0, i32 22
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 2
  store i32 %360, i32* %363, align 4
  %364 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %365 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %364, i32 0, i32 21
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %368 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %367, i32 0, i32 21
  store i32 %366, i32* %368, align 8
  %369 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %370 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %369, i32 0, i32 20
  %371 = load %struct.TYPE_8__*, %struct.TYPE_8__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i64 0
  %373 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %372, i32 0, i32 0
  %374 = load i64, i64* %373, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %400, label %376

376:                                              ; preds = %355
  %377 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %378 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %377, i32 0, i32 20
  %379 = load %struct.TYPE_8__*, %struct.TYPE_8__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %379, i64 1
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %400, label %384

384:                                              ; preds = %376
  %385 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %386 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %385, i32 0, i32 20
  %387 = load %struct.TYPE_8__*, %struct.TYPE_8__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %387, i64 2
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %400, label %392

392:                                              ; preds = %384
  %393 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %394 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %393, i32 0, i32 20
  %395 = load %struct.TYPE_8__*, %struct.TYPE_8__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i64 1
  %397 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %396, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %409

400:                                              ; preds = %392, %384, %376, %355
  %401 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %402 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %401, i32 0, i32 20
  %403 = load %struct.TYPE_8__*, %struct.TYPE_8__** %402, align 8
  %404 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %405 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %404, i32 0, i32 20
  %406 = load %struct.TYPE_8__*, %struct.TYPE_8__** %405, align 8
  %407 = load i32, i32* @WME_AC_PRAM_LEN, align 4
  %408 = call i32 @memcpy(%struct.TYPE_8__* %403, %struct.TYPE_8__* %406, i32 %407)
  br label %409

409:                                              ; preds = %400, %392
  %410 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %411 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %410, i32 0, i32 19
  %412 = load i32, i32* %411, align 8
  %413 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %414 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %413, i32 0, i32 19
  store i32 %412, i32* %414, align 8
  %415 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %416 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %415, i32 0, i32 8
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %419 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %418, i32 0, i32 8
  store i32 %417, i32* %419, align 8
  %420 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %421 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %420, i32 0, i32 18
  %422 = load %struct.TYPE_8__*, %struct.TYPE_8__** %421, align 8
  %423 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %424 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %423, i32 0, i32 18
  %425 = load %struct.TYPE_8__*, %struct.TYPE_8__** %424, align 8
  %426 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %427 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %426, i32 0, i32 8
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @memcpy(%struct.TYPE_8__* %422, %struct.TYPE_8__* %425, i32 %428)
  %430 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %431 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %430, i32 0, i32 17
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %434 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %433, i32 0, i32 17
  store i32 %432, i32* %434, align 4
  %435 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %436 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %435, i32 0, i32 16
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %439 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %438, i32 0, i32 16
  store i32 %437, i32* %439, align 8
  %440 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %441 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %440, i32 0, i32 15
  %442 = load %struct.TYPE_8__*, %struct.TYPE_8__** %441, align 8
  %443 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %444 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %443, i32 0, i32 15
  %445 = load %struct.TYPE_8__*, %struct.TYPE_8__** %444, align 8
  %446 = call i32 @memcpy(%struct.TYPE_8__* %442, %struct.TYPE_8__* %445, i32 2)
  %447 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %448 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %447, i32 0, i32 14
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %451 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %450, i32 0, i32 14
  store i32 %449, i32* %451, align 8
  %452 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %453 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %452, i32 0, i32 13
  %454 = load i32, i32* %453, align 4
  %455 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %456 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %455, i32 0, i32 13
  store i32 %454, i32* %456, align 4
  %457 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %458 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %457, i32 0, i32 12
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %461 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %460, i32 0, i32 12
  store i32 %459, i32* %461, align 8
  %462 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %463 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %462, i32 0, i32 11
  %464 = load %struct.TYPE_8__*, %struct.TYPE_8__** %463, align 8
  %465 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %466 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %465, i32 0, i32 11
  %467 = load %struct.TYPE_8__*, %struct.TYPE_8__** %466, align 8
  %468 = call i32 @memcpy(%struct.TYPE_8__* %464, %struct.TYPE_8__* %467, i32 6)
  %469 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %470 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %469, i32 0, i32 10
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %473 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %472, i32 0, i32 10
  store i32 %471, i32* %473, align 8
  %474 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %475 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %474, i32 0, i32 9
  %476 = load i32, i32* %475, align 4
  %477 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %478 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %477, i32 0, i32 9
  store i32 %476, i32* %478, align 4
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_8__*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @IEEE80211_DEBUG_QOS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
