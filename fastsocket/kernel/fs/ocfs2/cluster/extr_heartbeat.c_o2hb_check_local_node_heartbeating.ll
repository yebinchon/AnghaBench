; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_local_node_heartbeating.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_heartbeat.c_o2hb_check_local_node_heartbeating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@ML_HEARTBEAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"this node has not been configured.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2hb_check_local_node_heartbeating() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 (...) @o2nm_this_node()
  store i64 %3, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = load i64, i64* @O2NM_MAX_NODES, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @ML_HEARTBEAT, align 4
  %9 = call i32 @mlog(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %13

10:                                               ; preds = %0
  %11 = load i64, i64* %2, align 8
  %12 = call i32 @o2hb_check_node_heartbeating(i64 %11)
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %10, %7
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i64 @o2nm_this_node(...) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @o2hb_check_node_heartbeating(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
