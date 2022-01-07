; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_complete_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmrecovery.c_dlm_complete_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ctxt = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"waiting for dlm recovery thread to exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_complete_recovery_thread(%struct.dlm_ctxt* %0) #0 {
  %2 = alloca %struct.dlm_ctxt*, align 8
  store %struct.dlm_ctxt* %0, %struct.dlm_ctxt** %2, align 8
  %3 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %10 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kthread_stop(i32* %11)
  %13 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %2, align 8
  %14 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @kthread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
