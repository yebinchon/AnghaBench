; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i64 }
%struct.htb_class = type { i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*)* @htb_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_activate(%struct.htb_sched* %0, %struct.htb_class* %1) #0 {
  %3 = alloca %struct.htb_sched*, align 8
  %4 = alloca %struct.htb_class*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %3, align 8
  store %struct.htb_class* %1, %struct.htb_class** %4, align 8
  %5 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %6 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %11 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %9
  %17 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %18 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %16, %9, %2
  %28 = phi i1 [ true, %9 ], [ true, %2 ], [ %26, %16 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %32 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %27
  %36 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %37 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %41 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.htb_sched*, %struct.htb_sched** %3, align 8
  %43 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %44 = call i32 @htb_activate_prios(%struct.htb_sched* %42, %struct.htb_class* %43)
  %45 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %46 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.htb_sched*, %struct.htb_sched** %3, align 8
  %50 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %53 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = call i32 @list_add_tail(i32* %48, i64 %56)
  br label %58

58:                                               ; preds = %35, %27
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @htb_activate_prios(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i32 @list_add_tail(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
