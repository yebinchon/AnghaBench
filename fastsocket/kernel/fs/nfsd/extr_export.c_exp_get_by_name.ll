; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_get_by_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_get_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, %struct.path, i32* }
%struct.path = type { i32 }
%struct.cache_req = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@svc_export_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_export* (i32*, %struct.path*, %struct.cache_req*)* @exp_get_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_export* @exp_get_by_name(i32* %0, %struct.path* %1, %struct.cache_req* %2) #0 {
  %4 = alloca %struct.svc_export*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.cache_req*, align 8
  %8 = alloca %struct.svc_export*, align 8
  %9 = alloca %struct.svc_export, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store %struct.cache_req* %2, %struct.cache_req** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.svc_export* @ERR_PTR(i32 %15)
  store %struct.svc_export* %16, %struct.svc_export** %4, align 8
  br label %43

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %9, i32 0, i32 2
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %9, i32 0, i32 1
  %21 = load %struct.path*, %struct.path** %6, align 8
  %22 = bitcast %struct.path* %20 to i8*
  %23 = bitcast %struct.path* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 %23, i64 4, i1 false)
  %24 = call %struct.svc_export* @svc_export_lookup(%struct.svc_export* %9)
  store %struct.svc_export* %24, %struct.svc_export** %8, align 8
  %25 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %26 = icmp eq %struct.svc_export* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.svc_export* @ERR_PTR(i32 %29)
  store %struct.svc_export* %30, %struct.svc_export** %4, align 8
  br label %43

31:                                               ; preds = %17
  %32 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  %33 = getelementptr inbounds %struct.svc_export, %struct.svc_export* %32, i32 0, i32 0
  %34 = load %struct.cache_req*, %struct.cache_req** %7, align 8
  %35 = call i32 @cache_check(i32* @svc_export_cache, i32* %33, %struct.cache_req* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = call %struct.svc_export* @ERR_PTR(i32 %39)
  store %struct.svc_export* %40, %struct.svc_export** %4, align 8
  br label %43

41:                                               ; preds = %31
  %42 = load %struct.svc_export*, %struct.svc_export** %8, align 8
  store %struct.svc_export* %42, %struct.svc_export** %4, align 8
  br label %43

43:                                               ; preds = %41, %38, %27, %13
  %44 = load %struct.svc_export*, %struct.svc_export** %4, align 8
  ret %struct.svc_export* %44
}

declare dso_local %struct.svc_export* @ERR_PTR(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.svc_export* @svc_export_lookup(%struct.svc_export*) #1

declare dso_local i32 @cache_check(i32*, i32*, %struct.cache_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
