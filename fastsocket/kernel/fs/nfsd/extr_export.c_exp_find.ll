; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_export = type { i32, i32 }
%struct.auth_domain = type { i32 }
%struct.cache_req = type { i32 }
%struct.svc_expkey = type { i32, i32 }

@svc_expkey_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_export* (%struct.auth_domain*, i32, i32*, %struct.cache_req*)* @exp_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_export* @exp_find(%struct.auth_domain* %0, i32 %1, i32* %2, %struct.cache_req* %3) #0 {
  %5 = alloca %struct.svc_export*, align 8
  %6 = alloca %struct.auth_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cache_req*, align 8
  %10 = alloca %struct.svc_export*, align 8
  %11 = alloca %struct.svc_expkey*, align 8
  store %struct.auth_domain* %0, %struct.auth_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.cache_req* %3, %struct.cache_req** %9, align 8
  %12 = load %struct.auth_domain*, %struct.auth_domain** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load %struct.cache_req*, %struct.cache_req** %9, align 8
  %16 = call %struct.svc_export* @exp_find_key(%struct.auth_domain* %12, i32 %13, i32* %14, %struct.cache_req* %15)
  %17 = bitcast %struct.svc_export* %16 to %struct.svc_expkey*
  store %struct.svc_expkey* %17, %struct.svc_expkey** %11, align 8
  %18 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  %19 = bitcast %struct.svc_expkey* %18 to %struct.svc_export*
  %20 = call i64 @IS_ERR(%struct.svc_export* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  %24 = bitcast %struct.svc_expkey* %23 to %struct.svc_export*
  %25 = call %struct.svc_export* @ERR_CAST(%struct.svc_export* %24)
  store %struct.svc_export* %25, %struct.svc_export** %5, align 8
  br label %43

26:                                               ; preds = %4
  %27 = load %struct.auth_domain*, %struct.auth_domain** %6, align 8
  %28 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  %29 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %28, i32 0, i32 1
  %30 = load %struct.cache_req*, %struct.cache_req** %9, align 8
  %31 = call %struct.svc_export* @exp_get_by_name(%struct.auth_domain* %27, i32* %29, %struct.cache_req* %30)
  store %struct.svc_export* %31, %struct.svc_export** %10, align 8
  %32 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  %33 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %32, i32 0, i32 0
  %34 = call i32 @cache_put(i32* %33, i32* @svc_expkey_cache)
  %35 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %36 = call i64 @IS_ERR(%struct.svc_export* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  %40 = call %struct.svc_export* @ERR_CAST(%struct.svc_export* %39)
  store %struct.svc_export* %40, %struct.svc_export** %5, align 8
  br label %43

41:                                               ; preds = %26
  %42 = load %struct.svc_export*, %struct.svc_export** %10, align 8
  store %struct.svc_export* %42, %struct.svc_export** %5, align 8
  br label %43

43:                                               ; preds = %41, %38, %22
  %44 = load %struct.svc_export*, %struct.svc_export** %5, align 8
  ret %struct.svc_export* %44
}

declare dso_local %struct.svc_export* @exp_find_key(%struct.auth_domain*, i32, i32*, %struct.cache_req*) #1

declare dso_local i64 @IS_ERR(%struct.svc_export*) #1

declare dso_local %struct.svc_export* @ERR_CAST(%struct.svc_export*) #1

declare dso_local %struct.svc_export* @exp_get_by_name(%struct.auth_domain*, i32*, %struct.cache_req*) #1

declare dso_local i32 @cache_put(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
