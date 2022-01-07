; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svc.c_create_lockd_listener.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svc.c_create_lockd_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i32 }
%struct.svc_xprt = type { i32 }

@init_net = common dso_local global i32 0, align 4
@SVC_SOCK_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svc_serv*, i8*, i32, i16)* @create_lockd_listener to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_lockd_listener(%struct.svc_serv* %0, i8* %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.svc_serv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca %struct.svc_xprt*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  %11 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.svc_xprt* @svc_find_xprt(%struct.svc_serv* %11, i8* %12, i32 %13, i32 0)
  store %struct.svc_xprt* %14, %struct.svc_xprt** %10, align 8
  %15 = load %struct.svc_xprt*, %struct.svc_xprt** %10, align 8
  %16 = icmp eq %struct.svc_xprt* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %4
  %18 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i16, i16* %9, align 2
  %22 = load i32, i32* @SVC_SOCK_DEFAULTS, align 4
  %23 = call i32 @svc_create_xprt(%struct.svc_serv* %18, i8* %19, i32* @init_net, i32 %20, i16 zeroext %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load %struct.svc_xprt*, %struct.svc_xprt** %10, align 8
  %26 = call i32 @svc_xprt_put(%struct.svc_xprt* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.svc_xprt* @svc_find_xprt(%struct.svc_serv*, i8*, i32, i32) #1

declare dso_local i32 @svc_create_xprt(%struct.svc_serv*, i8*, i32*, i32, i16 zeroext, i32) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
