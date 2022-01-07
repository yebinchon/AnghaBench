; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_tipc_link_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.link* }

@.str = private unnamed_addr constant [37 x i8] c"Attempt to delete non-existent link\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"tipc_link_delete()\0A\00", align 1
@LINK_LOG_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_link_delete(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  %3 = load %struct.link*, %struct.link** %2, align 8
  %4 = icmp ne %struct.link* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %46

7:                                                ; preds = %1
  %8 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.link*, %struct.link** %2, align 8
  %10 = getelementptr inbounds %struct.link, %struct.link* %9, i32 0, i32 0
  %11 = call i32 @k_cancel_timer(i32* %10)
  %12 = load %struct.link*, %struct.link** %2, align 8
  %13 = getelementptr inbounds %struct.link, %struct.link* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @tipc_node_lock(i32 %14)
  %16 = load %struct.link*, %struct.link** %2, align 8
  %17 = call i32 @tipc_link_reset(%struct.link* %16)
  %18 = load %struct.link*, %struct.link** %2, align 8
  %19 = getelementptr inbounds %struct.link, %struct.link* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.link*, %struct.link** %2, align 8
  %22 = call i32 @tipc_node_detach_link(i32 %20, %struct.link* %21)
  %23 = load %struct.link*, %struct.link** %2, align 8
  %24 = call i32 @tipc_link_stop(%struct.link* %23)
  %25 = load %struct.link*, %struct.link** %2, align 8
  %26 = getelementptr inbounds %struct.link, %struct.link* %25, i32 0, i32 3
  %27 = call i32 @list_del_init(i32* %26)
  %28 = load i64, i64* @LINK_LOG_BUF_SIZE, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %7
  %31 = load %struct.link*, %struct.link** %2, align 8
  %32 = getelementptr inbounds %struct.link, %struct.link* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.link*, %struct.link** %33, align 8
  %35 = call i32 @kfree(%struct.link* %34)
  br label %36

36:                                               ; preds = %30, %7
  %37 = load %struct.link*, %struct.link** %2, align 8
  %38 = getelementptr inbounds %struct.link, %struct.link* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @tipc_node_unlock(i32 %39)
  %41 = load %struct.link*, %struct.link** %2, align 8
  %42 = getelementptr inbounds %struct.link, %struct.link* %41, i32 0, i32 0
  %43 = call i32 @k_term_timer(i32* %42)
  %44 = load %struct.link*, %struct.link** %2, align 8
  %45 = call i32 @kfree(%struct.link* %44)
  br label %46

46:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local i32 @k_cancel_timer(i32*) #1

declare dso_local i32 @tipc_node_lock(i32) #1

declare dso_local i32 @tipc_link_reset(%struct.link*) #1

declare dso_local i32 @tipc_node_detach_link(i32, %struct.link*) #1

declare dso_local i32 @tipc_link_stop(%struct.link*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @kfree(%struct.link*) #1

declare dso_local i32 @tipc_node_unlock(i32) #1

declare dso_local i32 @k_term_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
