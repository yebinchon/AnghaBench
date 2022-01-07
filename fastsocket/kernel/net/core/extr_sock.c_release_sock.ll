; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_release_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_release_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32 (%struct.sock*)* }
%struct.TYPE_4__ = type { i64 }

@_RET_IP_ = common dso_local global i32 0, align 4
@RHEL_PROTO_HAS_RELEASE_CB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_sock(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %3 = load %struct.sock*, %struct.sock** %2, align 8
  %4 = getelementptr inbounds %struct.sock, %struct.sock* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 3
  %6 = load i32, i32* @_RET_IP_, align 4
  %7 = call i32 @mutex_release(i32* %5, i32 1, i32 %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.sock*, %struct.sock** %2, align 8
  %19 = call i32 @__release_sock(%struct.sock* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.sock*, %struct.sock** %2, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* @RHEL_PROTO_HAS_RELEASE_CB, align 4
  %25 = call i64 @proto_has_rhel_ext(%struct.TYPE_6__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %20
  %28 = load %struct.sock*, %struct.sock** %2, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %31, align 8
  %33 = icmp ne i32 (%struct.sock*)* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %38, align 8
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = call i32 %39(%struct.sock* %40)
  br label %42

42:                                               ; preds = %34, %27, %20
  %43 = load %struct.sock*, %struct.sock** %2, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i64 @waitqueue_active(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load %struct.sock*, %struct.sock** %2, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @wake_up(i32* %54)
  br label %56

56:                                               ; preds = %51, %42
  %57 = load %struct.sock*, %struct.sock** %2, align 8
  %58 = getelementptr inbounds %struct.sock, %struct.sock* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @spin_unlock_bh(i32* %59)
  ret void
}

declare dso_local i32 @mutex_release(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__release_sock(%struct.sock*) #1

declare dso_local i64 @proto_has_rhel_ext(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
