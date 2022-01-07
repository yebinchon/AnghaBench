; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_get_saddr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_xfrm4_policy.c_xfrm4_get_saddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dst_entry = type { i32 }
%struct.rtable = type { i32 }

@EHOSTUNREACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.TYPE_5__*, %struct.TYPE_5__*)* @xfrm4_get_saddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm4_get_saddr(%struct.net* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.rtable*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %12 = call %struct.dst_entry* @xfrm4_dst_lookup(%struct.net* %10, i32 0, i32* null, %struct.TYPE_5__* %11)
  store %struct.dst_entry* %12, %struct.dst_entry** %8, align 8
  %13 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %14 = call i64 @IS_ERR(%struct.dst_entry* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EHOSTUNREACH, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %21 = bitcast %struct.dst_entry* %20 to %struct.rtable*
  store %struct.rtable* %21, %struct.rtable** %9, align 8
  %22 = load %struct.rtable*, %struct.rtable** %9, align 8
  %23 = getelementptr inbounds %struct.rtable, %struct.rtable* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %28 = call i32 @dst_release(%struct.dst_entry* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.dst_entry* @xfrm4_dst_lookup(%struct.net*, i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i64 @IS_ERR(%struct.dst_entry*) #1

declare dso_local i32 @dst_release(%struct.dst_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
