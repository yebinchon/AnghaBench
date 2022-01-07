; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8* }
%struct.o2net_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@o2net_hand = common dso_local global %struct.TYPE_6__* null, align 8
@o2net_keep_req = common dso_local global %struct.TYPE_6__* null, align 8
@o2net_keep_resp = common dso_local global %struct.TYPE_6__* null, align 8
@O2NET_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@O2NET_MSG_KEEP_REQ_MAGIC = common dso_local global i32 0, align 4
@O2NET_MSG_KEEP_RESP_MAGIC = common dso_local global i32 0, align 4
@o2net_nodes = common dso_local global i32 0, align 4
@o2net_start_connect = common dso_local global i32 0, align 4
@o2net_connect_expired = common dso_local global i32 0, align 4
@o2net_still_up = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.o2net_node*, align 8
  %4 = call i32 (...) @o2quo_init()
  %5 = call i64 (...) @o2net_debugfs_init()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %93

10:                                               ; preds = %0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %11)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** @o2net_hand, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** @o2net_keep_req, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.TYPE_6__* @kzalloc(i32 4, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %10
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_req, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22, %19, %10
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %27 = call i32 @kfree(%struct.TYPE_6__* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_req, align 8
  %29 = call i32 @kfree(%struct.TYPE_6__* %28)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %31 = call i32 @kfree(%struct.TYPE_6__* %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %1, align 4
  br label %93

34:                                               ; preds = %22
  %35 = load i32, i32* @O2NET_PROTOCOL_VERSION, align 4
  %36 = call i8* @cpu_to_be64(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i8* @cpu_to_be64(i32 1)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_hand, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @O2NET_MSG_KEEP_REQ_MAGIC, align 4
  %43 = call i8* @cpu_to_be16(i32 %42)
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_req, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* @O2NET_MSG_KEEP_RESP_MAGIC, align 4
  %47 = call i8* @cpu_to_be16(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @o2net_keep_resp, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  store i64 0, i64* %2, align 8
  br label %50

50:                                               ; preds = %89, %34
  %51 = load i64, i64* %2, align 8
  %52 = load i32, i32* @o2net_nodes, align 4
  %53 = call i64 @ARRAY_SIZE(i32 %52)
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %92

55:                                               ; preds = %50
  %56 = load i64, i64* %2, align 8
  %57 = call %struct.o2net_node* @o2net_nn_from_num(i64 %56)
  store %struct.o2net_node* %57, %struct.o2net_node** %3, align 8
  %58 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %59 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %58, i32 0, i32 8
  %60 = call i32 @atomic_set(i32* %59, i32 0)
  %61 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %62 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %61, i32 0, i32 7
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %65 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %64, i32 0, i32 6
  %66 = load i32, i32* @o2net_start_connect, align 4
  %67 = call i32 @INIT_DELAYED_WORK(i32* %65, i32 %66)
  %68 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %69 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %68, i32 0, i32 5
  %70 = load i32, i32* @o2net_connect_expired, align 4
  %71 = call i32 @INIT_DELAYED_WORK(i32* %69, i32 %70)
  %72 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %73 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %72, i32 0, i32 4
  %74 = load i32, i32* @o2net_still_up, align 4
  %75 = call i32 @INIT_DELAYED_WORK(i32* %73, i32 %74)
  %76 = load i32, i32* @ENOTCONN, align 4
  %77 = sub nsw i32 0, %76
  %78 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %79 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %81 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %80, i32 0, i32 2
  %82 = call i32 @init_waitqueue_head(i32* %81)
  %83 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %84 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %83, i32 0, i32 1
  %85 = call i32 @idr_init(i32* %84)
  %86 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %87 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %86, i32 0, i32 0
  %88 = call i32 @INIT_LIST_HEAD(i32* %87)
  br label %89

89:                                               ; preds = %55
  %90 = load i64, i64* %2, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %2, align 8
  br label %50

92:                                               ; preds = %50
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %92, %25, %7
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

declare dso_local i32 @o2quo_init(...) #1

declare dso_local i64 @o2net_debugfs_init(...) #1

declare dso_local %struct.TYPE_6__* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local %struct.o2net_node* @o2net_nn_from_num(i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
