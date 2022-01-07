; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_make_decision.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_quorum.c_o2quo_make_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2quo_state = type { i32, i32, i32, i32, i32 }
%struct.work_struct = type { i32 }

@o2quo_state = common dso_local global %struct.o2quo_state zeroinitializer, align 4
@O2NM_MAX_NODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"heartbeating: %d, connected: %d, lowest: %d (%sreachable)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@ML_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [123 x i8] c"fencing this node because it is only connected to %u nodes and %u is needed to make a quorum out of %u heartbeating nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [130 x i8] c"fencing this node because it is connected to a half-quorum of %u out of %u nodes which doesn't include the lowest active node %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @o2quo_make_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2quo_make_decision(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.o2quo_state*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.o2quo_state* @o2quo_state, %struct.o2quo_state** %7, align 8
  %8 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %9 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %12 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O2NM_MAX_NODES, align 4
  %15 = call i32 @find_first_bit(i32 %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @O2NM_MAX_NODES, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %22 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @test_bit(i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %27 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %30 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31, i32 %32, i8* %36)
  %38 = call i32 (...) @o2nm_this_node()
  %39 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %40 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @test_bit(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %25
  %45 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %46 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %25
  br label %118

50:                                               ; preds = %44
  %51 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %52 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %50
  %57 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %58 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = sdiv i32 %60, 2
  store i32 %61, i32* %3, align 4
  %62 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %63 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %56
  %68 = load i32, i32* @ML_ERROR, align 4
  %69 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %70 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %74 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %68, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i32 %75)
  store i32 1, i32* %6, align 4
  br label %77

77:                                               ; preds = %67, %56
  br label %117

78:                                               ; preds = %50
  %79 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %80 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 2
  store i32 %82, i32* %3, align 4
  %83 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %84 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* @ML_ERROR, align 4
  %90 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %91 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %95 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %89, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93, i32 %96)
  store i32 1, i32* %6, align 4
  br label %116

98:                                               ; preds = %78
  %99 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %100 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @ML_ERROR, align 4
  %109 = load i32, i32* %3, align 4
  %110 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %111 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %4, align 4
  %114 = call i32 (i32, i8*, i32, i32, i32, ...) @mlog(i32 %108, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %112, i32 %113)
  store i32 1, i32* %6, align 4
  br label %115

115:                                              ; preds = %107, %104, %98
  br label %116

116:                                              ; preds = %115, %88
  br label %117

117:                                              ; preds = %116, %77
  br label %118

118:                                              ; preds = %117, %49
  %119 = load %struct.o2quo_state*, %struct.o2quo_state** %7, align 8
  %120 = getelementptr inbounds %struct.o2quo_state, %struct.o2quo_state* %119, i32 0, i32 2
  %121 = call i32 @spin_unlock(i32* %120)
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = call i32 (...) @o2quo_fence_self()
  br label %126

126:                                              ; preds = %124, %118
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @o2nm_this_node(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @o2quo_fence_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
