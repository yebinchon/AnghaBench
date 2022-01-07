; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_disc_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_discover.c_disc_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_req = type { i32, %struct.TYPE_7__*, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i32, %struct.TYPE_8__*, i32*)* }

@TIPC_LINK_REQ_SLOW = common dso_local global i32 0, align 4
@TIPC_LINK_REQ_FAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_req*)* @disc_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disc_timeout(%struct.link_req* %0) #0 {
  %2 = alloca %struct.link_req*, align 8
  store %struct.link_req* %0, %struct.link_req** %2, align 8
  %3 = load %struct.link_req*, %struct.link_req** %2, align 8
  %4 = getelementptr inbounds %struct.link_req, %struct.link_req* %3, i32 0, i32 1
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.link_req*, %struct.link_req** %2, align 8
  %10 = getelementptr inbounds %struct.link_req, %struct.link_req* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %14, align 8
  %16 = load %struct.link_req*, %struct.link_req** %2, align 8
  %17 = getelementptr inbounds %struct.link_req, %struct.link_req* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.link_req*, %struct.link_req** %2, align 8
  %20 = getelementptr inbounds %struct.link_req, %struct.link_req* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.link_req*, %struct.link_req** %2, align 8
  %24 = getelementptr inbounds %struct.link_req, %struct.link_req* %23, i32 0, i32 3
  %25 = call i32 %15(i32 %18, %struct.TYPE_8__* %22, i32* %24)
  %26 = load %struct.link_req*, %struct.link_req** %2, align 8
  %27 = getelementptr inbounds %struct.link_req, %struct.link_req* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TIPC_LINK_REQ_SLOW, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %1
  %32 = load %struct.link_req*, %struct.link_req** %2, align 8
  %33 = getelementptr inbounds %struct.link_req, %struct.link_req* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @TIPC_LINK_REQ_FAST, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %1
  br label %71

38:                                               ; preds = %31
  %39 = load %struct.link_req*, %struct.link_req** %2, align 8
  %40 = getelementptr inbounds %struct.link_req, %struct.link_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 2
  store i32 %42, i32* %40, align 8
  %43 = load %struct.link_req*, %struct.link_req** %2, align 8
  %44 = getelementptr inbounds %struct.link_req, %struct.link_req* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @TIPC_LINK_REQ_FAST, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @TIPC_LINK_REQ_FAST, align 4
  %50 = load %struct.link_req*, %struct.link_req** %2, align 8
  %51 = getelementptr inbounds %struct.link_req, %struct.link_req* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %38
  %53 = load %struct.link_req*, %struct.link_req** %2, align 8
  %54 = getelementptr inbounds %struct.link_req, %struct.link_req* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TIPC_LINK_REQ_FAST, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load %struct.link_req*, %struct.link_req** %2, align 8
  %60 = getelementptr inbounds %struct.link_req, %struct.link_req* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32, i32* @TIPC_LINK_REQ_SLOW, align 4
  %68 = load %struct.link_req*, %struct.link_req** %2, align 8
  %69 = getelementptr inbounds %struct.link_req, %struct.link_req* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %58, %52
  br label %71

71:                                               ; preds = %70, %37
  %72 = load %struct.link_req*, %struct.link_req** %2, align 8
  %73 = getelementptr inbounds %struct.link_req, %struct.link_req* %72, i32 0, i32 2
  %74 = load %struct.link_req*, %struct.link_req** %2, align 8
  %75 = getelementptr inbounds %struct.link_req, %struct.link_req* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @k_start_timer(i32* %73, i32 %76)
  %78 = load %struct.link_req*, %struct.link_req** %2, align 8
  %79 = getelementptr inbounds %struct.link_req, %struct.link_req* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = call i32 @spin_unlock_bh(i32* %82)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @k_start_timer(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
