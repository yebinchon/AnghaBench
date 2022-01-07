; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_parent_to_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_parent_to_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.htb_sched = type { i64 }
%struct.htb_class = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32, i64, %struct.htb_class* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.Qdisc*, i32 }

@HTB_CAN_SEND = common dso_local global i64 0, align 8
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, %struct.Qdisc*)* @htb_parent_to_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_parent_to_leaf(%struct.htb_sched* %0, %struct.htb_class* %1, %struct.Qdisc* %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.htb_class*, align 8
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %6, align 8
  %8 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %9 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %8, i32 0, i32 10
  %10 = load %struct.htb_class*, %struct.htb_class** %9, align 8
  store %struct.htb_class* %10, %struct.htb_class** %7, align 8
  %11 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %12 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %3
  %16 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.Qdisc*, %struct.Qdisc** %19, align 8
  %21 = icmp ne %struct.Qdisc* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %24 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %23, i32 0, i32 9
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %15, %3
  %28 = phi i1 [ true, %15 ], [ true, %3 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON(i32 %29)
  %31 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %32 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HTB_CAN_SEND, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %38 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %37, i32 0, i32 8
  %39 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %40 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %43 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = call i32 @htb_safe_rb_erase(i32* %38, i64 %45)
  br label %47

47:                                               ; preds = %36, %27
  %48 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %51 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = call i32 @memset(i32* %52, i32 0, i32 4)
  %54 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %55 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %60 = icmp ne %struct.Qdisc* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  br label %64

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi %struct.Qdisc* [ %62, %61 ], [ @noop_qdisc, %63 ]
  %66 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %67 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %66, i32 0, i32 6
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store %struct.Qdisc* %65, %struct.Qdisc** %69, align 8
  %70 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %71 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %74 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 8
  %75 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %76 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %79 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = call i32 (...) @psched_get_time()
  %81 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %82 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  %83 = load i64, i64* @HTB_CAN_SEND, align 8
  %84 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %85 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @htb_safe_rb_erase(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @psched_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
