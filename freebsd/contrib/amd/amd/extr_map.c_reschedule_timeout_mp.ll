; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_reschedule_timeout_mp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_reschedule_timeout_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timeout_mp_id = common dso_local global i64 0, align 8
@timeout_mp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reschedule_timeout_mp() #0 {
  %1 = load i64, i64* @timeout_mp_id, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i64, i64* @timeout_mp_id, align 8
  %5 = call i32 @untimeout(i64 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load i32, i32* @timeout_mp, align 4
  %8 = call i64 @timeout(i32 0, i32 %7, i32* null)
  store i64 %8, i64* @timeout_mp_id, align 8
  ret void
}

declare dso_local i32 @untimeout(i64) #1

declare dso_local i64 @timeout(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
