; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.h_tipc_cltr_find.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_cluster.h_tipc_cltr_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster = type { i32 }
%struct._zone = type { %struct.cluster** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cluster* (i32)* @tipc_cltr_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cluster* @tipc_cltr_find(i32 %0) #0 {
  %2 = alloca %struct.cluster*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._zone*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct._zone* @tipc_zone_find(i32 %5)
  store %struct._zone* %6, %struct._zone** %4, align 8
  %7 = load %struct._zone*, %struct._zone** %4, align 8
  %8 = icmp ne %struct._zone* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct._zone*, %struct._zone** %4, align 8
  %11 = getelementptr inbounds %struct._zone, %struct._zone* %10, i32 0, i32 0
  %12 = load %struct.cluster**, %struct.cluster*** %11, align 8
  %13 = getelementptr inbounds %struct.cluster*, %struct.cluster** %12, i64 1
  %14 = load %struct.cluster*, %struct.cluster** %13, align 8
  store %struct.cluster* %14, %struct.cluster** %2, align 8
  br label %16

15:                                               ; preds = %1
  store %struct.cluster* null, %struct.cluster** %2, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load %struct.cluster*, %struct.cluster** %2, align 8
  ret %struct.cluster* %17
}

declare dso_local %struct._zone* @tipc_zone_find(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
