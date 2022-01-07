; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c_svc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_serv = type { i64, %struct.svc_serv*, i32 (%struct.svc_serv*)*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"svc: svc_destroy(%s, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"svc_destroy: no threads for serv=%p!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @svc_destroy(%struct.svc_serv* %0) #0 {
  %2 = alloca %struct.svc_serv*, align 8
  store %struct.svc_serv* %0, %struct.svc_serv** %2, align 8
  %3 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %4 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %9 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %7, i64 %10)
  %12 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %13 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %18 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %24 = call i32 @svc_sock_update_bufs(%struct.svc_serv* %23)
  br label %60

25:                                               ; preds = %16
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %28 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.svc_serv* %27)
  br label %29

29:                                               ; preds = %26, %25
  %30 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %31 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %30, i32 0, i32 3
  %32 = call i32 @del_timer_sync(i32* %31)
  %33 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %34 = call i32 @svc_close_all(%struct.svc_serv* %33)
  %35 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %36 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %35, i32 0, i32 2
  %37 = load i32 (%struct.svc_serv*)*, i32 (%struct.svc_serv*)** %36, align 8
  %38 = icmp ne i32 (%struct.svc_serv*)* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %41 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %40, i32 0, i32 2
  %42 = load i32 (%struct.svc_serv*)*, i32 (%struct.svc_serv*)** %41, align 8
  %43 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %44 = call i32 %42(%struct.svc_serv* %43)
  br label %45

45:                                               ; preds = %39, %29
  %46 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %47 = call i32 @cache_clean_deferred(%struct.svc_serv* %46)
  %48 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %49 = call i64 @svc_serv_is_pooled(%struct.svc_serv* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (...) @svc_pool_map_put()
  br label %53

53:                                               ; preds = %51, %45
  %54 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %55 = getelementptr inbounds %struct.svc_serv, %struct.svc_serv* %54, i32 0, i32 1
  %56 = load %struct.svc_serv*, %struct.svc_serv** %55, align 8
  %57 = call i32 @kfree(%struct.svc_serv* %56)
  %58 = load %struct.svc_serv*, %struct.svc_serv** %2, align 8
  %59 = call i32 @kfree(%struct.svc_serv* %58)
  br label %60

60:                                               ; preds = %53, %22
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64) #1

declare dso_local i32 @svc_sock_update_bufs(%struct.svc_serv*) #1

declare dso_local i32 @printk(i8*, %struct.svc_serv*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @svc_close_all(%struct.svc_serv*) #1

declare dso_local i32 @cache_clean_deferred(%struct.svc_serv*) #1

declare dso_local i64 @svc_serv_is_pooled(%struct.svc_serv*) #1

declare dso_local i32 @svc_pool_map_put(...) #1

declare dso_local i32 @kfree(%struct.svc_serv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
