; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_create_pooled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_create_pooled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { %struct.module*, i32 }
%struct.svc_program = type { i32 }
%struct.module = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.svc_serv* @svc_create_pooled(%struct.svc_program* %0, i32 %1, void (%struct.svc_serv*)* %2, i32 %3, %struct.module* %4) #0 {
  %6 = alloca %struct.svc_program*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.svc_serv*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.module*, align 8
  %11 = alloca %struct.svc_serv*, align 8
  %12 = alloca i32, align 4
  store %struct.svc_program* %0, %struct.svc_program** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (%struct.svc_serv*)* %2, void (%struct.svc_serv*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.module* %4, %struct.module** %10, align 8
  %13 = call i32 (...) @svc_pool_map_get()
  store i32 %13, i32* %12, align 4
  %14 = load %struct.svc_program*, %struct.svc_program** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load void (%struct.svc_serv*)*, void (%struct.svc_serv*)** %8, align 8
  %18 = call %struct.svc_serv* @__svc_create(%struct.svc_program* %14, i32 %15, i32 %16, void (%struct.svc_serv*)* %17)
  store %struct.svc_serv* %18, %struct.svc_serv** %11, align 8
  %19 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %20 = icmp ne %struct.svc_serv* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %24 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.module*, %struct.module** %10, align 8
  %26 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  %27 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %26, i32 0, i32 0
  store %struct.module* %25, %struct.module** %27, align 8
  br label %28

28:                                               ; preds = %21, %5
  %29 = load %struct.svc_serv*, %struct.svc_serv** %11, align 8
  ret %struct.svc_serv* %29
}

declare dso_local i32 @svc_pool_map_get(...) #1

declare dso_local %struct.svc_serv* @__svc_create(%struct.svc_program*, i32, i32, void (%struct.svc_serv*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
