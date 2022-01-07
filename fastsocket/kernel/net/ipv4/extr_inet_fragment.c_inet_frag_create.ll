; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32 }
%struct.netns_frags = type { i32 }
%struct.inet_frags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet_frag_queue* (%struct.netns_frags*, %struct.inet_frags*, i8*)* @inet_frag_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet_frag_queue* @inet_frag_create(%struct.netns_frags* %0, %struct.inet_frags* %1, i8* %2) #0 {
  %4 = alloca %struct.inet_frag_queue*, align 8
  %5 = alloca %struct.netns_frags*, align 8
  %6 = alloca %struct.inet_frags*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inet_frag_queue*, align 8
  store %struct.netns_frags* %0, %struct.netns_frags** %5, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.netns_frags*, %struct.netns_frags** %5, align 8
  %10 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call %struct.inet_frag_queue* @inet_frag_alloc(%struct.netns_frags* %9, %struct.inet_frags* %10, i8* %11)
  store %struct.inet_frag_queue* %12, %struct.inet_frag_queue** %8, align 8
  %13 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %14 = icmp eq %struct.inet_frag_queue* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %4, align 8
  br label %22

16:                                               ; preds = %3
  %17 = load %struct.netns_frags*, %struct.netns_frags** %5, align 8
  %18 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %8, align 8
  %19 = load %struct.inet_frags*, %struct.inet_frags** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call %struct.inet_frag_queue* @inet_frag_intern(%struct.netns_frags* %17, %struct.inet_frag_queue* %18, %struct.inet_frags* %19, i8* %20)
  store %struct.inet_frag_queue* %21, %struct.inet_frag_queue** %4, align 8
  br label %22

22:                                               ; preds = %16, %15
  %23 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  ret %struct.inet_frag_queue* %23
}

declare dso_local %struct.inet_frag_queue* @inet_frag_alloc(%struct.netns_frags*, %struct.inet_frags*, i8*) #1

declare dso_local %struct.inet_frag_queue* @inet_frag_intern(%struct.netns_frags*, %struct.inet_frag_queue*, %struct.inet_frags*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
