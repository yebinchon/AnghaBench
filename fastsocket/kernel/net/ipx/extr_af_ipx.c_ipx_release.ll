; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipx/extr_af_ipx.c_ipx_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 (%struct.sock*)* }

@SOCK_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @ipx_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipx_release(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = getelementptr inbounds %struct.socket, %struct.socket* %4, i32 0, i32 0
  %6 = load %struct.sock*, %struct.sock** %5, align 8
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = icmp ne %struct.sock* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %31

10:                                               ; preds = %1
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = load i32, i32* @SOCK_DEAD, align 4
  %13 = call i32 @sock_flag(%struct.sock* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load %struct.sock*, %struct.sock** %3, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 0
  %18 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %17, align 8
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call i32 %18(%struct.sock* %19)
  br label %21

21:                                               ; preds = %15, %10
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  %23 = load i32, i32* @SOCK_DEAD, align 4
  %24 = call i32 @sock_set_flag(%struct.sock* %22, i32 %23)
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %26, align 8
  %27 = load %struct.sock*, %struct.sock** %3, align 8
  %28 = call i32 @sk_refcnt_debug_release(%struct.sock* %27)
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call i32 @ipx_destroy_socket(%struct.sock* %29)
  br label %31

31:                                               ; preds = %21, %9
  ret i32 0
}

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_refcnt_debug_release(%struct.sock*) #1

declare dso_local i32 @ipx_destroy_socket(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
