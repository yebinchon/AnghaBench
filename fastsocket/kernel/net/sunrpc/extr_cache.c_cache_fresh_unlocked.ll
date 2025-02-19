; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_cache_fresh_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_cache_fresh_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_head = type { i32 }
%struct.cache_detail = type { i32 }

@CACHE_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cache_head*, %struct.cache_detail*)* @cache_fresh_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_fresh_unlocked(%struct.cache_head* %0, %struct.cache_detail* %1) #0 {
  %3 = alloca %struct.cache_head*, align 8
  %4 = alloca %struct.cache_detail*, align 8
  store %struct.cache_head* %0, %struct.cache_head** %3, align 8
  store %struct.cache_detail* %1, %struct.cache_detail** %4, align 8
  %5 = load i32, i32* @CACHE_PENDING, align 4
  %6 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %7 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %6, i32 0, i32 0
  %8 = call i64 @test_and_clear_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %12 = call i32 @cache_revisit_request(%struct.cache_head* %11)
  %13 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %14 = load %struct.cache_head*, %struct.cache_head** %3, align 8
  %15 = call i32 @cache_dequeue(%struct.cache_detail* %13, %struct.cache_head* %14)
  br label %16

16:                                               ; preds = %10, %2
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @cache_revisit_request(%struct.cache_head*) #1

declare dso_local i32 @cache_dequeue(%struct.cache_detail*, %struct.cache_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
