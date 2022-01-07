; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_queue.c_ipq_set_verdict.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/netfilter/extr_ip6_queue.c_ipq_set_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipq_verdict_msg = type { i32, i32, i32 }
%struct.nf_queue_entry = type { i32 }

@NF_MAX_VERDICT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipq_verdict_msg*, i32)* @ipq_set_verdict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipq_set_verdict(%struct.ipq_verdict_msg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipq_verdict_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nf_queue_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.ipq_verdict_msg* %0, %struct.ipq_verdict_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ipq_verdict_msg*, %struct.ipq_verdict_msg** %4, align 8
  %9 = getelementptr inbounds %struct.ipq_verdict_msg, %struct.ipq_verdict_msg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NF_MAX_VERDICT, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.ipq_verdict_msg*, %struct.ipq_verdict_msg** %4, align 8
  %18 = getelementptr inbounds %struct.ipq_verdict_msg, %struct.ipq_verdict_msg* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nf_queue_entry* @ipq_find_dequeue_entry(i32 %19)
  store %struct.nf_queue_entry* %20, %struct.nf_queue_entry** %6, align 8
  %21 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %6, align 8
  %22 = icmp eq %struct.nf_queue_entry* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load %struct.ipq_verdict_msg*, %struct.ipq_verdict_msg** %4, align 8
  %28 = getelementptr inbounds %struct.ipq_verdict_msg, %struct.ipq_verdict_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ipq_verdict_msg*, %struct.ipq_verdict_msg** %4, align 8
  %31 = getelementptr inbounds %struct.ipq_verdict_msg, %struct.ipq_verdict_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %26
  %35 = load %struct.ipq_verdict_msg*, %struct.ipq_verdict_msg** %4, align 8
  %36 = getelementptr inbounds %struct.ipq_verdict_msg, %struct.ipq_verdict_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.ipq_verdict_msg*, %struct.ipq_verdict_msg** %4, align 8
  %42 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %6, align 8
  %43 = call i64 @ipq_mangle_ipv6(%struct.ipq_verdict_msg* %41, %struct.nf_queue_entry* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @NF_DROP, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %40
  br label %48

48:                                               ; preds = %47, %34, %26
  %49 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @nf_reinject(%struct.nf_queue_entry* %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %23, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.nf_queue_entry* @ipq_find_dequeue_entry(i32) #1

declare dso_local i64 @ipq_mangle_ipv6(%struct.ipq_verdict_msg*, %struct.nf_queue_entry*) #1

declare dso_local i32 @nf_reinject(%struct.nf_queue_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
