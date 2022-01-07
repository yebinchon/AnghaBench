; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_start_listening.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_start_listening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2nm_node = type { i32, i32, i32 }

@o2net_wq = common dso_local global i32* null, align 8
@o2net_listen_sock = common dso_local global i32* null, align 8
@ML_KTHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"starting o2net thread...\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"o2net\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to launch o2net thread\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @o2net_start_listening(%struct.o2nm_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2nm_node*, align 8
  %4 = alloca i32, align 4
  store %struct.o2nm_node* %0, %struct.o2nm_node** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32*, i32** @o2net_wq, align 8
  %6 = icmp ne i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load i32*, i32** @o2net_listen_sock, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32, i32* @ML_KTHREAD, align 4
  %14 = call i32 @mlog(i32 %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = call i32* @create_singlethread_workqueue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** @o2net_wq, align 8
  %16 = load i32*, i32** @o2net_wq, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @ML_ERROR, align 4
  %20 = call i32 @mlog(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %43

23:                                               ; preds = %1
  %24 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %25 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %28 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @o2net_open_listening_sock(i32 %26, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32*, i32** @o2net_wq, align 8
  %35 = call i32 @destroy_workqueue(i32* %34)
  store i32* null, i32** @o2net_wq, align 8
  br label %41

36:                                               ; preds = %23
  %37 = load %struct.o2nm_node*, %struct.o2nm_node** %3, align 8
  %38 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @o2quo_conn_up(i32 %39)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @o2net_open_listening_sock(i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

declare dso_local i32 @o2quo_conn_up(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
