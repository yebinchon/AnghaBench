; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_init_link_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_init_link_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_req = type { i32, i32, %struct.bearer*, i32, i32 }
%struct.bearer = type { i32 }
%struct.tipc_media_addr = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@DSC_REQ_MSG = common dso_local global i32 0, align 4
@TIPC_LINK_REQ_INIT = common dso_local global i32 0, align 4
@disc_timeout = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.link_req* @tipc_disc_init_link_req(%struct.bearer* %0, %struct.tipc_media_addr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.link_req*, align 8
  %6 = alloca %struct.bearer*, align 8
  %7 = alloca %struct.tipc_media_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.link_req*, align 8
  store %struct.bearer* %0, %struct.bearer** %6, align 8
  store %struct.tipc_media_addr* %1, %struct.tipc_media_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.link_req* @kmalloc(i32 24, i32 %11)
  store %struct.link_req* %12, %struct.link_req** %10, align 8
  %13 = load %struct.link_req*, %struct.link_req** %10, align 8
  %14 = icmp ne %struct.link_req* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.link_req* null, %struct.link_req** %5, align 8
  br label %56

16:                                               ; preds = %4
  %17 = load i32, i32* @DSC_REQ_MSG, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.bearer*, %struct.bearer** %6, align 8
  %21 = call i32 @tipc_disc_init_msg(i32 %17, i32 %18, i32 %19, %struct.bearer* %20)
  %22 = load %struct.link_req*, %struct.link_req** %10, align 8
  %23 = getelementptr inbounds %struct.link_req, %struct.link_req* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.link_req*, %struct.link_req** %10, align 8
  %25 = getelementptr inbounds %struct.link_req, %struct.link_req* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load %struct.link_req*, %struct.link_req** %10, align 8
  %30 = call i32 @kfree(%struct.link_req* %29)
  store %struct.link_req* null, %struct.link_req** %5, align 8
  br label %56

31:                                               ; preds = %16
  %32 = load %struct.link_req*, %struct.link_req** %10, align 8
  %33 = getelementptr inbounds %struct.link_req, %struct.link_req* %32, i32 0, i32 3
  %34 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %7, align 8
  %35 = call i32 @memcpy(i32* %33, %struct.tipc_media_addr* %34, i32 4)
  %36 = load %struct.bearer*, %struct.bearer** %6, align 8
  %37 = load %struct.link_req*, %struct.link_req** %10, align 8
  %38 = getelementptr inbounds %struct.link_req, %struct.link_req* %37, i32 0, i32 2
  store %struct.bearer* %36, %struct.bearer** %38, align 8
  %39 = load i32, i32* @TIPC_LINK_REQ_INIT, align 4
  %40 = load %struct.link_req*, %struct.link_req** %10, align 8
  %41 = getelementptr inbounds %struct.link_req, %struct.link_req* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.link_req*, %struct.link_req** %10, align 8
  %43 = getelementptr inbounds %struct.link_req, %struct.link_req* %42, i32 0, i32 1
  %44 = load i64, i64* @disc_timeout, align 8
  %45 = trunc i64 %44 to i32
  %46 = load %struct.link_req*, %struct.link_req** %10, align 8
  %47 = ptrtoint %struct.link_req* %46 to i64
  %48 = call i32 @k_init_timer(i32* %43, i32 %45, i64 %47)
  %49 = load %struct.link_req*, %struct.link_req** %10, align 8
  %50 = getelementptr inbounds %struct.link_req, %struct.link_req* %49, i32 0, i32 1
  %51 = load %struct.link_req*, %struct.link_req** %10, align 8
  %52 = getelementptr inbounds %struct.link_req, %struct.link_req* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @k_start_timer(i32* %50, i32 %53)
  %55 = load %struct.link_req*, %struct.link_req** %10, align 8
  store %struct.link_req* %55, %struct.link_req** %5, align 8
  br label %56

56:                                               ; preds = %31, %28, %15
  %57 = load %struct.link_req*, %struct.link_req** %5, align 8
  ret %struct.link_req* %57
}

declare dso_local %struct.link_req* @kmalloc(i32, i32) #1

declare dso_local i32 @tipc_disc_init_msg(i32, i32, i32, %struct.bearer*) #1

declare dso_local i32 @kfree(%struct.link_req*) #1

declare dso_local i32 @memcpy(i32*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @k_init_timer(i32*, i32, i64) #1

declare dso_local i32 @k_start_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
