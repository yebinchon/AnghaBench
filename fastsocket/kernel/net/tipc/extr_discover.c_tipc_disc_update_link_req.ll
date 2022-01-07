; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_update_link_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_tipc_disc_update_link_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_req = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@TIPC_LINK_REQ_SLOW = common dso_local global i64 0, align 8
@TIPC_LINK_REQ_FAST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_disc_update_link_req(%struct.link_req* %0) #0 {
  %2 = alloca %struct.link_req*, align 8
  store %struct.link_req* %0, %struct.link_req** %2, align 8
  %3 = load %struct.link_req*, %struct.link_req** %2, align 8
  %4 = icmp ne %struct.link_req* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %58

6:                                                ; preds = %1
  %7 = load %struct.link_req*, %struct.link_req** %2, align 8
  %8 = getelementptr inbounds %struct.link_req, %struct.link_req* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TIPC_LINK_REQ_SLOW, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %6
  %13 = load %struct.link_req*, %struct.link_req** %2, align 8
  %14 = getelementptr inbounds %struct.link_req, %struct.link_req* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load i64, i64* @TIPC_LINK_REQ_FAST, align 8
  %22 = load %struct.link_req*, %struct.link_req** %2, align 8
  %23 = getelementptr inbounds %struct.link_req, %struct.link_req* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.link_req*, %struct.link_req** %2, align 8
  %25 = getelementptr inbounds %struct.link_req, %struct.link_req* %24, i32 0, i32 1
  %26 = load %struct.link_req*, %struct.link_req** %2, align 8
  %27 = getelementptr inbounds %struct.link_req, %struct.link_req* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @k_start_timer(i32* %25, i64 %28)
  br label %30

30:                                               ; preds = %20, %12
  br label %58

31:                                               ; preds = %6
  %32 = load %struct.link_req*, %struct.link_req** %2, align 8
  %33 = getelementptr inbounds %struct.link_req, %struct.link_req* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TIPC_LINK_REQ_FAST, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load %struct.link_req*, %struct.link_req** %2, align 8
  %39 = getelementptr inbounds %struct.link_req, %struct.link_req* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load i64, i64* @TIPC_LINK_REQ_SLOW, align 8
  %47 = load %struct.link_req*, %struct.link_req** %2, align 8
  %48 = getelementptr inbounds %struct.link_req, %struct.link_req* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.link_req*, %struct.link_req** %2, align 8
  %50 = getelementptr inbounds %struct.link_req, %struct.link_req* %49, i32 0, i32 1
  %51 = load %struct.link_req*, %struct.link_req** %2, align 8
  %52 = getelementptr inbounds %struct.link_req, %struct.link_req* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @k_start_timer(i32* %50, i64 %53)
  br label %55

55:                                               ; preds = %45, %37
  br label %57

56:                                               ; preds = %31
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %5, %57, %30
  ret void
}

declare dso_local i32 @k_start_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
