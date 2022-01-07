; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_reinject.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_queue.c_nf_reinject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_queue_entry = type { i64, i64, i32 (%struct.sk_buff*)*, i32, i32, %struct.TYPE_2__*, %struct.sk_buff* }
%struct.TYPE_2__ = type { %struct.list_head }
%struct.list_head = type { %struct.list_head* }
%struct.sk_buff = type { i32 }
%struct.nf_afinfo = type { i64 (%struct.sk_buff*, %struct.nf_queue_entry*)* }

@NF_REPEAT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@nf_hooks = common dso_local global i32** null, align 8
@INT_MIN = common dso_local global i32 0, align 4
@NF_VERDICT_MASK = common dso_local global i32 0, align 4
@NF_VERDICT_QBITS = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@NF_VERDICT_FLAG_QUEUE_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_reinject(%struct.nf_queue_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.nf_queue_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.nf_afinfo*, align 8
  %8 = alloca i32, align 4
  store %struct.nf_queue_entry* %0, %struct.nf_queue_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %10 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %9, i32 0, i32 6
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %5, align 8
  %12 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %13 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %12, i32 0, i32 5
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.list_head* %15, %struct.list_head** %6, align 8
  %16 = call i32 (...) @rcu_read_lock()
  %17 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %18 = call i32 @nf_queue_entry_release_refs(%struct.nf_queue_entry* %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @NF_REPEAT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.list_head*, %struct.list_head** %6, align 8
  %24 = getelementptr inbounds %struct.list_head, %struct.list_head* %23, i32 0, i32 0
  %25 = load %struct.list_head*, %struct.list_head** %24, align 8
  store %struct.list_head* %25, %struct.list_head** %6, align 8
  store i32 131, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 131
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %31 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call %struct.nf_afinfo* @nf_get_afinfo(i64 %32)
  store %struct.nf_afinfo* %33, %struct.nf_afinfo** %7, align 8
  %34 = load %struct.nf_afinfo*, %struct.nf_afinfo** %7, align 8
  %35 = icmp ne %struct.nf_afinfo* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.nf_afinfo*, %struct.nf_afinfo** %7, align 8
  %38 = getelementptr inbounds %struct.nf_afinfo, %struct.nf_afinfo* %37, i32 0, i32 0
  %39 = load i64 (%struct.sk_buff*, %struct.nf_queue_entry*)*, i64 (%struct.sk_buff*, %struct.nf_queue_entry*)** %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %42 = call i64 %39(%struct.sk_buff* %40, %struct.nf_queue_entry* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36, %29
  %45 = load i32, i32* @NF_DROP, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %36
  br label %47

47:                                               ; preds = %46, %26
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %130, %119, %50
  %52 = load i32**, i32*** @nf_hooks, align 8
  %53 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %54 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32*, i32** %52, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %59 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %63 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %64 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %67 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %70 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %73 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %72, i32 0, i32 2
  %74 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %73, align 8
  %75 = load i32, i32* @INT_MIN, align 4
  %76 = call i32 @nf_iterate(i32* %61, %struct.sk_buff* %62, i64 %65, i32 %68, i32 %71, %struct.list_head** %6, i32 (%struct.sk_buff*)* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %51, %47
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @NF_VERDICT_MASK, align 4
  %80 = and i32 %78, %79
  switch i32 %80, label %135 [
    i32 131, label %81
    i32 128, label %81
    i32 129, label %89
    i32 130, label %90
  ]

81:                                               ; preds = %77, %77
  %82 = call i32 (...) @local_bh_disable()
  %83 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %84 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %83, i32 0, i32 2
  %85 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %84, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %87 = call i32 %85(%struct.sk_buff* %86)
  %88 = call i32 (...) @local_bh_enable()
  br label %89

89:                                               ; preds = %77, %81
  br label %138

90:                                               ; preds = %77
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load %struct.list_head*, %struct.list_head** %6, align 8
  %93 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %94 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %97 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %100 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %103 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %106 = getelementptr inbounds %struct.nf_queue_entry, %struct.nf_queue_entry* %105, i32 0, i32 2
  %107 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @NF_VERDICT_QBITS, align 4
  %110 = lshr i32 %108, %109
  %111 = call i32 @__nf_queue(%struct.sk_buff* %91, %struct.list_head* %92, i64 %95, i64 %98, i32 %101, i32 %104, i32 (%struct.sk_buff*)* %107, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %90
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @ECANCELED, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %51

120:                                              ; preds = %114
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @ESRCH, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp eq i32 %121, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @NF_VERDICT_FLAG_QUEUE_BYPASS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %51

131:                                              ; preds = %125, %120
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = call i32 @kfree_skb(%struct.sk_buff* %132)
  br label %134

134:                                              ; preds = %131, %90
  br label %138

135:                                              ; preds = %77
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @kfree_skb(%struct.sk_buff* %136)
  br label %138

138:                                              ; preds = %135, %134, %89
  %139 = call i32 (...) @rcu_read_unlock()
  %140 = load %struct.nf_queue_entry*, %struct.nf_queue_entry** %3, align 8
  %141 = call i32 @kfree(%struct.nf_queue_entry* %140)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @nf_queue_entry_release_refs(%struct.nf_queue_entry*) #1

declare dso_local %struct.nf_afinfo* @nf_get_afinfo(i64) #1

declare dso_local i32 @nf_iterate(i32*, %struct.sk_buff*, i64, i32, i32, %struct.list_head**, i32 (%struct.sk_buff*)*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @__nf_queue(%struct.sk_buff*, %struct.list_head*, i64, i64, i32, i32, i32 (%struct.sk_buff*)*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree(%struct.nf_queue_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
