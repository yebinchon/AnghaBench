; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_nf_hook_slow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_nf_hook_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }

@nf_hooks = common dso_local global %struct.list_head** null, align 8
@NF_ACCEPT = common dso_local global i32 0, align 4
@NF_STOP = common dso_local global i32 0, align 4
@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NF_QUEUE = common dso_local global i32 0, align 4
@NF_VERDICT_QBITS = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@NF_VERDICT_FLAG_QUEUE_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_hook_slow(i64 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3, %struct.net_device* %4, i32 (%struct.sk_buff*)* %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32 (%struct.sk_buff*)*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.list_head*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store i32 (%struct.sk_buff*)* %5, i32 (%struct.sk_buff*)** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.list_head**, %struct.list_head*** @nf_hooks, align 8
  %20 = load i64, i64* %8, align 8
  %21 = getelementptr inbounds %struct.list_head*, %struct.list_head** %19, i64 %20
  %22 = load %struct.list_head*, %struct.list_head** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.list_head, %struct.list_head* %22, i64 %24
  store %struct.list_head* %25, %struct.list_head** %15, align 8
  br label %26

26:                                               ; preds = %102, %91, %7
  %27 = load %struct.list_head**, %struct.list_head*** @nf_hooks, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.list_head*, %struct.list_head** %27, i64 %28
  %30 = load %struct.list_head*, %struct.list_head** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.list_head, %struct.list_head* %30, i64 %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.net_device*, %struct.net_device** %11, align 8
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 @nf_iterate(%struct.list_head* %33, %struct.sk_buff* %34, i32 %35, %struct.net_device* %36, %struct.net_device* %37, %struct.list_head** %15, i32 (%struct.sk_buff*)* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @NF_ACCEPT, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* @NF_STOP, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %26
  store i32 1, i32* %17, align 4
  br label %109

49:                                               ; preds = %44
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @NF_VERDICT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @NF_DROP, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @NF_DROP_GETERR(i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %62, %55
  br label %108

66:                                               ; preds = %49
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* @NF_VERDICT_MASK, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @NF_QUEUE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = load %struct.list_head*, %struct.list_head** %15, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.net_device*, %struct.net_device** %11, align 8
  %78 = load %struct.net_device*, %struct.net_device** %12, align 8
  %79 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %13, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @NF_VERDICT_QBITS, align 4
  %82 = lshr i32 %80, %81
  %83 = call i32 @nf_queue(%struct.sk_buff* %73, %struct.list_head* %74, i64 %75, i32 %76, %struct.net_device* %77, %struct.net_device* %78, i32 (%struct.sk_buff*)* %79, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %72
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* @ECANCELED, align 4
  %89 = sub nsw i32 0, %88
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %26

92:                                               ; preds = %86
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @ESRCH, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  %99 = load i32, i32* @NF_VERDICT_FLAG_QUEUE_BYPASS, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %26

103:                                              ; preds = %97, %92
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = call i32 @kfree_skb(%struct.sk_buff* %104)
  br label %106

106:                                              ; preds = %103, %72
  store i32 0, i32* %17, align 4
  br label %107

107:                                              ; preds = %106, %66
  br label %108

108:                                              ; preds = %107, %65
  br label %109

109:                                              ; preds = %108, %48
  %110 = call i32 (...) @rcu_read_unlock()
  %111 = load i32, i32* %17, align 4
  ret i32 %111
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nf_iterate(%struct.list_head*, %struct.sk_buff*, i32, %struct.net_device*, %struct.net_device*, %struct.list_head**, i32 (%struct.sk_buff*)*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @NF_DROP_GETERR(i32) #1

declare dso_local i32 @nf_queue(%struct.sk_buff*, %struct.list_head*, i64, i32, %struct.net_device*, %struct.net_device*, i32 (%struct.sk_buff*)*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
