; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_valuable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c_rt_valuable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtable = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@RTCF_REDIRECTED = common dso_local global i32 0, align 4
@RTCF_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtable*)* @rt_valuable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_valuable(%struct.rtable* %0) #0 {
  %2 = alloca %struct.rtable*, align 8
  store %struct.rtable* %0, %struct.rtable** %2, align 8
  %3 = load %struct.rtable*, %struct.rtable** %2, align 8
  %4 = getelementptr inbounds %struct.rtable, %struct.rtable* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RTCF_REDIRECTED, align 4
  %7 = load i32, i32* @RTCF_NOTIFY, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.rtable*, %struct.rtable** %2, align 8
  %13 = getelementptr inbounds %struct.rtable, %struct.rtable* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %11, %1
  %19 = phi i1 [ true, %1 ], [ %17, %11 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
