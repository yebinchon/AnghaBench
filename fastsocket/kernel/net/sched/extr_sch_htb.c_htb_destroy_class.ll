; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_destroy_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_destroy_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.htb_class = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.htb_class*)* @htb_destroy_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_destroy_class(%struct.Qdisc* %0, %struct.htb_class* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.htb_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.htb_class* %1, %struct.htb_class** %4, align 8
  %5 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %6 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %11 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %20 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @qdisc_destroy(i32 %23)
  br label %25

25:                                               ; preds = %9, %2
  %26 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %27 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %26, i32 0, i32 4
  %28 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %29 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %28, i32 0, i32 3
  %30 = call i32 @gen_kill_estimator(i32* %27, i32* %29)
  %31 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %32 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @qdisc_put_rtab(i32 %33)
  %35 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %36 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qdisc_put_rtab(i32 %37)
  %39 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %40 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %39, i32 0, i32 0
  %41 = call i32 @tcf_destroy_chain(i32* %40)
  %42 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %43 = call i32 @kfree(%struct.htb_class* %42)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @qdisc_destroy(i32) #1

declare dso_local i32 @gen_kill_estimator(i32*, i32*) #1

declare dso_local i32 @qdisc_put_rtab(i32) #1

declare dso_local i32 @tcf_destroy_chain(i32*) #1

declare dso_local i32 @kfree(%struct.htb_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
