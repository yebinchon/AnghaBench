; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c___ip6_route_redirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c___ip6_route_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt6_info = type { i32, %struct.TYPE_7__, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rt6_info* }
%struct.TYPE_5__ = type { i64 }
%struct.net = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rt6_info* }
%struct.fib6_table = type { i32, i32 }
%struct.flowi = type { i64, i32, i32 }
%struct.ip6rd_flowi = type { i32 }
%struct.fib6_node = type { %struct.rt6_info* }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rt6_info* (%struct.net*, %struct.fib6_table*, %struct.flowi*, i32)* @__ip6_route_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rt6_info* @__ip6_route_redirect(%struct.net* %0, %struct.fib6_table* %1, %struct.flowi* %2, i32 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.fib6_table*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ip6rd_flowi*, align 8
  %10 = alloca %struct.rt6_info*, align 8
  %11 = alloca %struct.fib6_node*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.fib6_table* %1, %struct.fib6_table** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.flowi*, %struct.flowi** %7, align 8
  %13 = bitcast %struct.flowi* %12 to %struct.ip6rd_flowi*
  store %struct.ip6rd_flowi* %13, %struct.ip6rd_flowi** %9, align 8
  %14 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %15 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %14, i32 0, i32 0
  %16 = call i32 @read_lock_bh(i32* %15)
  %17 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %18 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %17, i32 0, i32 1
  %19 = load %struct.flowi*, %struct.flowi** %7, align 8
  %20 = getelementptr inbounds %struct.flowi, %struct.flowi* %19, i32 0, i32 2
  %21 = load %struct.flowi*, %struct.flowi** %7, align 8
  %22 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 1
  %23 = call %struct.fib6_node* @fib6_lookup(i32* %18, i32* %20, i32* %22)
  store %struct.fib6_node* %23, %struct.fib6_node** %11, align 8
  br label %24

24:                                               ; preds = %4
  %25 = load %struct.fib6_node*, %struct.fib6_node** %11, align 8
  %26 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %25, i32 0, i32 0
  %27 = load %struct.rt6_info*, %struct.rt6_info** %26, align 8
  store %struct.rt6_info* %27, %struct.rt6_info** %10, align 8
  br label %28

28:                                               ; preds = %64, %24
  %29 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %30 = icmp ne %struct.rt6_info* %29, null
  br i1 %30, label %31, label %70

31:                                               ; preds = %28
  %32 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %33 = call i64 @rt6_check_expired(%struct.rt6_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %64

36:                                               ; preds = %31
  %37 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %38 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RTF_GATEWAY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %64

44:                                               ; preds = %36
  %45 = load %struct.flowi*, %struct.flowi** %7, align 8
  %46 = getelementptr inbounds %struct.flowi, %struct.flowi* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %49 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %64

55:                                               ; preds = %44
  %56 = load %struct.ip6rd_flowi*, %struct.ip6rd_flowi** %9, align 8
  %57 = getelementptr inbounds %struct.ip6rd_flowi, %struct.ip6rd_flowi* %56, i32 0, i32 0
  %58 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %59 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %58, i32 0, i32 2
  %60 = call i32 @ipv6_addr_equal(i32* %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %55
  br label %64

63:                                               ; preds = %55
  br label %70

64:                                               ; preds = %62, %54, %43, %35
  %65 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %66 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.rt6_info*, %struct.rt6_info** %68, align 8
  store %struct.rt6_info* %69, %struct.rt6_info** %10, align 8
  br label %28

70:                                               ; preds = %63, %28
  %71 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %72 = icmp ne %struct.rt6_info* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.net*, %struct.net** %5, align 8
  %75 = getelementptr inbounds %struct.net, %struct.net* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.rt6_info*, %struct.rt6_info** %76, align 8
  store %struct.rt6_info* %77, %struct.rt6_info** %10, align 8
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.net*, %struct.net** %5, align 8
  %80 = load %struct.flowi*, %struct.flowi** %7, align 8
  %81 = getelementptr inbounds %struct.flowi, %struct.flowi* %80, i32 0, i32 1
  %82 = call i32 @BACKTRACK(%struct.net* %79, i32* %81)
  br label %83

83:                                               ; preds = %78
  %84 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  %85 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = call i32 @dst_hold(%struct.TYPE_8__* %86)
  %88 = load %struct.fib6_table*, %struct.fib6_table** %6, align 8
  %89 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %88, i32 0, i32 0
  %90 = call i32 @read_unlock_bh(i32* %89)
  %91 = load %struct.rt6_info*, %struct.rt6_info** %10, align 8
  ret %struct.rt6_info* %91
}

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.fib6_node* @fib6_lookup(i32*, i32*, i32*) #1

declare dso_local i64 @rt6_check_expired(%struct.rt6_info*) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @BACKTRACK(%struct.net*, i32*) #1

declare dso_local i32 @dst_hold(%struct.TYPE_8__*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
