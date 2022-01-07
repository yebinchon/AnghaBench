; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_replace_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_x_tables.c_xt_replace_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.xt_table = type { i32, i32, %struct.xt_table_info* }
%struct.xt_table_info = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"num_counters != table->private->number (%u/%u)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@AUDIT_NETFILTER_CFG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@audit_enabled = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xt_table_info* @xt_replace_table(%struct.xt_table* %0, i32 %1, %struct.xt_table_info* %2, i32* %3) #0 {
  %5 = alloca %struct.xt_table_info*, align 8
  %6 = alloca %struct.xt_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xt_table_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xt_table_info*, align 8
  store %struct.xt_table* %0, %struct.xt_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.xt_table_info* %2, %struct.xt_table_info** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = call i32 (...) @local_bh_disable()
  %12 = load %struct.xt_table*, %struct.xt_table** %6, align 8
  %13 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %12, i32 0, i32 2
  %14 = load %struct.xt_table_info*, %struct.xt_table_info** %13, align 8
  store %struct.xt_table_info* %14, %struct.xt_table_info** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.xt_table_info*, %struct.xt_table_info** %10, align 8
  %17 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.xt_table_info*, %struct.xt_table_info** %10, align 8
  %23 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @duprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = call i32 (...) @local_bh_enable()
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  store %struct.xt_table_info* null, %struct.xt_table_info** %5, align 8
  br label %41

30:                                               ; preds = %4
  %31 = load %struct.xt_table_info*, %struct.xt_table_info** %8, align 8
  %32 = load %struct.xt_table*, %struct.xt_table** %6, align 8
  %33 = getelementptr inbounds %struct.xt_table, %struct.xt_table* %32, i32 0, i32 2
  store %struct.xt_table_info* %31, %struct.xt_table_info** %33, align 8
  %34 = load %struct.xt_table_info*, %struct.xt_table_info** %10, align 8
  %35 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.xt_table_info*, %struct.xt_table_info** %8, align 8
  %38 = getelementptr inbounds %struct.xt_table_info, %struct.xt_table_info* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = call i32 (...) @local_bh_enable()
  %40 = load %struct.xt_table_info*, %struct.xt_table_info** %10, align 8
  store %struct.xt_table_info* %40, %struct.xt_table_info** %5, align 8
  br label %41

41:                                               ; preds = %30, %20
  %42 = load %struct.xt_table_info*, %struct.xt_table_info** %5, align 8
  ret %struct.xt_table_info* %42
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @duprintf(i8*, i32, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
