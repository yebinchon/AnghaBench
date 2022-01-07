; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_extend_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_extend.c_nf_ct_extend_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_ct_ext_type = type { i64 }

@nf_ct_ext_type_mutex = common dso_local global i32 0, align 4
@nf_ct_ext_types = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_ct_extend_unregister(%struct.nf_ct_ext_type* %0) #0 {
  %2 = alloca %struct.nf_ct_ext_type*, align 8
  store %struct.nf_ct_ext_type* %0, %struct.nf_ct_ext_type** %2, align 8
  %3 = call i32 @mutex_lock(i32* @nf_ct_ext_type_mutex)
  %4 = load i32*, i32** @nf_ct_ext_types, align 8
  %5 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %6 = getelementptr inbounds %struct.nf_ct_ext_type, %struct.nf_ct_ext_type* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @rcu_assign_pointer(i32 %9, i32* null)
  %11 = load %struct.nf_ct_ext_type*, %struct.nf_ct_ext_type** %2, align 8
  %12 = call i32 @update_alloc_size(%struct.nf_ct_ext_type* %11)
  %13 = call i32 @mutex_unlock(i32* @nf_ct_ext_type_mutex)
  %14 = call i32 (...) @rcu_barrier()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @update_alloc_size(%struct.nf_ct_ext_type*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rcu_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
