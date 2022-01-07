; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_downconvert_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_downconvert_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"downconvert_thread: awoken\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ocfs2_downconvert_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_downconvert_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_super*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ocfs2_super*
  store %struct.ocfs2_super* %6, %struct.ocfs2_super** %4, align 8
  br label %7

7:                                                ; preds = %27, %1
  %8 = call i64 (...) @kthread_should_stop()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %12 = call i64 @ocfs2_downconvert_thread_lists_empty(%struct.ocfs2_super* %11)
  %13 = icmp ne i64 %12, 0
  br label %14

14:                                               ; preds = %10, %7
  %15 = phi i1 [ false, %7 ], [ %13, %10 ]
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %22 = call i64 @ocfs2_downconvert_thread_should_wake(%struct.ocfs2_super* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = call i64 (...) @kthread_should_stop()
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i1 [ true, %17 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @wait_event_interruptible(i32 %20, i32 %29)
  %31 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %33 = call i32 @ocfs2_downconvert_thread_do_work(%struct.ocfs2_super* %32)
  br label %7

34:                                               ; preds = %14
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i64 @ocfs2_downconvert_thread_lists_empty(%struct.ocfs2_super*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @ocfs2_downconvert_thread_should_wake(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @ocfs2_downconvert_thread_do_work(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
