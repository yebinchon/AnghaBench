; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_send_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stack_user.c_ocfs2_control_send_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_live_connection = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@ocfs2_control_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @ocfs2_control_send_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_control_send_down(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_live_connection*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @ocfs2_control_lock)
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.ocfs2_live_connection* @ocfs2_connection_find(i8* %7)
  store %struct.ocfs2_live_connection* %8, %struct.ocfs2_live_connection** %5, align 8
  %9 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %5, align 8
  %10 = icmp ne %struct.ocfs2_live_connection* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp eq %struct.TYPE_2__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %5, align 8
  %19 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32 (i32, i32)*, i32 (i32, i32)** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.ocfs2_live_connection*, %struct.ocfs2_live_connection** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_live_connection, %struct.ocfs2_live_connection* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 %22(i32 %23, i32 %28)
  br label %30

30:                                               ; preds = %11, %2
  %31 = call i32 @mutex_unlock(i32* @ocfs2_control_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ocfs2_live_connection* @ocfs2_connection_find(i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
