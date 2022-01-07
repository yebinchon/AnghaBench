; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dump_class_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dump_class_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.gnet_dump = type { i32 }
%struct.htb_class = type { %struct.TYPE_12__, %struct.TYPE_11__, i32, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.gnet_dump*)* @htb_dump_class_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_dump_class_stats(%struct.Qdisc* %0, i64 %1, %struct.gnet_dump* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gnet_dump*, align 8
  %8 = alloca %struct.htb_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.gnet_dump* %2, %struct.gnet_dump** %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = inttoptr i64 %9 to %struct.htb_class*
  store %struct.htb_class* %10, %struct.htb_class** %8, align 8
  %11 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %12 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %3
  %16 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %17 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %16, i32 0, i32 6
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %24 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %23, i32 0, i32 6
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %32 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  br label %34

34:                                               ; preds = %22, %15, %3
  %35 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %36 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %39 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 4
  %41 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %42 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %45 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %48 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 3
  %50 = call i64 @gnet_stats_copy_basic(%struct.gnet_dump* %47, i32* %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %34
  %53 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %54 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %55 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %54, i32 0, i32 2
  %56 = call i64 @gnet_stats_copy_rate_est(%struct.gnet_dump* %53, i32* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %60 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %61 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %60, i32 0, i32 1
  %62 = call i64 @gnet_stats_copy_queue(%struct.gnet_dump* %59, %struct.TYPE_11__* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %52, %34
  store i32 -1, i32* %4, align 4
  br label %70

65:                                               ; preds = %58
  %66 = load %struct.gnet_dump*, %struct.gnet_dump** %7, align 8
  %67 = load %struct.htb_class*, %struct.htb_class** %8, align 8
  %68 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %67, i32 0, i32 0
  %69 = call i32 @gnet_stats_copy_app(%struct.gnet_dump* %66, %struct.TYPE_12__* %68, i32 8)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %64
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @gnet_stats_copy_basic(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_rate_est(%struct.gnet_dump*, i32*) #1

declare dso_local i64 @gnet_stats_copy_queue(%struct.gnet_dump*, %struct.TYPE_11__*) #1

declare dso_local i32 @gnet_stats_copy_app(%struct.gnet_dump*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
