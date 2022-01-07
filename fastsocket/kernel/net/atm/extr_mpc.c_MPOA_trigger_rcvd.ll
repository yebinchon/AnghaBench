; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_MPOA_trigger_rcvd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_mpc.c_MPOA_trigger_rcvd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_message = type { %struct.TYPE_11__, i8* }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.mpoa_client = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_15__*)*, %struct.TYPE_15__* (i32, %struct.mpoa_client*)*, %struct.TYPE_15__* (i32, %struct.mpoa_client*)* }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i8* }

@INGRESS_RESOLVING = common dso_local global i8* null, align 8
@SND_MPOA_RES_RQST = common dso_local global i8* null, align 8
@INGRESS_INVALID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"mpoa: (%s) MPOA_trigger_rcvd: entry already in resolving state\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_message*, %struct.mpoa_client*)* @MPOA_trigger_rcvd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MPOA_trigger_rcvd(%struct.k_message* %0, %struct.mpoa_client* %1) #0 {
  %3 = alloca %struct.k_message*, align 8
  %4 = alloca %struct.mpoa_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.k_message* %0, %struct.k_message** %3, align 8
  store %struct.mpoa_client* %1, %struct.mpoa_client** %4, align 8
  %7 = load %struct.k_message*, %struct.k_message** %3, align 8
  %8 = getelementptr inbounds %struct.k_message, %struct.k_message* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %13 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__* (i32, %struct.mpoa_client*)*, %struct.TYPE_15__* (i32, %struct.mpoa_client*)** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %19 = call %struct.TYPE_15__* %16(i32 %17, %struct.mpoa_client* %18)
  store %struct.TYPE_15__* %19, %struct.TYPE_15__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = icmp eq %struct.TYPE_15__* %20, null
  br i1 %21, label %22, label %58

22:                                               ; preds = %2
  %23 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %24 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__* (i32, %struct.mpoa_client*)*, %struct.TYPE_15__* (i32, %struct.mpoa_client*)** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %30 = call %struct.TYPE_15__* %27(i32 %28, %struct.mpoa_client* %29)
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %6, align 8
  %31 = load i8*, i8** @INGRESS_RESOLVING, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load i8*, i8** @SND_MPOA_RES_RQST, align 8
  %36 = load %struct.k_message*, %struct.k_message** %3, align 8
  %37 = getelementptr inbounds %struct.k_message, %struct.k_message* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.k_message*, %struct.k_message** %3, align 8
  %39 = getelementptr inbounds %struct.k_message, %struct.k_message* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = bitcast %struct.TYPE_12__* %40 to i8*
  %44 = bitcast %struct.TYPE_12__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.k_message*, %struct.k_message** %3, align 8
  %46 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %47 = call i32 @msg_to_mpoad(%struct.k_message* %45, %struct.mpoa_client* %46)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = call i32 @do_gettimeofday(i32* %49)
  %51 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %52 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %54, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %57 = call i32 %55(%struct.TYPE_15__* %56)
  br label %114

58:                                               ; preds = %2
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @INGRESS_INVALID, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  %65 = load i8*, i8** @INGRESS_RESOLVING, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i8*, i8** @SND_MPOA_RES_RQST, align 8
  %70 = load %struct.k_message*, %struct.k_message** %3, align 8
  %71 = getelementptr inbounds %struct.k_message, %struct.k_message* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.k_message*, %struct.k_message** %3, align 8
  %73 = getelementptr inbounds %struct.k_message, %struct.k_message* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = bitcast %struct.TYPE_12__* %74 to i8*
  %78 = bitcast %struct.TYPE_12__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 4 %78, i64 4, i1 false)
  %79 = load %struct.k_message*, %struct.k_message** %3, align 8
  %80 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %81 = call i32 @msg_to_mpoad(%struct.k_message* %79, %struct.mpoa_client* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = call i32 @do_gettimeofday(i32* %83)
  %85 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %86 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %85, i32 0, i32 0
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %88, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = call i32 %89(%struct.TYPE_15__* %90)
  br label %114

92:                                               ; preds = %58
  %93 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %94 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = icmp ne %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %99 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %98, i32 0, i32 1
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  br label %104

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %97
  %105 = phi i8* [ %102, %97 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %103 ]
  %106 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %105)
  %107 = load %struct.mpoa_client*, %struct.mpoa_client** %4, align 8
  %108 = getelementptr inbounds %struct.mpoa_client, %struct.mpoa_client* %107, i32 0, i32 0
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i32 (%struct.TYPE_15__*)*, i32 (%struct.TYPE_15__*)** %110, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = call i32 %111(%struct.TYPE_15__* %112)
  br label %114

114:                                              ; preds = %104, %64, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @msg_to_mpoad(%struct.k_message*, %struct.mpoa_client*) #2

declare dso_local i32 @do_gettimeofday(i32*) #2

declare dso_local i32 @printk(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
