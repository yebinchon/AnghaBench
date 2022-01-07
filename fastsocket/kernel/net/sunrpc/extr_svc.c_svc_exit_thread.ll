; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_exit_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_exit_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32, %struct.svc_rqst*, %struct.svc_rqst*, %struct.svc_rqst*, %struct.svc_pool*, %struct.svc_serv* }
%struct.svc_pool = type { i32, i32 }
%struct.svc_serv = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_exit_thread(%struct.svc_rqst* %0) #0 {
  %2 = alloca %struct.svc_rqst*, align 8
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.svc_pool*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %2, align 8
  %5 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %6 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %5, i32 0, i32 5
  %7 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  store %struct.svc_serv* %7, %struct.svc_serv** %3, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 4
  %10 = load %struct.svc_pool*, %struct.svc_pool** %9, align 8
  store %struct.svc_pool* %10, %struct.svc_pool** %4, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %12 = call i32 @svc_release_buffer(%struct.svc_rqst* %11)
  %13 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %14 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %13, i32 0, i32 3
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %14, align 8
  %16 = call i32 @kfree(%struct.svc_rqst* %15)
  %17 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %18 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %17, i32 0, i32 2
  %19 = load %struct.svc_rqst*, %struct.svc_rqst** %18, align 8
  %20 = call i32 @kfree(%struct.svc_rqst* %19)
  %21 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %22 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %21, i32 0, i32 1
  %23 = load %struct.svc_rqst*, %struct.svc_rqst** %22, align 8
  %24 = call i32 @kfree(%struct.svc_rqst* %23)
  %25 = load %struct.svc_pool*, %struct.svc_pool** %4, align 8
  %26 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.svc_pool*, %struct.svc_pool** %4, align 8
  %29 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %33 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %32, i32 0, i32 0
  %34 = call i32 @list_del(i32* %33)
  %35 = load %struct.svc_pool*, %struct.svc_pool** %4, align 8
  %36 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_bh(i32* %36)
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %2, align 8
  %39 = call i32 @kfree(%struct.svc_rqst* %38)
  %40 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %41 = icmp ne %struct.svc_serv* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %44 = call i32 @svc_destroy(%struct.svc_serv* %43)
  br label %45

45:                                               ; preds = %42, %1
  ret void
}

declare dso_local i32 @svc_release_buffer(%struct.svc_rqst*) #1

declare dso_local i32 @kfree(%struct.svc_rqst*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @svc_destroy(%struct.svc_serv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
