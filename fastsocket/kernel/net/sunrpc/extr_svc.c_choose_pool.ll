; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_choose_pool.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_choose_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i64, %struct.svc_pool* }
%struct.svc_pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_pool* (%struct.svc_serv*, %struct.svc_pool*, i32*)* @choose_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_pool* @choose_pool(%struct.svc_serv* %0, %struct.svc_pool* %1, i32* %2) #0 {
  %4 = alloca %struct.svc_pool*, align 8
  %5 = alloca %struct.svc_serv*, align 8
  %6 = alloca %struct.svc_pool*, align 8
  %7 = alloca i32*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %5, align 8
  store %struct.svc_pool* %1, %struct.svc_pool** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %9 = icmp ne %struct.svc_pool* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  store %struct.svc_pool* %11, %struct.svc_pool** %4, align 8
  br label %25

12:                                               ; preds = %3
  %13 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %14 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %13, i32 0, i32 1
  %15 = load %struct.svc_pool*, %struct.svc_pool** %14, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = zext i32 %17 to i64
  %20 = load %struct.svc_serv*, %struct.svc_serv** %5, align 8
  %21 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = urem i64 %19, %22
  %24 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %15, i64 %23
  store %struct.svc_pool* %24, %struct.svc_pool** %4, align 8
  br label %25

25:                                               ; preds = %12, %10
  %26 = load %struct.svc_pool*, %struct.svc_pool** %4, align 8
  ret %struct.svc_pool* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
