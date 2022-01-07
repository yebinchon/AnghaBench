; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_htable_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_hashlimit.c_htable_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_hashlimit_htable = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@hashlimit_procdir4 = common dso_local global i32 0, align 4
@hashlimit_procdir6 = common dso_local global i32 0, align 4
@select_all = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xt_hashlimit_htable*)* @htable_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htable_destroy(%struct.xt_hashlimit_htable* %0) #0 {
  %2 = alloca %struct.xt_hashlimit_htable*, align 8
  store %struct.xt_hashlimit_htable* %0, %struct.xt_hashlimit_htable** %2, align 8
  %3 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %4 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %3, i32 0, i32 2
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %7 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %12 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NFPROTO_IPV4, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @hashlimit_procdir4, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @hashlimit_procdir6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = call i32 @remove_proc_entry(i32 %10, i32 %21)
  %23 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %24 = load i32, i32* @select_all, align 4
  %25 = call i32 @htable_selective_cleanup(%struct.xt_hashlimit_htable* %23, i32 %24)
  %26 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %2, align 8
  %27 = call i32 @vfree(%struct.xt_hashlimit_htable* %26)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @htable_selective_cleanup(%struct.xt_hashlimit_htable*, i32) #1

declare dso_local i32 @vfree(%struct.xt_hashlimit_htable*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
