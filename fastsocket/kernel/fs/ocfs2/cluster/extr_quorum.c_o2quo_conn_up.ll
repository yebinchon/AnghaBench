; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_conn_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_conn_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2quo_state = type { i64, i32, i32, i32 }

@o2quo_state = common dso_local global %struct.o2quo_state zeroinitializer, align 8
@O2NM_MAX_NODES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"node %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"node %u, %d total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @o2quo_conn_up(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2quo_state*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.o2quo_state* @o2quo_state, %struct.o2quo_state** %3, align 8
  %4 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %5 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %8 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %12 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @O2NM_MAX_NODES, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @mlog_bug_on_msg(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %21 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @test_bit(i32 %19, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @mlog_bug_on_msg(i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %28 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @set_bit(i32 %26, i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %33 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %34)
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %38 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @test_bit(i32 %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %1
  %43 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @o2quo_set_hold(%struct.o2quo_state* %43, i32 %44)
  br label %50

46:                                               ; preds = %1
  %47 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @o2quo_clear_hold(%struct.o2quo_state* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %52 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %51, i32 0, i32 1
  %53 = call i32 @spin_unlock(i32* %52)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

declare dso_local i32 @o2quo_set_hold(%struct.o2quo_state*, i32) #1

declare dso_local i32 @o2quo_clear_hold(%struct.o2quo_state*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
