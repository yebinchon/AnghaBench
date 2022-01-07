; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_put_buddy_page_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_mballoc.c_ext4_mb_put_buddy_page_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_buddy = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_buddy*)* @ext4_mb_put_buddy_page_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_mb_put_buddy_page_lock(%struct.ext4_buddy* %0) #0 {
  %2 = alloca %struct.ext4_buddy*, align 8
  store %struct.ext4_buddy* %0, %struct.ext4_buddy** %2, align 8
  %3 = load %struct.ext4_buddy*, %struct.ext4_buddy** %2, align 8
  %4 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.ext4_buddy*, %struct.ext4_buddy** %2, align 8
  %9 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @unlock_page(i64 %10)
  %12 = load %struct.ext4_buddy*, %struct.ext4_buddy** %2, align 8
  %13 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @page_cache_release(i64 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.ext4_buddy*, %struct.ext4_buddy** %2, align 8
  %18 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.ext4_buddy*, %struct.ext4_buddy** %2, align 8
  %23 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @unlock_page(i64 %24)
  %26 = load %struct.ext4_buddy*, %struct.ext4_buddy** %2, align 8
  %27 = getelementptr inbounds %struct.ext4_buddy, %struct.ext4_buddy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @page_cache_release(i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @unlock_page(i64) #1

declare dso_local i32 @page_cache_release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
