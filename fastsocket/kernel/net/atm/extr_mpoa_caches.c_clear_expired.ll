; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_clear_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpoa_caches.c_clear_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpoa_client = type { i32, %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*, %struct.mpoa_client*)* }
%struct.TYPE_11__ = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.timeval = type { i64 }
%struct.k_message = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }

@SND_EGRESS_PURGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"mpoa: mpoa_caches.c: egress_cache: holding time expired, cache_id = %lu.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpoa_client*)* @clear_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_expired(%struct.mpoa_client* %0) #0 {
  %2 = alloca %struct.mpoa_client*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.k_message, align 8
  store %struct.mpoa_client* %0, %struct.mpoa_client** %2, align 8
  %7 = call i32 @do_gettimeofday(%struct.timeval* %5)
  %8 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %9 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %8, i32 0, i32 0
  %10 = call i32 @write_lock_irq(i32* %9)
  %11 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %12 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %11, i32 0, i32 2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %3, align 8
  br label %14

14:                                               ; preds = %58, %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %22, %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %27, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %17
  %34 = load i32, i32* @SND_EGRESS_PURGE, align 4
  %35 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.k_message, %struct.k_message* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = bitcast %struct.TYPE_9__* %37 to i8*
  %41 = bitcast %struct.TYPE_9__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ntohl(i32 %45)
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %49 = call i32 @msg_to_mpoad(%struct.k_message* %6, %struct.mpoa_client* %48)
  %50 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %51 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_11__*, %struct.mpoa_client*)*, i32 (%struct.TYPE_11__*, %struct.mpoa_client*)** %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %56 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %57 = call i32 %54(%struct.TYPE_11__* %55, %struct.mpoa_client* %56)
  br label %58

58:                                               ; preds = %33, %17
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %3, align 8
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.mpoa_client*, %struct.mpoa_client** %2, align 8
  %62 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %61, i32 0, i32 0
  %63 = call i32 @write_unlock_irq(i32* %62)
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

declare dso_local i32 @write_lock_irq(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
