; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_check_neigh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_rt6_check_neigh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.neighbour* }
%struct.neighbour = type { i32, i32 }

@RT6_NUD_FAIL_HARD = common dso_local global i32 0, align 4
@RTF_NONEXTHOP = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RT6_NUD_SUCCEED = common dso_local global i32 0, align 4
@NUD_VALID = common dso_local global i32 0, align 4
@NUD_FAILED = common dso_local global i32 0, align 4
@RT6_NUD_FAIL_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt6_info*)* @rt6_check_neigh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_check_neigh(%struct.rt6_info* %0) #0 {
  %2 = alloca %struct.rt6_info*, align 8
  %3 = alloca %struct.neighbour*, align 8
  %4 = alloca i32, align 4
  store %struct.rt6_info* %0, %struct.rt6_info** %2, align 8
  %5 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %6 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %5, i32 0, i32 1
  %7 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  store %struct.neighbour* %7, %struct.neighbour** %3, align 8
  %8 = load i32, i32* @RT6_NUD_FAIL_HARD, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %10 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RTF_NONEXTHOP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.rt6_info*, %struct.rt6_info** %2, align 8
  %17 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @RTF_GATEWAY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* @RT6_NUD_SUCCEED, align 4
  store i32 %23, i32* %4, align 4
  br label %44

24:                                               ; preds = %15
  %25 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %26 = icmp ne %struct.neighbour* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %29 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %28, i32 0, i32 1
  %30 = call i32 @read_lock_bh(i32* %29)
  %31 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %32 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NUD_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @RT6_NUD_SUCCEED, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %27
  %40 = load %struct.neighbour*, %struct.neighbour** %3, align 8
  %41 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %40, i32 0, i32 1
  %42 = call i32 @read_unlock_bh(i32* %41)
  br label %43

43:                                               ; preds = %39, %24
  br label %44

44:                                               ; preds = %43, %22
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
