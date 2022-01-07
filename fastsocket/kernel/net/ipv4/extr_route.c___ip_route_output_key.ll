; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c___ip_route_output_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_route.c___ip_route_output_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.net = type { i32 }
%struct.rtable = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i32 }
%struct.flowi = type { i64, i64, i64, i64, i32 }

@rt_hash_table = common dso_local global %struct.TYPE_7__* null, align 8
@IPTOS_RT_MASK = common dso_local global i32 0, align 4
@RTO_ONLINK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@out_hit = common dso_local global i32 0, align 4
@out_hlist_search = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ip_route_output_key(%struct.net* %0, %struct.rtable** %1, %struct.flowi* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rtable**, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtable*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.rtable** %1, %struct.rtable*** %6, align 8
  store %struct.flowi* %2, %struct.flowi** %7, align 8
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = call i32 @rt_caching(%struct.net* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %131

14:                                               ; preds = %3
  %15 = load %struct.flowi*, %struct.flowi** %7, align 8
  %16 = getelementptr inbounds %struct.flowi, %struct.flowi* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.flowi*, %struct.flowi** %7, align 8
  %19 = getelementptr inbounds %struct.flowi, %struct.flowi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.flowi*, %struct.flowi** %7, align 8
  %22 = getelementptr inbounds %struct.flowi, %struct.flowi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.net*, %struct.net** %5, align 8
  %25 = call i32 @rt_genid(%struct.net* %24)
  %26 = call i32 @rt_hash(i64 %17, i64 %20, i64 %23, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = call i32 (...) @rcu_read_lock_bh()
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @rt_hash_table, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rtable* @rcu_dereference(i32 %33)
  store %struct.rtable* %34, %struct.rtable** %9, align 8
  br label %35

35:                                               ; preds = %122, %14
  %36 = load %struct.rtable*, %struct.rtable** %9, align 8
  %37 = icmp ne %struct.rtable* %36, null
  br i1 %37, label %38, label %129

38:                                               ; preds = %35
  %39 = load %struct.rtable*, %struct.rtable** %9, align 8
  %40 = getelementptr inbounds %struct.rtable, %struct.rtable* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.flowi*, %struct.flowi** %7, align 8
  %44 = getelementptr inbounds %struct.flowi, %struct.flowi* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %119

47:                                               ; preds = %38
  %48 = load %struct.rtable*, %struct.rtable** %9, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.flowi*, %struct.flowi** %7, align 8
  %53 = getelementptr inbounds %struct.flowi, %struct.flowi* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %47
  %57 = load %struct.rtable*, %struct.rtable** %9, align 8
  %58 = getelementptr inbounds %struct.rtable, %struct.rtable* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %119

62:                                               ; preds = %56
  %63 = load %struct.rtable*, %struct.rtable** %9, align 8
  %64 = getelementptr inbounds %struct.rtable, %struct.rtable* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.flowi*, %struct.flowi** %7, align 8
  %68 = getelementptr inbounds %struct.flowi, %struct.flowi* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %119

71:                                               ; preds = %62
  %72 = load %struct.rtable*, %struct.rtable** %9, align 8
  %73 = getelementptr inbounds %struct.rtable, %struct.rtable* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.flowi*, %struct.flowi** %7, align 8
  %77 = getelementptr inbounds %struct.flowi, %struct.flowi* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %71
  %81 = load %struct.rtable*, %struct.rtable** %9, align 8
  %82 = getelementptr inbounds %struct.rtable, %struct.rtable* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.flowi*, %struct.flowi** %7, align 8
  %86 = getelementptr inbounds %struct.flowi, %struct.flowi* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = xor i32 %84, %87
  %89 = load i32, i32* @IPTOS_RT_MASK, align 4
  %90 = load i32, i32* @RTO_ONLINK, align 4
  %91 = or i32 %89, %90
  %92 = and i32 %88, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %119, label %94

94:                                               ; preds = %80
  %95 = load %struct.rtable*, %struct.rtable** %9, align 8
  %96 = getelementptr inbounds %struct.rtable, %struct.rtable* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dev_net(i32 %99)
  %101 = load %struct.net*, %struct.net** %5, align 8
  %102 = call i64 @net_eq(i32 %100, %struct.net* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %94
  %105 = load %struct.rtable*, %struct.rtable** %9, align 8
  %106 = call i32 @rt_is_expired(%struct.rtable* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = load %struct.rtable*, %struct.rtable** %9, align 8
  %110 = getelementptr inbounds %struct.rtable, %struct.rtable* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* @jiffies, align 4
  %113 = call i32 @dst_use(%struct.TYPE_8__* %111, i32 %112)
  %114 = load i32, i32* @out_hit, align 4
  %115 = call i32 @RT_CACHE_STAT_INC(i32 %114)
  %116 = call i32 (...) @rcu_read_unlock_bh()
  %117 = load %struct.rtable*, %struct.rtable** %9, align 8
  %118 = load %struct.rtable**, %struct.rtable*** %6, align 8
  store %struct.rtable* %117, %struct.rtable** %118, align 8
  store i32 0, i32* %4, align 4
  br label %136

119:                                              ; preds = %104, %94, %80, %71, %62, %56, %47, %38
  %120 = load i32, i32* @out_hlist_search, align 4
  %121 = call i32 @RT_CACHE_STAT_INC(i32 %120)
  br label %122

122:                                              ; preds = %119
  %123 = load %struct.rtable*, %struct.rtable** %9, align 8
  %124 = getelementptr inbounds %struct.rtable, %struct.rtable* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call %struct.rtable* @rcu_dereference(i32 %127)
  store %struct.rtable* %128, %struct.rtable** %9, align 8
  br label %35

129:                                              ; preds = %35
  %130 = call i32 (...) @rcu_read_unlock_bh()
  br label %131

131:                                              ; preds = %129, %13
  %132 = load %struct.net*, %struct.net** %5, align 8
  %133 = load %struct.rtable**, %struct.rtable*** %6, align 8
  %134 = load %struct.flowi*, %struct.flowi** %7, align 8
  %135 = call i32 @ip_route_output_slow(%struct.net* %132, %struct.rtable** %133, %struct.flowi* %134)
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %131, %108
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @rt_caching(%struct.net*) #1

declare dso_local i32 @rt_hash(i64, i64, i64, i32) #1

declare dso_local i32 @rt_genid(%struct.net*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.rtable* @rcu_dereference(i32) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local i32 @rt_is_expired(%struct.rtable*) #1

declare dso_local i32 @dst_use(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @RT_CACHE_STAT_INC(i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @ip_route_output_slow(%struct.net*, %struct.rtable**, %struct.flowi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
