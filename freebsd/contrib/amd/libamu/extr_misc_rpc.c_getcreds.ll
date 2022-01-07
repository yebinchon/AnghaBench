; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_misc_rpc.c_getcreds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/libamu/extr_misc_rpc.c_getcreds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_req = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.authunix_parms = type { i32, i32 }

@INVALIDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getcreds(%struct.svc_req* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.authunix_parms*, align 8
  store %struct.svc_req* %0, %struct.svc_req** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.authunix_parms* null, %struct.authunix_parms** %10, align 8
  %11 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %12 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %28 [
    i32 128, label %15
  ]

15:                                               ; preds = %4
  %16 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %17 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.authunix_parms*
  store %struct.authunix_parms* %19, %struct.authunix_parms** %10, align 8
  %20 = load %struct.authunix_parms*, %struct.authunix_parms** %10, align 8
  %21 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.authunix_parms*, %struct.authunix_parms** %10, align 8
  %25 = getelementptr inbounds %struct.authunix_parms, %struct.authunix_parms* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  br label %34

28:                                               ; preds = %4
  %29 = load i32, i32* @INVALIDID, align 4
  %30 = load i32*, i32** %8, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %29, i32* %31, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @svcerr_weakauth(i32* %32)
  store i32 -1, i32* %5, align 4
  br label %35

34:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @svcerr_weakauth(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
