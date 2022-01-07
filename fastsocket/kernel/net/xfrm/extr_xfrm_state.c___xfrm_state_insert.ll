; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c___xfrm_state_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c___xfrm_state_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_10__, i64, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfrm_state*)* @__xfrm_state_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__xfrm_state_insert(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %5 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %6 = call %struct.net* @xs_net(%struct.xfrm_state* %5)
  store %struct.net* %6, %struct.net** %3, align 8
  %7 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %8 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.net*, %struct.net** %3, align 8
  %11 = getelementptr inbounds %struct.net, %struct.net* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = call i32 @list_add(i32* %9, i32* %12)
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %16 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %19 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %26 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @xfrm_dst_hash(%struct.net* %14, i32* %17, i32* %20, i32 %24, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %31 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %30, i32 0, i32 0
  %32 = load %struct.net*, %struct.net** %3, align 8
  %33 = getelementptr inbounds %struct.net, %struct.net* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @hlist_add_head(%struct.TYPE_10__* %31, i64 %38)
  %40 = load %struct.net*, %struct.net** %3, align 8
  %41 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %42 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %45 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %48 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @xfrm_src_hash(%struct.net* %40, i32* %43, i32* %46, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %53 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %52, i32 0, i32 7
  %54 = load %struct.net*, %struct.net** %3, align 8
  %55 = getelementptr inbounds %struct.net, %struct.net* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %57, %59
  %61 = call i32 @hlist_add_head(%struct.TYPE_10__* %53, i64 %60)
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %95

67:                                               ; preds = %1
  %68 = load %struct.net*, %struct.net** %3, align 8
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %77 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %81 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @xfrm_spi_hash(%struct.net* %68, i32* %71, i32 %75, i32 %79, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %86 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %85, i32 0, i32 4
  %87 = load %struct.net*, %struct.net** %3, align 8
  %88 = getelementptr inbounds %struct.net, %struct.net* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @hlist_add_head(%struct.TYPE_10__* %86, i64 %93)
  br label %95

95:                                               ; preds = %67, %1
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %97 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %96, i32 0, i32 3
  %98 = load i64, i64* @jiffies, align 8
  %99 = load i64, i64* @HZ, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @mod_timer(i32* %97, i64 %100)
  %102 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %103 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %95
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 2
  %109 = load i64, i64* @jiffies, align 8
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %109, %112
  %114 = call i32 @mod_timer(i32* %108, i64 %113)
  br label %115

115:                                              ; preds = %106, %95
  %116 = load %struct.net*, %struct.net** %3, align 8
  %117 = getelementptr inbounds %struct.net, %struct.net* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = call i32 @wake_up(i32* %118)
  %120 = load %struct.net*, %struct.net** %3, align 8
  %121 = getelementptr inbounds %struct.net, %struct.net* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = load %struct.net*, %struct.net** %3, align 8
  %126 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %127 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i32 @xfrm_hash_grow_check(%struct.net* %125, i32 %131)
  ret void
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @xfrm_dst_hash(%struct.net*, i32*, i32*, i32, i32) #1

declare dso_local i32 @hlist_add_head(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @xfrm_src_hash(%struct.net*, i32*, i32*, i32) #1

declare dso_local i32 @xfrm_spi_hash(%struct.net*, i32*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @xfrm_hash_grow_check(%struct.net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
