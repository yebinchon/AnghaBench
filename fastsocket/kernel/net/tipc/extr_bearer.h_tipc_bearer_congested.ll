; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.h_tipc_bearer_congested.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.h_tipc_bearer_congested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.link = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bearer*, %struct.link*)* @tipc_bearer_congested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tipc_bearer_congested(%struct.bearer* %0, %struct.link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bearer*, align 8
  %5 = alloca %struct.link*, align 8
  store %struct.bearer* %0, %struct.bearer** %4, align 8
  store %struct.link* %1, %struct.link** %5, align 8
  %6 = load %struct.bearer*, %struct.bearer** %4, align 8
  %7 = getelementptr inbounds %struct.bearer, %struct.bearer* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.bearer*, %struct.bearer** %4, align 8
  %15 = getelementptr inbounds %struct.bearer, %struct.bearer* %14, i32 0, i32 0
  %16 = call i32 @list_empty(i32* %15)
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %27

20:                                               ; preds = %13
  %21 = load %struct.bearer*, %struct.bearer** %4, align 8
  %22 = load %struct.link*, %struct.link** %5, align 8
  %23 = call i32 @tipc_bearer_resolve_congestion(%struct.bearer* %21, %struct.link* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %19, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tipc_bearer_resolve_congestion(%struct.bearer*, %struct.link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
