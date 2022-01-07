; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_wait_for_node_recovery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_wait_for_node_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"%s: waiting %dms for notification of recovery of node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"%s: waiting indefinitely for notification of recovery of node %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_wait_for_node_recovery(%struct.dlm_ctxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %11 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %17 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dlm_is_node_recovered(%struct.dlm_ctxt* %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @msecs_to_jiffies(i32 %22)
  %24 = call i32 @wait_event_timeout(i32 %18, i32 %21, i32 %23)
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %27 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %32 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dlm_is_node_recovered(%struct.dlm_ctxt* %34, i32 %35)
  %37 = call i32 @wait_event(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %25, %9
  ret i32 0
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dlm_is_node_recovered(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
