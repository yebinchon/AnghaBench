; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_putdef.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_cipso_ipv4.c_cipso_v4_doi_putdef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipso_v4_doi = type { i32, i32, i32 }

@cipso_v4_doi_list_lock = common dso_local global i32 0, align 4
@cipso_v4_doi_free_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cipso_v4_doi_putdef(%struct.cipso_v4_doi* %0) #0 {
  %2 = alloca %struct.cipso_v4_doi*, align 8
  store %struct.cipso_v4_doi* %0, %struct.cipso_v4_doi** %2, align 8
  %3 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %4 = icmp eq %struct.cipso_v4_doi* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %23

6:                                                ; preds = %1
  %7 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %8 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %7, i32 0, i32 2
  %9 = call i32 @atomic_dec_and_test(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %23

12:                                               ; preds = %6
  %13 = call i32 @spin_lock(i32* @cipso_v4_doi_list_lock)
  %14 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %15 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %14, i32 0, i32 1
  %16 = call i32 @list_del_rcu(i32* %15)
  %17 = call i32 @spin_unlock(i32* @cipso_v4_doi_list_lock)
  %18 = call i32 (...) @cipso_v4_cache_invalidate()
  %19 = load %struct.cipso_v4_doi*, %struct.cipso_v4_doi** %2, align 8
  %20 = getelementptr inbounds %struct.cipso_v4_doi, %struct.cipso_v4_doi* %19, i32 0, i32 0
  %21 = load i32, i32* @cipso_v4_doi_free_rcu, align 4
  %22 = call i32 @call_rcu(i32* %20, i32 %21)
  br label %23

23:                                               ; preds = %12, %11, %5
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cipso_v4_cache_invalidate(...) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
