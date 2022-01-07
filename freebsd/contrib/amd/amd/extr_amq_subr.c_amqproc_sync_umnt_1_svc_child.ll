; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amq_subr.c_amqproc_sync_umnt_1_svc_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amq_subr.c_amqproc_sync_umnt_1_svc_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_8__ = type { i64* }

@amqproc_sync_umnt_1_svc_child.rv = internal global %struct.TYPE_7__ zeroinitializer, align 4
@AMQ_UMNT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @amqproc_sync_umnt_1_svc_child(i64 %0, %struct.svc_req* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = call %struct.TYPE_8__* @find_ap(i8* %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = call i32 @memset(%struct.TYPE_7__* @amqproc_sync_umnt_1_svc_child.rv, i32 0, i32 4)
  %13 = load i32, i32* @AMQ_UMNT_READ, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @amqproc_sync_umnt_1_svc_child.rv, i32 0, i32 0), align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @read(i64 %28, %struct.TYPE_7__* %5, i32 4)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = bitcast %struct.TYPE_7__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_7__* @amqproc_sync_umnt_1_svc_child.rv to i8*), i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %33, %23
  br label %36

36:                                               ; preds = %35, %16, %2
  ret %struct.TYPE_7__* @amqproc_sync_umnt_1_svc_child.rv
}

declare dso_local %struct.TYPE_8__* @find_ap(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @read(i64, %struct.TYPE_7__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
