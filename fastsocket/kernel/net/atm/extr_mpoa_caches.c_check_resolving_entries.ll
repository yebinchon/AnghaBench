; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_check_resolving_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_check_resolving_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, %struct.timeval, %struct.TYPE_7__, %struct.timeval }
%struct.TYPE_7__ = type { i32 }
%struct.timeval = type { i64 }
%struct.atm_mpoa_qos = type { i32 }
%struct.k_message = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }

@INGRESS_RESOLVING = common dso_local global i64 0, align 8
@MPC_C1 = common dso_local global i32 0, align 4
@SND_MPOA_RES_RTRY = common dso_local global i32 0, align 4
@ATM_ESA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @check_resolving_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_resolving_entries(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca %struct.atm_mpoa_qos*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.k_message, align 4
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %7 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %9 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %8, i32 0, i32 0
  %10 = call i32 @read_lock_bh(i32* %9)
  %11 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %12 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  br label %14

14:                                               ; preds = %122, %70, %36, %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %126

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INGRESS_RESOLVING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %122

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %25, %29
  %31 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %32 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %30, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %4, align 8
  br label %14

40:                                               ; preds = %23
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %121

52:                                               ; preds = %40
  %53 = load i32, i32* @MPC_C1, align 4
  %54 = sext i32 %53 to i64
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = mul nsw i64 %54, %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %65 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %63, %68
  br i1 %69, label %70, label %84

70:                                               ; preds = %52
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = call i32 @do_gettimeofday(%struct.timeval* %72)
  %74 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %75 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %4, align 8
  br label %14

84:                                               ; preds = %52
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = call i32 @memset(%struct.timeval* %86, i32 0, i32 8)
  %88 = load i32, i32* @SND_MPOA_RES_RTRY, align 4
  %89 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 3
  store i32 %88, i32* %89, align 4
  %90 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %93 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATM_ESA_LEN, align 4
  %96 = call i32 @memcpy(i32 %91, i32 %94, i32 %95)
  %97 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 4
  %101 = bitcast %struct.TYPE_7__* %98 to i8*
  %102 = bitcast %struct.TYPE_7__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 8 %102, i64 4, i1 false)
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32 %106)
  store %struct.atm_mpoa_qos* %107, %struct.atm_mpoa_qos** %3, align 8
  %108 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %109 = icmp ne %struct.atm_mpoa_qos* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %84
  %111 = load %struct.atm_mpoa_qos*, %struct.atm_mpoa_qos** %3, align 8
  %112 = getelementptr inbounds %struct.atm_mpoa_qos, %struct.atm_mpoa_qos* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %84
  %116 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %117 = call i32 @msg_to_mpoad(%struct.k_message* %6, %struct.mpoa_client* %116)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = call i32 @do_gettimeofday(%struct.timeval* %119)
  br label %121

121:                                              ; preds = %115, %40
  br label %122

122:                                              ; preds = %121, %17
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  store %struct.TYPE_8__* %125, %struct.TYPE_8__** %4, align 8
  br label %14

126:                                              ; preds = %14
  %127 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %128 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %127, i32 0, i32 0
  %129 = call i32 @read_unlock_bh(i32* %128)
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @memset(%struct.timeval*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.atm_mpoa_qos* @atm_mpoa_search_qos(i32) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
