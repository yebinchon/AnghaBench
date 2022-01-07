; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_sc_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_sc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_sock_container = type { %struct.page*, %struct.TYPE_2__, i32, i32, i32, i32, %struct.o2nm_node*, i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.o2nm_node = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@o2net_sc_connect_completed = common dso_local global i32 0, align 4
@o2net_rx_until_empty = common dso_local global i32 0, align 4
@o2net_shutdown_sc = common dso_local global i32 0, align 4
@o2net_sc_send_keep_req = common dso_local global i32 0, align 4
@o2net_idle_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"alloced\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.o2net_sock_container* (%struct.o2nm_node*)* @sc_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.o2net_sock_container* @sc_alloc(%struct.o2nm_node* %0) #0 {
  %2 = alloca %struct.o2nm_node*, align 8
  %3 = alloca %struct.o2net_sock_container*, align 8
  %4 = alloca %struct.o2net_sock_container*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.o2nm_node* %0, %struct.o2nm_node** %2, align 8
  store %struct.o2net_sock_container* null, %struct.o2net_sock_container** %4, align 8
  store %struct.page* null, %struct.page** %5, align 8
  %6 = load i32, i32* @GFP_NOFS, align 4
  %7 = call %struct.page* @alloc_page(i32 %6)
  store %struct.page* %7, %struct.page** %5, align 8
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.o2net_sock_container* @kzalloc(i32 56, i32 %8)
  store %struct.o2net_sock_container* %9, %struct.o2net_sock_container** %3, align 8
  %10 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %11 = icmp eq %struct.o2net_sock_container* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.page*, %struct.page** %5, align 8
  %14 = icmp eq %struct.page* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %1
  br label %61

16:                                               ; preds = %12
  %17 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %18 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %17, i32 0, i32 7
  %19 = call i32 @kref_init(i32* %18)
  %20 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %21 = call i32 @o2nm_node_get(%struct.o2nm_node* %20)
  %22 = load %struct.o2nm_node*, %struct.o2nm_node** %2, align 8
  %23 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %24 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %23, i32 0, i32 6
  store %struct.o2nm_node* %22, %struct.o2nm_node** %24, align 8
  %25 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %26 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %25, i32 0, i32 5
  %27 = load i32, i32* @o2net_sc_connect_completed, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %30 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %29, i32 0, i32 4
  %31 = load i32, i32* @o2net_rx_until_empty, align 4
  %32 = call i32 @INIT_WORK(i32* %30, i32 %31)
  %33 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %34 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %33, i32 0, i32 3
  %35 = load i32, i32* @o2net_shutdown_sc, align 4
  %36 = call i32 @INIT_WORK(i32* %34, i32 %35)
  %37 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %38 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %37, i32 0, i32 2
  %39 = load i32, i32* @o2net_sc_send_keep_req, align 4
  %40 = call i32 @INIT_DELAYED_WORK(i32* %38, i32 %39)
  %41 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %42 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %41, i32 0, i32 1
  %43 = call i32 @init_timer(%struct.TYPE_2__* %42)
  %44 = load i32, i32* @o2net_idle_timer, align 4
  %45 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %46 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 8
  %48 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %49 = ptrtoint %struct.o2net_sock_container* %48 to i64
  %50 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %51 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  %53 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %54 = call i32 @sclog(%struct.o2net_sock_container* %53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  store %struct.o2net_sock_container* %55, %struct.o2net_sock_container** %4, align 8
  %56 = load %struct.page*, %struct.page** %5, align 8
  %57 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %58 = getelementptr inbounds %struct.o2net_sock_container, %struct.o2net_sock_container* %57, i32 0, i32 0
  store %struct.page* %56, %struct.page** %58, align 8
  %59 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %60 = call i32 @o2net_debug_add_sc(%struct.o2net_sock_container* %59)
  store %struct.o2net_sock_container* null, %struct.o2net_sock_container** %3, align 8
  store %struct.page* null, %struct.page** %5, align 8
  br label %61

61:                                               ; preds = %16, %15
  %62 = load %struct.page*, %struct.page** %5, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.page*, %struct.page** %5, align 8
  %66 = call i32 @__free_page(%struct.page* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %3, align 8
  %69 = call i32 @kfree(%struct.o2net_sock_container* %68)
  %70 = load %struct.o2net_sock_container*, %struct.o2net_sock_container** %4, align 8
  ret %struct.o2net_sock_container* %70
}

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.o2net_sock_container* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @o2nm_node_get(%struct.o2nm_node*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @sclog(%struct.o2net_sock_container*, i8*) #1

declare dso_local i32 @o2net_debug_add_sc(%struct.o2net_sock_container*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.o2net_sock_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
