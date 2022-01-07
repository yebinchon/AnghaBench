; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_update_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211_rx.c_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_network = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32, i32, %struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_8__*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_8__, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, %struct.TYPE_8__ }
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
  %8 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %7, i32 0, i32 46
  %9 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %9, i32 0, i32 46
  %11 = call i32 @memcpy(%struct.TYPE_8__* %8, %struct.TYPE_8__* %10, i32 4)
  %12 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %12, i32 0, i32 45
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %15, i32 0, i32 45
  store i32 %14, i32* %16, align 8
  %17 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %17, i32 0, i32 44
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %20, i32 0, i32 44
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
  %33 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %32, i32 0, i32 43
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %35, i32 0, i32 43
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
  %76 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %75, i32 0, i32 42
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %78, i32 0, i32 42
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %81 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %84 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %85, i32 0, i32 41
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %91 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %90, i32 0, i32 41
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %94, i32 0, i32 41
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %100 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %99, i32 0, i32 41
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
  %111 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %110, i32 0, i32 40
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %113, i32 0, i32 40
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
  %121 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %120, i32 0, i32 39
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %124 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %123, i32 0, i32 39
  store i32 %122, i32* %124, align 8
  %125 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %126 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %125, i32 0, i32 38
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %129 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %128, i32 0, i32 38
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %131 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %130, i32 0, i32 37
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %134 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %133, i32 0, i32 37
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %136 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %135, i32 0, i32 36
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %138, i32 0, i32 36
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %141 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %140, i32 0, i32 35
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %144 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %143, i32 0, i32 35
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %146 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %145, i32 0, i32 34
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %151 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %150, i32 0, i32 34
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %149, i32* %153, align 4
  %154 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %155 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %154, i32 0, i32 34
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %160 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %159, i32 0, i32 34
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 1
  store i32 %158, i32* %162, align 4
  %163 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %164 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %163, i32 0, i32 33
  %165 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %166 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %165, i32 0, i32 33
  %167 = call i32 @memcpy(%struct.TYPE_8__* %164, %struct.TYPE_8__* %166, i32 4)
  %168 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %169 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %168, i32 0, i32 32
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %173 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %172, i32 0, i32 32
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 7
  store i32 %171, i32* %174, align 4
  %175 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %176 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %175, i32 0, i32 32
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 6
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %180 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %179, i32 0, i32 32
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 6
  store i32 %178, i32* %181, align 8
  %182 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %183 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %182, i32 0, i32 32
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %187 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %186, i32 0, i32 32
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  %189 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %190 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %189, i32 0, i32 32
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %194 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %193, i32 0, i32 32
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %198 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %197, i32 0, i32 32
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @memcpy(%struct.TYPE_8__* %192, %struct.TYPE_8__* %196, i32 %200)
  %202 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %203 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %202, i32 0, i32 32
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %207 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %206, i32 0, i32 32
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  store i32 %205, i32* %208, align 4
  %209 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %210 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %209, i32 0, i32 32
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  %213 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %214 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %213, i32 0, i32 32
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %215, align 8
  %217 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %218 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %217, i32 0, i32 32
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @memcpy(%struct.TYPE_8__* %212, %struct.TYPE_8__* %216, i32 %220)
  %222 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %223 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %222, i32 0, i32 32
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %227 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %226, i32 0, i32 32
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 3
  store i32 %225, i32* %228, align 4
  %229 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %230 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %229, i32 0, i32 32
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %234 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %233, i32 0, i32 32
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 2
  store i32 %232, i32* %235, align 8
  %236 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %237 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %236, i32 0, i32 31
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %240 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %239, i32 0, i32 31
  store i32 %238, i32* %240, align 8
  %241 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %242 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %241, i32 0, i32 30
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %245 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %244, i32 0, i32 30
  store i32 %243, i32* %245, align 4
  %246 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %247 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %246, i32 0, i32 29
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %250 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %249, i32 0, i32 29
  store i32 %248, i32* %250, align 8
  %251 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %252 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %251, i32 0, i32 28
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %255 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %254, i32 0, i32 28
  store i32 %253, i32* %255, align 4
  %256 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %257 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %256, i32 0, i32 27
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %260 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %259, i32 0, i32 27
  store i32 %258, i32* %260, align 8
  %261 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %262 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %261, i32 0, i32 26
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %265 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %264, i32 0, i32 26
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %265, align 8
  %267 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %268 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @memcpy(%struct.TYPE_8__* %263, %struct.TYPE_8__* %266, i32 %269)
  %271 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %272 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %275 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %274, i32 0, i32 5
  store i32 %273, i32* %275, align 4
  %276 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %277 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %276, i32 0, i32 25
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %277, align 8
  %279 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %280 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %279, i32 0, i32 25
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %283 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %282, i32 0, i32 6
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @memcpy(%struct.TYPE_8__* %278, %struct.TYPE_8__* %281, i32 %284)
  %286 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %287 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %290 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %289, i32 0, i32 6
  store i32 %288, i32* %290, align 8
  %291 = load i32, i32* @jiffies, align 4
  %292 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %293 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %292, i32 0, i32 24
  store i32 %291, i32* %293, align 8
  %294 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %295 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %294, i32 0, i32 22
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  store i32 %297, i32* %5, align 4
  %298 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %299 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %298, i32 0, i32 22
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  store i32 %301, i32* %6, align 4
  %302 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %303 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @NETWORK_HAS_QOS_MASK, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %309

308:                                              ; preds = %119
  br label %324

309:                                              ; preds = %119
  %310 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %311 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %310, i32 0, i32 22
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %315 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %314, i32 0, i32 22
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  store i32 %313, i32* %316, align 4
  %317 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %318 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %317, i32 0, i32 22
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 3
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %322 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %321, i32 0, i32 22
  %323 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %322, i32 0, i32 3
  store i32 %320, i32* %323, align 4
  br label %324

324:                                              ; preds = %309, %308
  %325 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %326 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %325, i32 0, i32 22
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %328, 1
  br i1 %329, label %330, label %345

330:                                              ; preds = %324
  %331 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %332 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %331, i32 0, i32 7
  store i32 1, i32* %332, align 4
  %333 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %334 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %342

337:                                              ; preds = %330
  %338 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %339 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %338, i32 0, i32 23
  %340 = load %struct.TYPE_8__*, %struct.TYPE_8__** %339, align 8
  %341 = call i32 (i8*, ...) @IEEE80211_DEBUG_QOS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__* %340)
  br label %344

342:                                              ; preds = %330
  %343 = call i32 (i8*, ...) @IEEE80211_DEBUG_QOS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %344

344:                                              ; preds = %342, %337
  br label %345

345:                                              ; preds = %344, %324
  %346 = load i32, i32* %5, align 4
  %347 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %348 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %347, i32 0, i32 22
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 0
  store i32 %346, i32* %349, align 4
  %350 = load i32, i32* %6, align 4
  %351 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %352 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %351, i32 0, i32 22
  %353 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %352, i32 0, i32 2
  store i32 %350, i32* %353, align 4
  %354 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %355 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %354, i32 0, i32 21
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %358 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %357, i32 0, i32 21
  store i32 %356, i32* %358, align 8
  %359 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %360 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %359, i32 0, i32 20
  %361 = load %struct.TYPE_8__*, %struct.TYPE_8__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %390, label %366

366:                                              ; preds = %345
  %367 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %368 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %367, i32 0, i32 20
  %369 = load %struct.TYPE_8__*, %struct.TYPE_8__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i64 1
  %371 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %390, label %374

374:                                              ; preds = %366
  %375 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %376 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %375, i32 0, i32 20
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i64 2
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %390, label %382

382:                                              ; preds = %374
  %383 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %384 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %383, i32 0, i32 20
  %385 = load %struct.TYPE_8__*, %struct.TYPE_8__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i64 1
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %382, %374, %366, %345
  %391 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %392 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %391, i32 0, i32 20
  %393 = load %struct.TYPE_8__*, %struct.TYPE_8__** %392, align 8
  %394 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %395 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %394, i32 0, i32 20
  %396 = load %struct.TYPE_8__*, %struct.TYPE_8__** %395, align 8
  %397 = load i32, i32* @WME_AC_PRAM_LEN, align 4
  %398 = call i32 @memcpy(%struct.TYPE_8__* %393, %struct.TYPE_8__* %396, i32 %397)
  br label %399

399:                                              ; preds = %390, %382
  %400 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %401 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %400, i32 0, i32 17
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %404 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %403, i32 0, i32 17
  store i32 %402, i32* %404, align 4
  %405 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %406 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %405, i32 0, i32 16
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %409 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %408, i32 0, i32 16
  store i32 %407, i32* %409, align 8
  %410 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %411 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %410, i32 0, i32 15
  %412 = load %struct.TYPE_8__*, %struct.TYPE_8__** %411, align 8
  %413 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %414 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %413, i32 0, i32 15
  %415 = load %struct.TYPE_8__*, %struct.TYPE_8__** %414, align 8
  %416 = call i32 @memcpy(%struct.TYPE_8__* %412, %struct.TYPE_8__* %415, i32 2)
  %417 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %418 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %417, i32 0, i32 14
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %421 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %420, i32 0, i32 14
  store i32 %419, i32* %421, align 8
  %422 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %423 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %422, i32 0, i32 13
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %426 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %425, i32 0, i32 13
  store i32 %424, i32* %426, align 4
  %427 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %428 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %427, i32 0, i32 12
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %431 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %430, i32 0, i32 12
  store i32 %429, i32* %431, align 8
  %432 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %433 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %432, i32 0, i32 11
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %433, align 8
  %435 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %436 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %435, i32 0, i32 11
  %437 = load %struct.TYPE_8__*, %struct.TYPE_8__** %436, align 8
  %438 = call i32 @memcpy(%struct.TYPE_8__* %434, %struct.TYPE_8__* %437, i32 6)
  %439 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %440 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %439, i32 0, i32 10
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %443 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %442, i32 0, i32 10
  store i32 %441, i32* %443, align 8
  %444 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %445 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %444, i32 0, i32 9
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.ieee80211_network*, %struct.ieee80211_network** %3, align 8
  %448 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %447, i32 0, i32 9
  store i32 %446, i32* %448, align 4
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
