; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs_callback_authenticate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_callback.c_nfs_callback_authenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CB_NULL = common dso_local global i32 0, align 4
@SVC_DROP = common dso_local global i32 0, align 4
@SVC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_rqst*)* @nfs_callback_authenticate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_callback_authenticate(%struct.svc_rqst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.svc_rqst*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %3, align 8
  %4 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %5 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 128, label %9
    i32 129, label %18
  ]

9:                                                ; preds = %1
  %10 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %11 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CB_NULL, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* @SVC_DROP, align 4
  store i32 %16, i32* %2, align 4
  br label %27

17:                                               ; preds = %9
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %3, align 8
  %20 = call i32 @svc_is_backchannel(%struct.svc_rqst* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @SVC_DROP, align 4
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %1, %17
  %26 = load i32, i32* @SVC_OK, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %22, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @svc_is_backchannel(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
