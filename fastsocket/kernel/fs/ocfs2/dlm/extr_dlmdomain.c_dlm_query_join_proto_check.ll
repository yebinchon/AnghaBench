; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_proto_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_query_join_proto_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_protocol_version = type { i32, i32 }

@.str = private unnamed_addr constant [78 x i8] c"node %u wanted to join with %s locking protocol %u.%u, we respond with %u.%u\0A\00", align 1
@ML_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"Node %u wanted to join with %s locking protocol %u.%u, but we have %u.%u, disallowing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.dlm_protocol_version*, %struct.dlm_protocol_version*)* @dlm_query_join_proto_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_query_join_proto_check(i8* %0, i32 %1, %struct.dlm_protocol_version* %2, %struct.dlm_protocol_version* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dlm_protocol_version*, align 8
  %8 = alloca %struct.dlm_protocol_version*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dlm_protocol_version, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dlm_protocol_version* %2, %struct.dlm_protocol_version** %7, align 8
  store %struct.dlm_protocol_version* %3, %struct.dlm_protocol_version** %8, align 8
  %11 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %8, align 8
  %12 = bitcast %struct.dlm_protocol_version* %10 to i8*
  %13 = bitcast %struct.dlm_protocol_version* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 8, i1 false)
  %14 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %7, align 8
  %15 = call i32 @dlm_protocol_compare(%struct.dlm_protocol_version* %14, %struct.dlm_protocol_version* %10)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %8, align 8
  %21 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %8, align 8
  %24 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %10, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %19, i32 %22, i32 %25, i32 %27, i32 %29)
  %31 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %8, align 8
  %34 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  store i32 0, i32* %9, align 4
  br label %52

35:                                               ; preds = %4
  %36 = load i32, i32* @ML_NOTICE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %8, align 8
  %40 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %8, align 8
  %43 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %7, align 8
  %46 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dlm_protocol_version*, %struct.dlm_protocol_version** %7, align 8
  %49 = getelementptr inbounds %struct.dlm_protocol_version, %struct.dlm_protocol_version* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mlog(i32 %36, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %37, i8* %38, i32 %41, i32 %44, i32 %47, i32 %50)
  store i32 1, i32* %9, align 4
  br label %52

52:                                               ; preds = %35, %17
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dlm_protocol_compare(%struct.dlm_protocol_version*, %struct.dlm_protocol_version*) #2

declare dso_local i32 @mlog(i32, i8*, i32, i8*, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
