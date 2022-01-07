; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_get_dist_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_netem.c_get_dist_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.nlattr = type { i32 }
%struct.netem_sched_data = type { %struct.disttable* }
%struct.disttable = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @get_dist_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dist_table(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.netem_sched_data*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.disttable*, align 8
  %11 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %12 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %13 = call %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc* %12)
  store %struct.netem_sched_data* %13, %struct.netem_sched_data** %6, align 8
  %14 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %15 = call i32 @nla_len(%struct.nlattr* %14)
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  store i64 %17, i64* %7, align 8
  %18 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %19 = call i32* @nla_data(%struct.nlattr* %18)
  store i32* %19, i32** %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ugt i64 %20, 65536
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = mul i64 %26, 4
  %28 = add i64 16, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.disttable* @kmalloc(i32 %29, i32 %30)
  store %struct.disttable* %31, %struct.disttable** %10, align 8
  %32 = load %struct.disttable*, %struct.disttable** %10, align 8
  %33 = icmp ne %struct.disttable* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %25
  %38 = load i64, i64* %7, align 8
  %39 = load %struct.disttable*, %struct.disttable** %10, align 8
  %40 = getelementptr inbounds %struct.disttable, %struct.disttable* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %58, %37
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.disttable*, %struct.disttable** %10, align 8
  %53 = getelementptr inbounds %struct.disttable, %struct.disttable* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %51, i32* %57, align 4
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %41

61:                                               ; preds = %41
  %62 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %63 = call i32* @qdisc_root_sleeping_lock(%struct.Qdisc* %62)
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %67 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %66, i32 0, i32 0
  %68 = load %struct.disttable*, %struct.disttable** %67, align 8
  %69 = call i32 @kfree(%struct.disttable* %68)
  %70 = load %struct.disttable*, %struct.disttable** %10, align 8
  %71 = load %struct.netem_sched_data*, %struct.netem_sched_data** %6, align 8
  %72 = getelementptr inbounds %struct.netem_sched_data, %struct.netem_sched_data* %71, i32 0, i32 0
  store %struct.disttable* %70, %struct.disttable** %72, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @spin_unlock_bh(i32* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %61, %34, %22
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.netem_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.disttable* @kmalloc(i32, i32) #1

declare dso_local i32* @qdisc_root_sleeping_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(%struct.disttable*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
