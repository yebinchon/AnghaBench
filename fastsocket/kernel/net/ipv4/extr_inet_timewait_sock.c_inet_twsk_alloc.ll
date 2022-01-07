; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_timewait_sock.c_inet_twsk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_sock = type { i32, %struct.TYPE_4__*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sock = type { %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.inet_sock = type { i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@TCP_TIME_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inet_timewait_sock* @inet_twsk_alloc(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inet_timewait_sock*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.inet_timewait_sock* @kmem_cache_alloc(i32 %13, i32 %14)
  store %struct.inet_timewait_sock* %15, %struct.inet_timewait_sock** %5, align 8
  %16 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %17 = icmp ne %struct.inet_timewait_sock* %16, null
  br i1 %17, label %18, label %103

18:                                               ; preds = %2
  %19 = load %struct.sock*, %struct.sock** %3, align 8
  %20 = call %struct.inet_sock* @inet_sk(%struct.sock* %19)
  store %struct.inet_sock* %20, %struct.inet_sock** %6, align 8
  %21 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %22 = load i32, i32* @flags, align 4
  %23 = call i32 @kmemcheck_annotate_bitfield(%struct.inet_timewait_sock* %21, i32 %22)
  %24 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %28 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %27, i32 0, i32 14
  store i32 %26, i32* %28, align 4
  %29 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %30 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %33 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 8
  %34 = load %struct.sock*, %struct.sock** %3, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %38 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %37, i32 0, i32 12
  store i32 %36, i32* %38, align 4
  %39 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %40 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %43 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %42, i32 0, i32 11
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @TCP_TIME_WAIT, align 4
  %45 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %46 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %49 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %51 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %54 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 8
  %55 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %56 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %59 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %64 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sock*, %struct.sock** %3, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %69 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 4
  %70 = load %struct.sock*, %struct.sock** %3, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %74 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %76 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %75, i32 0, i32 4
  store i64 0, i64* %76, align 8
  %77 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %78 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %81 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.sock*, %struct.sock** %3, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %86 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %85, i32 0, i32 1
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %86, align 8
  %87 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call i32 @sock_net(%struct.sock* %88)
  %90 = call i32 @hold_net(i32 %89)
  %91 = call i32 @twsk_net_set(%struct.inet_timewait_sock* %87, i32 %90)
  %92 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %93 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %92, i32 0, i32 2
  %94 = call i32 @atomic_set(i32* %93, i32 1)
  %95 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %96 = call i32 @inet_twsk_dead_node_init(%struct.inet_timewait_sock* %95)
  %97 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  %98 = getelementptr inbounds %struct.inet_timewait_sock, %struct.inet_timewait_sock* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @__module_get(i32 %101)
  br label %103

103:                                              ; preds = %18, %2
  %104 = load %struct.inet_timewait_sock*, %struct.inet_timewait_sock** %5, align 8
  ret %struct.inet_timewait_sock* %104
}

declare dso_local %struct.inet_timewait_sock* @kmem_cache_alloc(i32, i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @kmemcheck_annotate_bitfield(%struct.inet_timewait_sock*, i32) #1

declare dso_local i32 @twsk_net_set(%struct.inet_timewait_sock*, i32) #1

declare dso_local i32 @hold_net(i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @inet_twsk_dead_node_init(%struct.inet_timewait_sock*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
