; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_protocol.c_sctp_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sctp_ctl_sock = common dso_local global i32 0, align 4
@sctp_assoc_hashtable = common dso_local global i64 0, align 8
@sctp_assoc_hashsize = common dso_local global i32 0, align 4
@sctp_ep_hashtable = common dso_local global i32 0, align 4
@sctp_port_hashtable = common dso_local global i64 0, align 8
@sctp_port_hashsize = common dso_local global i32 0, align 4
@sctp_chunk_cachep = common dso_local global i32 0, align 4
@sctp_bucket_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_exit() #0 {
  %1 = call i32 (...) @sctp_v6_del_protocol()
  %2 = call i32 (...) @sctp_v4_del_protocol()
  %3 = load i32, i32* @sctp_ctl_sock, align 4
  %4 = call i32 @inet_ctl_sock_destroy(i32 %3)
  %5 = call i32 (...) @sctp_v6_protosw_exit()
  %6 = call i32 (...) @sctp_v4_protosw_exit()
  %7 = call i32 (...) @sctp_free_local_addr_list()
  %8 = call i32 (...) @sctp_v6_pf_exit()
  %9 = call i32 (...) @sctp_v4_pf_exit()
  %10 = call i32 (...) @sctp_sysctl_unregister()
  %11 = load i64, i64* @sctp_assoc_hashtable, align 8
  %12 = load i32, i32* @sctp_assoc_hashsize, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 4
  %15 = trunc i64 %14 to i32
  %16 = call i32 @get_order(i32 %15)
  %17 = call i32 @free_pages(i64 %11, i32 %16)
  %18 = load i32, i32* @sctp_ep_hashtable, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load i64, i64* @sctp_port_hashtable, align 8
  %21 = load i32, i32* @sctp_port_hashsize, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32 @get_order(i32 %24)
  %26 = call i32 @free_pages(i64 %20, i32 %25)
  %27 = call i32 (...) @sctp_dbg_objcnt_exit()
  %28 = call i32 (...) @sctp_proc_exit()
  %29 = call i32 (...) @cleanup_sctp_mibs()
  %30 = call i32 (...) @rcu_barrier()
  %31 = load i32, i32* @sctp_chunk_cachep, align 4
  %32 = call i32 @kmem_cache_destroy(i32 %31)
  %33 = load i32, i32* @sctp_bucket_cachep, align 4
  %34 = call i32 @kmem_cache_destroy(i32 %33)
  ret void
}

declare dso_local i32 @sctp_v6_del_protocol(...) #1

declare dso_local i32 @sctp_v4_del_protocol(...) #1

declare dso_local i32 @inet_ctl_sock_destroy(i32) #1

declare dso_local i32 @sctp_v6_protosw_exit(...) #1

declare dso_local i32 @sctp_v4_protosw_exit(...) #1

declare dso_local i32 @sctp_free_local_addr_list(...) #1

declare dso_local i32 @sctp_v6_pf_exit(...) #1

declare dso_local i32 @sctp_v4_pf_exit(...) #1

declare dso_local i32 @sctp_sysctl_unregister(...) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @sctp_dbg_objcnt_exit(...) #1

declare dso_local i32 @sctp_proc_exit(...) #1

declare dso_local i32 @cleanup_sctp_mibs(...) #1

declare dso_local i32 @rcu_barrier(...) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
