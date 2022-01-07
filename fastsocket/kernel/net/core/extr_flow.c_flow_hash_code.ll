; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_flow.c_flow_hash_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_flow.c_flow_hash_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_cache = type { i32 }
%struct.flow_cache_percpu = type { i32 }
%struct.flowi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_cache*, %struct.flow_cache_percpu*, %struct.flowi*)* @flow_hash_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_hash_code(%struct.flow_cache* %0, %struct.flow_cache_percpu* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.flow_cache*, align 8
  %5 = alloca %struct.flow_cache_percpu*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32*, align 8
  store %struct.flow_cache* %0, %struct.flow_cache** %4, align 8
  store %struct.flow_cache_percpu* %1, %struct.flow_cache_percpu** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  %8 = load %struct.flowi*, %struct.flowi** %6, align 8
  %9 = bitcast %struct.flowi* %8 to i32*
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load %struct.flow_cache_percpu*, %struct.flow_cache_percpu** %5, align 8
  %12 = getelementptr inbounds %struct.flow_cache_percpu, %struct.flow_cache_percpu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @jhash2(i32* %10, i32 1, i32 %13)
  %15 = load %struct.flow_cache*, %struct.flow_cache** %4, align 8
  %16 = call i32 @flow_cache_hash_size(%struct.flow_cache* %15)
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %14, %17
  ret i32 %18
}

declare dso_local i32 @jhash2(i32*, i32, i32) #1

declare dso_local i32 @flow_cache_hash_size(%struct.flow_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
