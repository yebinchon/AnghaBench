; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_fq_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_fq_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inet_frags = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inet_frag_queue*, %struct.inet_frags*)* @fq_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_unlink(%struct.inet_frag_queue* %0, %struct.inet_frags* %1) #0 {
  %3 = alloca %struct.inet_frag_queue*, align 8
  %4 = alloca %struct.inet_frags*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %3, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %4, align 8
  %5 = load %struct.inet_frags*, %struct.inet_frags** %4, align 8
  %6 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %5, i32 0, i32 0
  %7 = call i32 @write_lock(i32* %6)
  %8 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %9 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %8, i32 0, i32 2
  %10 = call i32 @hlist_del(i32* %9)
  %11 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %12 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %11, i32 0, i32 1
  %13 = call i32 @list_del(i32* %12)
  %14 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %15 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.inet_frags*, %struct.inet_frags** %4, align 8
  %21 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %20, i32 0, i32 0
  %22 = call i32 @write_unlock(i32* %21)
  ret void
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
