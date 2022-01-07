; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_kill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_kill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32 }
%struct.inet_frags = type { i32 }

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frag_kill(%struct.inet_frag_queue* %0, %struct.inet_frags* %1) #0 {
  %3 = alloca %struct.inet_frag_queue*, align 8
  %4 = alloca %struct.inet_frags*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %3, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %4, align 8
  %5 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %6 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %5, i32 0, i32 2
  %7 = call i64 @del_timer(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %11 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %10, i32 0, i32 1
  %12 = call i32 @atomic_dec(i32* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %15 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %13
  %21 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %22 = load %struct.inet_frags*, %struct.inet_frags** %4, align 8
  %23 = call i32 @fq_unlink(%struct.inet_frag_queue* %21, %struct.inet_frags* %22)
  %24 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %25 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %24, i32 0, i32 1
  %26 = call i32 @atomic_dec(i32* %25)
  %27 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %28 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %3, align 8
  %29 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %20, %13
  ret void
}

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @fq_unlink(%struct.inet_frag_queue*, %struct.inet_frags*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
