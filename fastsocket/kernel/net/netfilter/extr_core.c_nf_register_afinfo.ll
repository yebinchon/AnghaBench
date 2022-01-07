; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_nf_register_afinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_core.c_nf_register_afinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_afinfo = type { i64 }

@afinfo_mutex = common dso_local global i32 0, align 4
@nf_afinfo = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_register_afinfo(%struct.nf_afinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nf_afinfo*, align 8
  %4 = alloca i32, align 4
  store %struct.nf_afinfo* %0, %struct.nf_afinfo** %3, align 8
  %5 = call i32 @mutex_lock_interruptible(i32* @afinfo_mutex)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i32*, i32** @nf_afinfo, align 8
  %12 = load %struct.nf_afinfo*, %struct.nf_afinfo** %3, align 8
  %13 = getelementptr inbounds %struct.nf_afinfo, %struct.nf_afinfo* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nf_afinfo*, %struct.nf_afinfo** %3, align 8
  %18 = call i32 @rcu_assign_pointer(i32 %16, %struct.nf_afinfo* %17)
  %19 = call i32 @mutex_unlock(i32* @afinfo_mutex)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %10, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.nf_afinfo*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
