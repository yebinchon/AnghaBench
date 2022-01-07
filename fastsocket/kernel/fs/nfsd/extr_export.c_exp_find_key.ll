; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_find_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_export.c_exp_find_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_expkey = type { i32, i32, i32, i32* }
%struct.cache_req = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@svc_expkey_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_expkey* (i32*, i32, i32*, %struct.cache_req*)* @exp_find_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_expkey* @exp_find_key(i32* %0, i32 %1, i32* %2, %struct.cache_req* %3) #0 {
  %5 = alloca %struct.svc_expkey*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cache_req*, align 8
  %10 = alloca %struct.svc_expkey, align 8
  %11 = alloca %struct.svc_expkey*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.cache_req* %3, %struct.cache_req** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.svc_expkey* @ERR_PTR(i32 %17)
  store %struct.svc_expkey* %18, %struct.svc_expkey** %5, align 8
  br label %49

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %10, i32 0, i32 3
  store i32* %20, i32** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %10, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @key_len(i32 %27)
  %29 = call i32 @memcpy(i32 %25, i32* %26, i32 %28)
  %30 = call %struct.svc_expkey* @svc_expkey_lookup(%struct.svc_expkey* %10)
  store %struct.svc_expkey* %30, %struct.svc_expkey** %11, align 8
  %31 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  %32 = icmp eq %struct.svc_expkey* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.svc_expkey* @ERR_PTR(i32 %35)
  store %struct.svc_expkey* %36, %struct.svc_expkey** %5, align 8
  br label %49

37:                                               ; preds = %19
  %38 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  %39 = getelementptr inbounds %struct.svc_expkey, %struct.svc_expkey* %38, i32 0, i32 1
  %40 = load %struct.cache_req*, %struct.cache_req** %9, align 8
  %41 = call i32 @cache_check(i32* @svc_expkey_cache, i32* %39, %struct.cache_req* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = call %struct.svc_expkey* @ERR_PTR(i32 %45)
  store %struct.svc_expkey* %46, %struct.svc_expkey** %5, align 8
  br label %49

47:                                               ; preds = %37
  %48 = load %struct.svc_expkey*, %struct.svc_expkey** %11, align 8
  store %struct.svc_expkey* %48, %struct.svc_expkey** %5, align 8
  br label %49

49:                                               ; preds = %47, %44, %33, %15
  %50 = load %struct.svc_expkey*, %struct.svc_expkey** %5, align 8
  ret %struct.svc_expkey* %50
}

declare dso_local %struct.svc_expkey* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @key_len(i32) #1

declare dso_local %struct.svc_expkey* @svc_expkey_lookup(%struct.svc_expkey*) #1

declare dso_local i32 @cache_check(i32*, i32*, %struct.cache_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
