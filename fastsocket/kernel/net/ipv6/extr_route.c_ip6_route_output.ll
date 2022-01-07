; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { i32 }
%struct.net = type { i32 }
%struct.sock = type { i64 }
%struct.flowi = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RT6_LOOKUP_F_IFACE = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_HAS_SADDR = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_TMP = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_SRCPREF_TMP = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_PUBLIC = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_SRCPREF_PUBLIC = common dso_local global i32 0, align 4
@IPV6_PREFER_SRC_COA = common dso_local global i32 0, align 4
@RT6_LOOKUP_F_SRCPREF_COA = common dso_local global i32 0, align 4
@ip6_pol_route_output = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dst_entry* @ip6_route_output(%struct.net* %0, %struct.sock* %1, %struct.flowi* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.flowi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.flowi* %2, %struct.flowi** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = icmp ne %struct.sock* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11, %3
  %17 = load %struct.flowi*, %struct.flowi** %6, align 8
  %18 = getelementptr inbounds %struct.flowi, %struct.flowi* %17, i32 0, i32 1
  %19 = call i64 @rt6_need_strict(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16, %11
  %22 = load i32, i32* @RT6_LOOKUP_F_IFACE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.flowi*, %struct.flowi** %6, align 8
  %27 = getelementptr inbounds %struct.flowi, %struct.flowi* %26, i32 0, i32 0
  %28 = call i32 @ipv6_addr_any(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @RT6_LOOKUP_F_HAS_SADDR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %70

34:                                               ; preds = %25
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = icmp ne %struct.sock* %35, null
  br i1 %36, label %37, label %69

37:                                               ; preds = %34
  %38 = load %struct.sock*, %struct.sock** %5, align 8
  %39 = call %struct.TYPE_2__* @inet6_sk(%struct.sock* %38)
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IPV6_PREFER_SRC_TMP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @RT6_LOOKUP_F_SRCPREF_TMP, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IPV6_PREFER_SRC_PUBLIC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @RT6_LOOKUP_F_SRCPREF_PUBLIC, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IPV6_PREFER_SRC_COA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @RT6_LOOKUP_F_SRCPREF_COA, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %64, %59
  br label %69

69:                                               ; preds = %68, %34
  br label %70

70:                                               ; preds = %69, %30
  %71 = load %struct.net*, %struct.net** %4, align 8
  %72 = load %struct.flowi*, %struct.flowi** %6, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ip6_pol_route_output, align 4
  %75 = call %struct.dst_entry* @fib6_rule_lookup(%struct.net* %71, %struct.flowi* %72, i32 %73, i32 %74)
  ret %struct.dst_entry* %75
}

declare dso_local i64 @rt6_need_strict(i32*) #1

declare dso_local i32 @ipv6_addr_any(i32*) #1

declare dso_local %struct.TYPE_2__* @inet6_sk(%struct.sock*) #1

declare dso_local %struct.dst_entry* @fib6_rule_lookup(%struct.net*, %struct.flowi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
