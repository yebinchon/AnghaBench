; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_route.c_ip6_route_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib6_config = type { i64, i32, i64, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.fib6_table = type { i32, i32 }
%struct.fib6_node = type { %struct.rt6_info* }
%struct.rt6_info = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.rt6_info* }
%struct.TYPE_5__ = type { i64 }

@ESRCH = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib6_config*)* @ip6_route_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_route_del(%struct.fib6_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fib6_config*, align 8
  %4 = alloca %struct.fib6_table*, align 8
  %5 = alloca %struct.fib6_node*, align 8
  %6 = alloca %struct.rt6_info*, align 8
  %7 = alloca i32, align 4
  store %struct.fib6_config* %0, %struct.fib6_config** %3, align 8
  %8 = load i32, i32* @ESRCH, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %11 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %15 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.fib6_table* @fib6_get_table(i32 %13, i32 %16)
  store %struct.fib6_table* %17, %struct.fib6_table** %4, align 8
  %18 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %19 = icmp eq %struct.fib6_table* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %122

22:                                               ; preds = %1
  %23 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %24 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %23, i32 0, i32 0
  %25 = call i32 @read_lock_bh(i32* %24)
  %26 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %27 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %26, i32 0, i32 1
  %28 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %29 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %28, i32 0, i32 8
  %30 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %31 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %34 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %33, i32 0, i32 6
  %35 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %36 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.fib6_node* @fib6_locate(i32* %27, i32* %29, i32 %32, i32* %34, i32 %37)
  store %struct.fib6_node* %38, %struct.fib6_node** %5, align 8
  %39 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %40 = icmp ne %struct.fib6_node* %39, null
  br i1 %40, label %41, label %117

41:                                               ; preds = %22
  %42 = load %struct.fib6_node*, %struct.fib6_node** %5, align 8
  %43 = getelementptr inbounds %struct.fib6_node, %struct.fib6_node* %42, i32 0, i32 0
  %44 = load %struct.rt6_info*, %struct.rt6_info** %43, align 8
  store %struct.rt6_info* %44, %struct.rt6_info** %6, align 8
  br label %45

45:                                               ; preds = %110, %41
  %46 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %47 = icmp ne %struct.rt6_info* %46, null
  br i1 %47, label %48, label %116

48:                                               ; preds = %45
  %49 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %50 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %55 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %54, i32 0, i32 3
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = icmp eq %struct.TYPE_5__* %56, null
  br i1 %57, label %68, label %58

58:                                               ; preds = %53
  %59 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %60 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %65 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %58, %53
  br label %110

69:                                               ; preds = %58, %48
  %70 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %71 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RTF_GATEWAY, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %78 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %77, i32 0, i32 4
  %79 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %80 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %79, i32 0, i32 2
  %81 = call i32 @ipv6_addr_equal(i32* %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %110

84:                                               ; preds = %76, %69
  %85 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %86 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %84
  %90 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %91 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %94 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %110

98:                                               ; preds = %89, %84
  %99 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %100 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = call i32 @dst_hold(%struct.TYPE_7__* %101)
  %103 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %104 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %103, i32 0, i32 0
  %105 = call i32 @read_unlock_bh(i32* %104)
  %106 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %107 = load %struct.fib6_config*, %struct.fib6_config** %3, align 8
  %108 = getelementptr inbounds %struct.fib6_config, %struct.fib6_config* %107, i32 0, i32 3
  %109 = call i32 @__ip6_del_rt(%struct.rt6_info* %106, %struct.TYPE_8__* %108)
  store i32 %109, i32* %2, align 4
  br label %122

110:                                              ; preds = %97, %83, %68
  %111 = load %struct.rt6_info*, %struct.rt6_info** %6, align 8
  %112 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load %struct.rt6_info*, %struct.rt6_info** %114, align 8
  store %struct.rt6_info* %115, %struct.rt6_info** %6, align 8
  br label %45

116:                                              ; preds = %45
  br label %117

117:                                              ; preds = %116, %22
  %118 = load %struct.fib6_table*, %struct.fib6_table** %4, align 8
  %119 = getelementptr inbounds %struct.fib6_table, %struct.fib6_table* %118, i32 0, i32 0
  %120 = call i32 @read_unlock_bh(i32* %119)
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %2, align 4
  br label %122

122:                                              ; preds = %117, %98, %20
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local %struct.fib6_table* @fib6_get_table(i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local %struct.fib6_node* @fib6_locate(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

declare dso_local i32 @dst_hold(%struct.TYPE_7__*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @__ip6_del_rt(%struct.rt6_info*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
