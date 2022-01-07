; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_fragment.c_inet_frag_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, %struct.netns_frags*, %struct.sk_buff*, i32 }
%struct.netns_frags = type { i32 }
%struct.sk_buff = type { %struct.sk_buff* }
%struct.inet_frags = type { i32 (%struct.inet_frag_queue.0*)*, i64 }
%struct.inet_frag_queue.0 = type opaque

@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_frag_destroy(%struct.inet_frag_queue* %0, %struct.inet_frags* %1, i32* %2) #0 {
  %4 = alloca %struct.inet_frag_queue*, align 8
  %5 = alloca %struct.inet_frags*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netns_frags*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  store %struct.inet_frag_queue* %0, %struct.inet_frag_queue** %4, align 8
  store %struct.inet_frags* %1, %struct.inet_frags** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  %11 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  %20 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %19, i32 0, i32 3
  %21 = call i64 @del_timer(i32* %20)
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  %26 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %25, i32 0, i32 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %7, align 8
  %28 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  %29 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %28, i32 0, i32 1
  %30 = load %struct.netns_frags*, %struct.netns_frags** %29, align 8
  store %struct.netns_frags* %30, %struct.netns_frags** %8, align 8
  br label %31

31:                                               ; preds = %34, %3
  %32 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %9, align 8
  %38 = load %struct.netns_frags*, %struct.netns_frags** %8, align 8
  %39 = load %struct.inet_frags*, %struct.inet_frags** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @frag_kfree_skb(%struct.netns_frags* %38, %struct.inet_frags* %39, %struct.sk_buff* %40, i32* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %7, align 8
  br label %31

44:                                               ; preds = %31
  %45 = load i32*, i32** %6, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.inet_frags*, %struct.inet_frags** %5, align 8
  %49 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %50
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  br label %56

56:                                               ; preds = %47, %44
  %57 = load %struct.inet_frags*, %struct.inet_frags** %5, align 8
  %58 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.netns_frags*, %struct.netns_frags** %8, align 8
  %61 = getelementptr inbounds %struct.netns_frags, %struct.netns_frags* %60, i32 0, i32 0
  %62 = call i32 @atomic_sub(i64 %59, i32* %61)
  %63 = load %struct.inet_frags*, %struct.inet_frags** %5, align 8
  %64 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %63, i32 0, i32 0
  %65 = load i32 (%struct.inet_frag_queue.0*)*, i32 (%struct.inet_frag_queue.0*)** %64, align 8
  %66 = icmp ne i32 (%struct.inet_frag_queue.0*)* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %56
  %68 = load %struct.inet_frags*, %struct.inet_frags** %5, align 8
  %69 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %68, i32 0, i32 0
  %70 = load i32 (%struct.inet_frag_queue.0*)*, i32 (%struct.inet_frag_queue.0*)** %69, align 8
  %71 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  %72 = bitcast %struct.inet_frag_queue* %71 to %struct.inet_frag_queue.0*
  %73 = call i32 %70(%struct.inet_frag_queue.0* %72)
  br label %74

74:                                               ; preds = %67, %56
  %75 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  %76 = call i32 @kfree(%struct.inet_frag_queue* %75)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @frag_kfree_skb(%struct.netns_frags*, %struct.inet_frags*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

declare dso_local i32 @kfree(%struct.inet_frag_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
