; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c___hash_deferred_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c___hash_deferred_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_deferred_req = type { i32, i32 }
%struct.cache_head = type { i32 }

@cache_defer_hash = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_deferred_req*, %struct.cache_head*)* @__hash_deferred_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__hash_deferred_req(%struct.cache_deferred_req* %0, %struct.cache_head* %1) #0 {
  %3 = alloca %struct.cache_deferred_req*, align 8
  %4 = alloca %struct.cache_head*, align 8
  %5 = alloca i32, align 4
  store %struct.cache_deferred_req* %0, %struct.cache_deferred_req** %3, align 8
  store %struct.cache_head* %1, %struct.cache_head** %4, align 8
  %6 = load %struct.cache_head*, %struct.cache_head** %4, align 8
  %7 = call i32 @DFR_HASH(%struct.cache_head* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.cache_deferred_req*, %struct.cache_deferred_req** %3, align 8
  %9 = getelementptr inbounds %struct.cache_deferred_req, %struct.cache_deferred_req* %8, i32 0, i32 1
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.cache_deferred_req*, %struct.cache_deferred_req** %3, align 8
  %12 = getelementptr inbounds %struct.cache_deferred_req, %struct.cache_deferred_req* %11, i32 0, i32 0
  %13 = load i32*, i32** @cache_defer_hash, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = call i32 @hlist_add_head(i32* %12, i32* %16)
  ret void
}

declare dso_local i32 @DFR_HASH(%struct.cache_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
