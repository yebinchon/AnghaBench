; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_wait_for_node_death.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_wait_for_node_death.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32, i32 }

@ML_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"%s: waiting %dms for notification of death of node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"%s: waiting indefinitely for notification of death of node %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_wait_for_node_death(%struct.dlm_ctxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ctxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = load i32, i32* @ML_NOTICE, align 4
  %11 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %18 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dlm_is_node_dead(%struct.dlm_ctxt* %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @msecs_to_jiffies(i32 %23)
  %25 = call i32 @wait_event_timeout(i32 %19, i32 %22, i32 %24)
  br label %40

26:                                               ; preds = %3
  %27 = load i32, i32* @ML_NOTICE, align 4
  %28 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %29 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 (i32, i8*, i32, i32, ...) @mlog(i32 %27, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %34 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dlm_is_node_dead(%struct.dlm_ctxt* %36, i32 %37)
  %39 = call i32 @wait_event(i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %26, %9
  ret i32 0
}

declare dso_local i32 @mlog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dlm_is_node_dead(%struct.dlm_ctxt*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wait_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
