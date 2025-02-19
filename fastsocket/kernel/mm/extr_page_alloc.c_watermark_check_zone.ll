; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_watermark_check_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_page_alloc.c_watermark_check_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zone = type { i32 }

@watermark_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zone*)* @watermark_check_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watermark_check_zone(%struct.zone* %0) #0 {
  %2 = alloca %struct.zone*, align 8
  store %struct.zone* %0, %struct.zone** %2, align 8
  %3 = call i32 @waitqueue_active(i32* @watermark_wq)
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @likely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.zone*, %struct.zone** %2, align 8
  %12 = load %struct.zone*, %struct.zone** %2, align 8
  %13 = call i32 @low_wmark_pages(%struct.zone* %12)
  %14 = call i64 @zone_watermark_ok(%struct.zone* %11, i32 0, i32 %13, i32 0, i32 0)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = call i32 @wake_up_interruptible(i32* @watermark_wq)
  br label %18

18:                                               ; preds = %9, %16, %10
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i64 @zone_watermark_ok(%struct.zone*, i32, i32, i32, i32) #1

declare dso_local i32 @low_wmark_pages(%struct.zone*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
