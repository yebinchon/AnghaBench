; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_cache_hit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_cache_hit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.mpoa_client = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.atm_mpoa_qos = type { i32 }
%struct.k_message = type { i32, %struct.TYPE_9__, i32, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }

@INGRESS_RESOLVED = common dso_local global i64 0, align 8
@OPEN = common dso_local global i32 0, align 4
@INGRESS_REFRESHING = common dso_local global i64 0, align 8
@SND_MPOA_RES_RQST = common dso_local global i8* null, align 8
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@INGRESS_RESOLVING = common dso_local global i64 0, align 8
@CLOSED = common dso_local global i32 0, align 4
@INGRESS_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"mpoa: (%s) mpoa_caches.c: threshold exceeded for ip %pI4, sending MPOA res req\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.mpoa_client*)* @cache_hit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cache_hit(%struct.TYPE_11__* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.mpoa_client*, align 8
  %6 = alloca %struct.atm_mpoa_qos*, align 8
  %7 = alloca %struct.k_message, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %5, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INGRESS_RESOLVED, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @OPEN, align 4
  store i32 %23, i32* %3, align 4
  br label %161

24:                                               ; preds = %17, %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @INGRESS_REFRESHING, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %85

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %35 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %33, %37
  br i1 %38, label %39, label %76

39:                                               ; preds = %30
  %40 = load i8*, i8** @SND_MPOA_RES_RQST, align 8
  %41 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 3
  %46 = bitcast %struct.TYPE_10__* %43 to i8*
  %47 = bitcast %struct.TYPE_10__* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 4, i1 false)
  %48 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %51 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ATM_ESA_LEN, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32 %58)
  store %struct.atm_mpoa_qos* %59, %struct.atm_mpoa_qos** %6, align 8
  %60 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %6, align 8
  %61 = icmp ne %struct.atm_mpoa_qos* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %39
  %63 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %6, align 8
  %64 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %39
  %68 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %69 = call i32 @msg_to_mpoad(%struct.k_message* %7, %struct.mpoa_client* %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = call i32 @do_gettimeofday(i32* %71)
  %73 = load i64, i64* @INGRESS_RESOLVING, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %67, %30
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @OPEN, align 4
  store i32 %82, i32* %3, align 4
  br label %161

83:                                               ; preds = %76
  %84 = load i32, i32* @CLOSED, align 4
  store i32 %84, i32* %3, align 4
  br label %161

85:                                               ; preds = %24
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @INGRESS_RESOLVING, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 4
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @OPEN, align 4
  store i32 %97, i32* %3, align 4
  br label %161

98:                                               ; preds = %91, %85
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %103 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %101, %105
  br i1 %106, label %107, label %159

107:                                              ; preds = %98
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @INGRESS_INVALID, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %159

113:                                              ; preds = %107
  %114 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %115 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = call i32 @dprintk(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %118, i32* %121)
  %123 = load i64, i64* @INGRESS_RESOLVING, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i8*, i8** @SND_MPOA_RES_RQST, align 8
  %127 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 3
  store i8* %126, i8** %127, align 8
  %128 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %131 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @ATM_ESA_LEN, align 4
  %134 = call i32 @memcpy(i32 %129, i32 %132, i32 %133)
  %135 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 3
  %139 = bitcast %struct.TYPE_10__* %136 to i8*
  %140 = bitcast %struct.TYPE_10__* %138 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %139, i8* align 4 %140, i64 4, i1 false)
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32 %144)
  store %struct.atm_mpoa_qos* %145, %struct.atm_mpoa_qos** %6, align 8
  %146 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %6, align 8
  %147 = icmp ne %struct.atm_mpoa_qos* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %113
  %149 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %6, align 8
  %150 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 0
  store i32 %151, i32* %152, align 8
  br label %153

153:                                              ; preds = %148, %113
  %154 = load %struct.mpoa_client*, %struct.mpoa_client** %5, align 8
  %155 = call i32 @msg_to_mpoad(%struct.k_message* %7, %struct.mpoa_client* %154)
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = call i32 @do_gettimeofday(i32* %157)
  br label %159

159:                                              ; preds = %153, %107, %98
  %160 = load i32, i32* @CLOSED, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %96, %83, %81, %22
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32) #2

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #2

declare dso_local i32 @do_gettimeofday(i32*) #2

declare dso_local i32 @dprintk(i8*, i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
