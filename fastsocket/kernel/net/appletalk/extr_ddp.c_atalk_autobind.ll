; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_autobind.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atalk_autobind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.atalk_sock = type { i64, i32 }
%struct.sockaddr_at = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.atalk_addr = type { i64, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ATADDR_ANYNET = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @atalk_autobind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atalk_autobind(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.atalk_sock*, align 8
  %4 = alloca %struct.sockaddr_at, align 8
  %5 = alloca %struct.atalk_addr*, align 8
  %6 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %7 = load %struct.sock*, %struct.sock** %2, align 8
  %8 = call %struct.atalk_sock* @at_sk(%struct.sock* %7)
  store %struct.atalk_sock* %8, %struct.atalk_sock** %3, align 8
  %9 = call %struct.atalk_addr* (...) @atalk_find_primary()
  store %struct.atalk_addr* %9, %struct.atalk_addr** %5, align 8
  %10 = load i32, i32* @EADDRNOTAVAIL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %13 = icmp ne %struct.atalk_addr* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %16 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @ATADDR_ANYNET, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %1
  br label %46

22:                                               ; preds = %14
  %23 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %24 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %4, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.atalk_sock*, %struct.atalk_sock** %3, align 8
  %29 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %28, i32 0, i32 0
  store i64 %25, i64* %29, align 8
  %30 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %31 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.sockaddr_at, %struct.sockaddr_at* %4, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  %35 = load %struct.atalk_sock*, %struct.atalk_sock** %3, align 8
  %36 = getelementptr inbounds %struct.atalk_sock, %struct.atalk_sock* %35, i32 0, i32 1
  store i32 %32, i32* %36, align 8
  %37 = load %struct.sock*, %struct.sock** %2, align 8
  %38 = call i32 @atalk_pick_and_bind_port(%struct.sock* %37, %struct.sockaddr_at* %4)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %22
  %42 = load %struct.sock*, %struct.sock** %2, align 8
  %43 = load i32, i32* @SOCK_ZAPPED, align 4
  %44 = call i32 @sock_reset_flag(%struct.sock* %42, i32 %43)
  br label %45

45:                                               ; preds = %41, %22
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.atalk_sock* @at_sk(%struct.sock*) #1

declare dso_local %struct.atalk_addr* @atalk_find_primary(...) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @atalk_pick_and_bind_port(%struct.sock*, %struct.sockaddr_at*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
