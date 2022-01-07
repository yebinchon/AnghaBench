; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_plock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_plock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)* }
%struct.ocfs2_cluster_connection = type { i32 }
%struct.file = type { i32 }
%struct.file_lock = type { i32 }

@active_stack = common dso_local global %struct.TYPE_4__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_plock(%struct.ocfs2_cluster_connection* %0, i32 %1, %struct.file* %2, i32 %3, %struct.file_lock* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_cluster_connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.file_lock*, align 8
  store %struct.ocfs2_cluster_connection* %0, %struct.ocfs2_cluster_connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.file* %2, %struct.file** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.file_lock* %4, %struct.file_lock** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)*, i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)** %15, align 8
  %17 = icmp eq i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON_ONCE(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)*, i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)** %23, align 8
  %25 = icmp ne i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @active_stack, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)*, i32 (%struct.ocfs2_cluster_connection*, i32, %struct.file*, i32, %struct.file_lock*)** %30, align 8
  %32 = load %struct.ocfs2_cluster_connection*, %struct.ocfs2_cluster_connection** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.file*, %struct.file** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.file_lock*, %struct.file_lock** %11, align 8
  %37 = call i32 %31(%struct.ocfs2_cluster_connection* %32, i32 %33, %struct.file* %34, i32 %35, %struct.file_lock* %36)
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %26
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
