; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_chunk_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_chunk_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i32, i32 }

@sctp_chunk_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_chunk*)* @sctp_chunk_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_chunk_destroy(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %2, align 8
  %3 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %3, i32 0, i32 2
  %5 = call i32 @list_empty(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %11 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %10, i32 0, i32 1
  %12 = call i32 @list_del_init(i32* %11)
  %13 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %14 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_kfree_skb(i32 %15)
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %18 = call i32 @SCTP_DBG_OBJCNT_DEC(%struct.sctp_chunk* %17)
  %19 = load i32, i32* @sctp_chunk_cachep, align 4
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %21 = call i32 @kmem_cache_free(i32 %19, %struct.sctp_chunk* %20)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_DEC(%struct.sctp_chunk*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
