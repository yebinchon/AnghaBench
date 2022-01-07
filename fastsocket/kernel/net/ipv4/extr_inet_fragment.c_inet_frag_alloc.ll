; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { %struct.netns_frags*, i32, i32, i32 }
%struct.netns_frags = type { i32 }
%struct.inet_frags = type { i32, i32, i32 (%struct.inet_frag_queue.0*, i8*)* }
%struct.inet_frag_queue.0 = type opaque

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet_frag_queue* (%struct.netns_frags*, %struct.inet_frags*, i8*)* @inet_frag_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet_frag_queue* @inet_frag_alloc(%struct.netns_frags* %0, %struct.inet_frags* %1, i8* %2) #0 {
  %4 = alloca %struct.inet_frag_queue*, align 8
  %5 = alloca %struct.netns_frags*, align 8
  %6 = alloca %struct.inet_frags*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inet_frag_queue*, align 8
  store %struct.netns_frags* %0, %struct.netns_frags** %5, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %10 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.inet_frag_queue* @kzalloc(i32 %11, i32 %12)
  store %struct.inet_frag_queue* %13, %struct.inet_frag_queue** %8, align 8
  %14 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %15 = icmp eq %struct.inet_frag_queue* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %4, align 8
  br label %49

17:                                               ; preds = %3
  %18 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %19 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %18, i32 0, i32 2
  %20 = load i32 (%struct.inet_frag_queue.0*, i8*)*, i32 (%struct.inet_frag_queue.0*, i8*)** %19, align 8
  %21 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %22 = bitcast %struct.inet_frag_queue* %21 to %struct.inet_frag_queue.0*
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 %20(%struct.inet_frag_queue.0* %22, i8* %23)
  %25 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %26 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.netns_frags*, %struct.netns_frags** %5, align 8
  %29 = getelementptr inbounds %struct.netns_frags, %struct.netns_frags* %28, i32 0, i32 0
  %30 = call i32 @atomic_add(i32 %27, i32* %29)
  %31 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %32 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %31, i32 0, i32 3
  %33 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %34 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %37 = ptrtoint %struct.inet_frag_queue* %36 to i64
  %38 = call i32 @setup_timer(i32* %32, i32 %35, i64 %37)
  %39 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %40 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %39, i32 0, i32 2
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %43 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %42, i32 0, i32 1
  %44 = call i32 @atomic_set(i32* %43, i32 1)
  %45 = load %struct.netns_frags*, %struct.netns_frags** %5, align 8
  %46 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %47 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %46, i32 0, i32 0
  store %struct.netns_frags* %45, %struct.netns_frags** %47, align 8
  %48 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  store %struct.inet_frag_queue* %48, %struct.inet_frag_queue** %4, align 8
  br label %49

49:                                               ; preds = %17, %16
  %50 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  ret %struct.inet_frag_queue* %50
}

declare dso_local %struct.inet_frag_queue* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
