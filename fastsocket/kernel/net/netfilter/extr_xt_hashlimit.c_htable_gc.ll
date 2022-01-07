; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_htable_gc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_htable_gc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_hashlimit_htable = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@select_gc = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @htable_gc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htable_gc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xt_hashlimit_htable*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.xt_hashlimit_htable*
  store %struct.xt_hashlimit_htable* %5, %struct.xt_hashlimit_htable** %3, align 8
  %6 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %3, align 8
  %7 = load i32, i32* @select_gc, align 4
  %8 = call i32 @htable_selective_cleanup(%struct.xt_hashlimit_htable* %6, i32 %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %3, align 8
  %11 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @msecs_to_jiffies(i32 %13)
  %15 = add nsw i64 %9, %14
  %16 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %3, align 8
  %17 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %3, align 8
  %20 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %19, i32 0, i32 0
  %21 = call i32 @add_timer(%struct.TYPE_4__* %20)
  ret void
}

declare dso_local i32 @htable_selective_cleanup(%struct.xt_hashlimit_htable*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
