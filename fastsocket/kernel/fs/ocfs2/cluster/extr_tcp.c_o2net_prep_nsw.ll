; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_prep_nsw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_prep_nsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_node = type { i32, i32, i32 }
%struct.o2net_status_wait = type { i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O2NET_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_node*, %struct.o2net_status_wait*)* @o2net_prep_nsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_prep_nsw(%struct.o2net_node* %0, %struct.o2net_status_wait* %1) #0 {
  %3 = alloca %struct.o2net_node*, align 8
  %4 = alloca %struct.o2net_status_wait*, align 8
  %5 = alloca i32, align 4
  store %struct.o2net_node* %0, %struct.o2net_node** %3, align 8
  store %struct.o2net_status_wait* %1, %struct.o2net_status_wait** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %37, %2
  %7 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %8 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %7, i32 0, i32 2
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i32 @idr_pre_get(i32* %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @EAGAIN, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %42

15:                                               ; preds = %6
  %16 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %17 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %20 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %19, i32 0, i32 2
  %21 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %22 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %23 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %22, i32 0, i32 4
  %24 = call i32 @idr_get_new(i32* %20, %struct.o2net_status_wait* %21, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %29 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %28, i32 0, i32 3
  %30 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %31 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %30, i32 0, i32 1
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  br label %33

33:                                               ; preds = %27, %15
  %34 = load %struct.o2net_node*, %struct.o2net_node** %3, align 8
  %35 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  br label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @EAGAIN, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %6, label %42

42:                                               ; preds = %37, %12
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %47 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %46, i32 0, i32 2
  %48 = call i32 @init_waitqueue_head(i32* %47)
  %49 = load i32, i32* @O2NET_ERR_NONE, align 4
  %50 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %51 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %4, align 8
  %53 = getelementptr inbounds %struct.o2net_status_wait, %struct.o2net_status_wait* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %45, %42
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @idr_pre_get(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_get_new(i32*, %struct.o2net_status_wait*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
