; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_user_namespace.c_user_ns_map_uid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_user_namespace.c_user_ns_map_uid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.user_namespace* }
%struct.cred = type { %struct.TYPE_2__* }

@init_user_ns = common dso_local global %struct.user_namespace zeroinitializer, align 8
@overflowuid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @user_ns_map_uid(%struct.user_namespace* %0, %struct.cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.user_namespace*, align 8
  %6 = alloca %struct.cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_namespace*, align 8
  store %struct.user_namespace* %0, %struct.user_namespace** %5, align 8
  store %struct.cred* %1, %struct.cred** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  %10 = load %struct.cred*, %struct.cred** %6, align 8
  %11 = getelementptr inbounds %struct.cred, %struct.cred* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.user_namespace*, %struct.user_namespace** %13, align 8
  %15 = icmp eq %struct.user_namespace* %9, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @likely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.user_namespace*, %struct.user_namespace** %5, align 8
  store %struct.user_namespace* %22, %struct.user_namespace** %8, align 8
  br label %23

23:                                               ; preds = %36, %21
  %24 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %25 = icmp ne %struct.user_namespace* %24, @init_user_ns
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.cred*, %struct.cred** %6, align 8
  %28 = getelementptr inbounds %struct.cred, %struct.cred* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %31 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp eq %struct.TYPE_2__* %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.user_namespace*, %struct.user_namespace** %8, align 8
  %38 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.user_namespace*, %struct.user_namespace** %40, align 8
  store %struct.user_namespace* %41, %struct.user_namespace** %8, align 8
  br label %23

42:                                               ; preds = %23
  %43 = load i32, i32* @overflowuid, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %34, %19
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
