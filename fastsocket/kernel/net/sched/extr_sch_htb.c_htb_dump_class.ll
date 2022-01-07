; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dump_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_dump_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcmsg = type { i32, i32, i32 }
%struct.htb_class = type { i64, i32, i32, i32, %struct.TYPE_16__*, i32, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tc_htb_opt = type { i64, i32, i32, i32, i32, i32, i32 }

@TC_H_ROOT = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i32 0, align 4
@TCA_HTB_PARMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.sk_buff*, %struct.tcmsg*)* @htb_dump_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_dump_class(%struct.Qdisc* %0, i64 %1, %struct.sk_buff* %2, %struct.tcmsg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tcmsg*, align 8
  %10 = alloca %struct.htb_class*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nlattr*, align 8
  %13 = alloca %struct.tc_htb_opt, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store %struct.tcmsg* %3, %struct.tcmsg** %9, align 8
  %14 = load i64, i64* %7, align 8
  %15 = inttoptr i64 %14 to %struct.htb_class*
  store %struct.htb_class* %15, %struct.htb_class** %10, align 8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = call i32* @qdisc_root_sleeping_lock(%struct.Qdisc* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %21 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %20, i32 0, i32 9
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = icmp ne %struct.TYPE_10__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %26 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %25, i32 0, i32 9
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  br label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @TC_H_ROOT, align 4
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %30, %24 ], [ %32, %31 ]
  %35 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %36 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %38 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %42 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %44 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %33
  %48 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 7
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = icmp ne %struct.TYPE_12__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %47
  %55 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %56 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %55, i32 0, i32 7
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tcmsg*, %struct.tcmsg** %9, align 8
  %63 = getelementptr inbounds %struct.tcmsg, %struct.tcmsg* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %54, %47, %33
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load i32, i32* @TCA_OPTIONS, align 4
  %67 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %65, i32 %66)
  store %struct.nlattr* %67, %struct.nlattr** %12, align 8
  %68 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %69 = icmp eq %struct.nlattr* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %116

71:                                               ; preds = %64
  %72 = call i32 @memset(%struct.tc_htb_opt* %13, i32 0, i32 32)
  %73 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %74 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %73, i32 0, i32 6
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 6
  store i32 %77, i32* %78, align 4
  %79 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %80 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 5
  store i32 %81, i32* %82, align 8
  %83 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %84 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %83, i32 0, i32 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 4
  store i32 %87, i32* %88, align 4
  %89 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %90 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 3
  store i32 %91, i32* %92, align 8
  %93 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %94 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 2
  store i32 %95, i32* %96, align 4
  %97 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %98 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 1
  store i32 %99, i32* %100, align 8
  %101 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %102 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.tc_htb_opt, %struct.tc_htb_opt* %13, i32 0, i32 0
  store i64 %103, i64* %104, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %106 = load i32, i32* @TCA_HTB_PARMS, align 4
  %107 = call i32 @NLA_PUT(%struct.sk_buff* %105, i32 %106, i32 32, %struct.tc_htb_opt* %13)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %109 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %110 = call i32 @nla_nest_end(%struct.sk_buff* %108, %struct.nlattr* %109)
  %111 = load i32*, i32** %11, align 8
  %112 = call i32 @spin_unlock_bh(i32* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %5, align 4
  br label %122

116:                                              ; preds = %70
  %117 = load i32*, i32** %11, align 8
  %118 = call i32 @spin_unlock_bh(i32* %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %121 = call i32 @nla_nest_cancel(%struct.sk_buff* %119, %struct.nlattr* %120)
  store i32 -1, i32* %5, align 4
  br label %122

122:                                              ; preds = %116, %71
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i32* @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.tc_htb_opt*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.tc_htb_opt*) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
