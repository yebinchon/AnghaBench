; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_try_to_negate_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_cache.c_try_to_negate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_detail = type { i32 }
%struct.cache_head = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CACHE_NEGATIVE = common dso_local global i32 0, align 4
@CACHE_NEW_EXPIRY = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_detail*, %struct.cache_head*)* @try_to_negate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_negate_entry(%struct.cache_detail* %0, %struct.cache_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_detail*, align 8
  %5 = alloca %struct.cache_head*, align 8
  %6 = alloca i32, align 4
  store %struct.cache_detail* %0, %struct.cache_detail** %4, align 8
  store %struct.cache_head* %1, %struct.cache_head** %5, align 8
  %7 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %8 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %7, i32 0, i32 0
  %9 = call i32 @write_lock(i32* %8)
  %10 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %11 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %12 = call i32 @cache_is_valid(%struct.cache_detail* %10, %struct.cache_head* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %19 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %18, i32 0, i32 0
  %20 = call i32 @write_unlock(i32* %19)
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load i32, i32* @CACHE_NEGATIVE, align 4
  %24 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %25 = getelementptr inbounds %struct.cache_head, %struct.cache_head* %24, i32 0, i32 0
  %26 = call i32 @set_bit(i32 %23, i32* %25)
  %27 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %28 = call i64 (...) @seconds_since_boot()
  %29 = load i64, i64* @CACHE_NEW_EXPIRY, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @cache_fresh_locked(%struct.cache_head* %27, i64 %30)
  %32 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %33 = getelementptr inbounds %struct.cache_detail, %struct.cache_detail* %32, i32 0, i32 0
  %34 = call i32 @write_unlock(i32* %33)
  %35 = load %struct.cache_head*, %struct.cache_head** %5, align 8
  %36 = load %struct.cache_detail*, %struct.cache_detail** %4, align 8
  %37 = call i32 @cache_fresh_unlocked(%struct.cache_head* %35, %struct.cache_detail* %36)
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %22, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @cache_is_valid(%struct.cache_detail*, %struct.cache_head*) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cache_fresh_locked(%struct.cache_head*, i64) #1

declare dso_local i64 @seconds_since_boot(...) #1

declare dso_local i32 @cache_fresh_unlocked(%struct.cache_head*, %struct.cache_detail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
