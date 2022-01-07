; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.htb_sched = type { i64, i32 }
%struct.htb_class = type { i64, i64, i64, i32, i64, %struct.TYPE_12__*, i32, %struct.TYPE_11__, i64, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@HTB_CAN_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @htb_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_delete(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.htb_sched*, align 8
  %7 = alloca %struct.htb_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.Qdisc*, align 8
  %10 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %12 = call %struct.htb_sched* @qdisc_priv(%struct.Qdisc* %11)
  store %struct.htb_sched* %12, %struct.htb_sched** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.htb_class*
  store %struct.htb_class* %14, %struct.htb_class** %7, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %16 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %21 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %20, i32 0, i32 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %139

27:                                               ; preds = %19
  %28 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %29 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %27
  %33 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %34 = call i64 @htb_parent_last_child(%struct.htb_class* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32
  %37 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %38 = call i32 @qdisc_dev(%struct.Qdisc* %37)
  %39 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %40 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %43 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %42, i32 0, i32 5
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.Qdisc* @qdisc_create_dflt(i32 %38, i32 %41, i32* @pfifo_qdisc_ops, i32 %47)
  store %struct.Qdisc* %48, %struct.Qdisc** %9, align 8
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %36, %32, %27
  %50 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %51 = call i32 @sch_tree_lock(%struct.Qdisc* %50)
  %52 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %53 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %49
  %57 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %58 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %66 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %68, align 8
  %70 = call i32 @qdisc_reset(%struct.TYPE_13__* %69)
  %71 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %72 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %71, i32 0, i32 7
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @qdisc_tree_decrease_qlen(%struct.TYPE_13__* %75, i32 %76)
  br label %78

78:                                               ; preds = %56, %49
  %79 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %80 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %79, i32 0, i32 1
  %81 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %82 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %81, i32 0, i32 6
  %83 = call i32 @qdisc_class_hash_remove(i32* %80, i32* %82)
  %84 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %85 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %84, i32 0, i32 5
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = icmp ne %struct.TYPE_12__* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %90 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %89, i32 0, i32 5
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %88, %78
  %96 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %97 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %102 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %103 = call i32 @htb_deactivate(%struct.htb_sched* %101, %struct.htb_class* %102)
  br label %104

104:                                              ; preds = %100, %95
  %105 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %106 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @HTB_CAN_SEND, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %112 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %111, i32 0, i32 3
  %113 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %114 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %117 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %115, %118
  %120 = call i32 @htb_safe_rb_erase(i32* %112, i64 %119)
  br label %121

121:                                              ; preds = %110, %104
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.htb_sched*, %struct.htb_sched** %6, align 8
  %126 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %127 = load %struct.Qdisc*, %struct.Qdisc** %9, align 8
  %128 = call i32 @htb_parent_to_leaf(%struct.htb_sched* %125, %struct.htb_class* %126, %struct.Qdisc* %127)
  br label %129

129:                                              ; preds = %124, %121
  %130 = load %struct.htb_class*, %struct.htb_class** %7, align 8
  %131 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, -1
  store i64 %133, i64* %131, align 8
  %134 = icmp eq i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = call i32 @BUG_ON(i32 %135)
  %137 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %138 = call i32 @sch_tree_unlock(%struct.Qdisc* %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %129, %24
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.htb_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i64 @htb_parent_last_child(%struct.htb_class*) #1

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_reset(%struct.TYPE_13__*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @qdisc_class_hash_remove(i32*, i32*) #1

declare dso_local i32 @htb_deactivate(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i32 @htb_safe_rb_erase(i32*, i64) #1

declare dso_local i32 @htb_parent_to_leaf(%struct.htb_sched*, %struct.htb_class*, %struct.Qdisc*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
