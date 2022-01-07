; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_set_hold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_set_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2quo_state = type { i64, i32, i32 }

@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"node %u, %d total\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2quo_state*, i32)* @o2quo_set_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2quo_set_hold(%struct.o2quo_state* %0, i32 %1) #0 {
  %3 = alloca %struct.o2quo_state*, align 8
  %4 = alloca i32, align 4
  store %struct.o2quo_state* %0, %struct.o2quo_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %6 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %5, i32 0, i32 2
  %7 = call i32 @assert_spin_locked(i32* %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %10 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @test_and_set_bit(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %16 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %20 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @O2NM_MAX_NODES, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mlog_bug_on_msg(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %29 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27, i64 %30)
  br label %32

32:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
