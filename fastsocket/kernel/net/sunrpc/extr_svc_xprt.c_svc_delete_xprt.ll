; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_delete_xprt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c_svc_delete_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32, i32, i32, %struct.TYPE_2__*, %struct.svc_serv* }
%struct.TYPE_2__ = type { i32 (%struct.svc_xprt*)* }
%struct.svc_serv = type { i32, i32 }
%struct.svc_deferred_req = type { i32 }

@XPT_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"svc: svc_delete_xprt(%p)\0A\00", align 1
@XPT_DETACHED = common dso_local global i32 0, align 4
@XPT_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_delete_xprt(%struct.svc_xprt* %0) #0 {
  %2 = alloca %struct.svc_xprt*, align 8
  %3 = alloca %struct.svc_serv*, align 8
  %4 = alloca %struct.svc_deferred_req*, align 8
  store %struct.svc_xprt* %0, %struct.svc_xprt** %2, align 8
  %5 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %6 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %5, i32 0, i32 4
  %7 = load %struct.svc_serv*, %struct.svc_serv** %6, align 8
  store %struct.svc_serv* %7, %struct.svc_serv** %3, align 8
  %8 = load i32, i32* @XPT_DEAD, align 4
  %9 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %10 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %9, i32 0, i32 0
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @BUG()
  br label %15

15:                                               ; preds = %13, %1
  %16 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %17 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.svc_xprt* %16)
  %18 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %19 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.svc_xprt*)*, i32 (%struct.svc_xprt*)** %21, align 8
  %23 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %24 = call i32 %22(%struct.svc_xprt* %23)
  %25 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %26 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load i32, i32* @XPT_DETACHED, align 4
  %29 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %30 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %29, i32 0, i32 0
  %31 = call i64 @test_and_set_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %15
  %34 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %35 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %34, i32 0, i32 2
  %36 = call i32 @list_del_init(i32* %35)
  br label %37

37:                                               ; preds = %33, %15
  %38 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %39 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %38, i32 0, i32 1
  %40 = call i32 @list_empty(i32* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load i32, i32* @XPT_TEMP, align 4
  %46 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %47 = getelementptr inbounds %struct.svc_xprt, %struct.svc_xprt* %46, i32 0, i32 0
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %37
  %51 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %52 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %37
  %56 = load %struct.svc_serv*, %struct.svc_serv** %3, align 8
  %57 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %56, i32 0, i32 0
  %58 = call i32 @spin_unlock_bh(i32* %57)
  br label %59

59:                                               ; preds = %63, %55
  %60 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %61 = call %struct.svc_deferred_req* @svc_deferred_dequeue(%struct.svc_xprt* %60)
  store %struct.svc_deferred_req* %61, %struct.svc_deferred_req** %4, align 8
  %62 = icmp ne %struct.svc_deferred_req* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.svc_deferred_req*, %struct.svc_deferred_req** %4, align 8
  %65 = call i32 @kfree(%struct.svc_deferred_req* %64)
  br label %59

66:                                               ; preds = %59
  %67 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %68 = call i32 @call_xpt_users(%struct.svc_xprt* %67)
  %69 = load %struct.svc_xprt*, %struct.svc_xprt** %2, align 8
  %70 = call i32 @svc_xprt_put(%struct.svc_xprt* %69)
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dprintk(i8*, %struct.svc_xprt*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.svc_deferred_req* @svc_deferred_dequeue(%struct.svc_xprt*) #1

declare dso_local i32 @kfree(%struct.svc_deferred_req*) #1

declare dso_local i32 @call_xpt_users(%struct.svc_xprt*) #1

declare dso_local i32 @svc_xprt_put(%struct.svc_xprt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
