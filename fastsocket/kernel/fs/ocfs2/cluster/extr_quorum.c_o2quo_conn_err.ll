; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_conn_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_conn_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2quo_state = type { i64, i32, i32, i32 }

@o2quo_state = common dso_local global %struct.o2quo_state zeroinitializer, align 8
@.str = private unnamed_addr constant [23 x i8] c"node %u, connected %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"node %u, %d total\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @o2quo_conn_err(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.o2quo_state*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.o2quo_state* @o2quo_state, %struct.o2quo_state** %3, align 8
  %4 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %5 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %4, i32 0, i32 1
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %9 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @test_bit(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %15 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %19 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %25 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @mlog_bug_on_msg(i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26)
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %30 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clear_bit(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %13, %1
  %34 = load i32, i32* %2, align 4
  %35 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %36 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %37)
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %41 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %47 = load i32, i32* %2, align 4
  %48 = call i32 @o2quo_set_hold(%struct.o2quo_state* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %33
  %50 = load %struct.o2quo_state*, %struct.o2quo_state** %3, align 8
  %51 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock(i32* %51)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, i64) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i64) #1

declare dso_local i32 @o2quo_set_hold(%struct.o2quo_state*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
