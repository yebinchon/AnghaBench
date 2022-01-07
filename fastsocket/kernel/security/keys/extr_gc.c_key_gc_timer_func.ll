; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_gc.c_key_gc_timer_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/keys/extr_gc.c_key_gc_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@LONG_MAX = common dso_local global i32 0, align 4
@key_gc_next_run = common dso_local global i32 0, align 4
@KEY_GC_KEY_EXPIRED = common dso_local global i32 0, align 4
@key_gc_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @key_gc_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @key_gc_timer_func(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = call i32 @kenter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @LONG_MAX, align 4
  store i32 %4, i32* @key_gc_next_run, align 4
  %5 = load i32, i32* @KEY_GC_KEY_EXPIRED, align 4
  %6 = call i32 @set_bit(i32 %5, i32* @key_gc_flags)
  %7 = call i32 (...) @key_schedule_gc_work()
  ret void
}

declare dso_local i32 @kenter(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @key_schedule_gc_work(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
