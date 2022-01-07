; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tsacct.c_bacct_add_tsk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_tsacct.c_bacct_add_tsk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskstats = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.task_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cred = type { i32, i32 }
%struct.timespec = type { i64 }
%struct.TYPE_2__ = type { i32 }

@TS_COMM_LEN = common dso_local global i64 0, align 8
@TASK_COMM_LEN = common dso_local global i64 0, align 8
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@PF_FORKNOEXEC = common dso_local global i32 0, align 4
@AFORK = common dso_local global i32 0, align 4
@PF_SUPERPRIV = common dso_local global i32 0, align 4
@ASU = common dso_local global i32 0, align 4
@PF_DUMPCORE = common dso_local global i32 0, align 4
@ACORE = common dso_local global i32 0, align 4
@PF_SIGNALED = common dso_local global i32 0, align 4
@AXSIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bacct_add_tsk(%struct.taskstats* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.taskstats*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.timespec, align 8
  store %struct.taskstats* %0, %struct.taskstats** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %10 = load i64, i64* @TS_COMM_LEN, align 8
  %11 = load i64, i64* @TASK_COMM_LEN, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = call i32 @do_posix_clock_monotonic_gettime(%struct.timespec* %6)
  %16 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %17 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @timespec_sub(i64 %20, i32 %18)
  %22 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = bitcast %struct.timespec* %7 to i8*
  %24 = bitcast %struct.timespec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 8, i1 false)
  %25 = call i32 @timespec_to_ns(%struct.timespec* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NSEC_PER_USEC, align 4
  %28 = call i32 @do_div(i32 %26, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %31 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %30, i32 0, i32 16
  store i32 %29, i32* %31, align 8
  %32 = call i64 (...) @get_seconds()
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %32, %34
  %36 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %37 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %36, i32 0, i32 15
  store i64 %35, i64* %37, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %39 = call i64 @thread_group_leader(%struct.task_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %2
  %42 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %46 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %45, i32 0, i32 14
  store i32 %44, i32* %46, align 4
  %47 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %48 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @PF_FORKNOEXEC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %41
  %54 = load i32, i32* @AFORK, align 4
  %55 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %56 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %53, %41
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %62 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PF_SUPERPRIV, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @ASU, align 4
  %69 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %70 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %75 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PF_DUMPCORE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @ACORE, align 4
  %82 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %83 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %73
  %87 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %88 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PF_SIGNALED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load i32, i32* @AXSIG, align 4
  %95 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %96 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %86
  %100 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %101 = call i32 @task_nice(%struct.task_struct* %100)
  %102 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %103 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %102, i32 0, i32 12
  store i32 %101, i32* %103, align 4
  %104 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %105 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %104, i32 0, i32 10
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %108 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 8
  %109 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %110 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %109, i32 0, i32 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %113 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %112, i32 0, i32 10
  store i32 %111, i32* %113, align 4
  %114 = call i32 (...) @rcu_read_lock()
  %115 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %116 = call %struct.cred* @__task_cred(%struct.task_struct* %115)
  store %struct.cred* %116, %struct.cred** %5, align 8
  %117 = load %struct.cred*, %struct.cred** %5, align 8
  %118 = getelementptr inbounds %struct.cred, %struct.cred* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %121 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 8
  %122 = load %struct.cred*, %struct.cred** %5, align 8
  %123 = getelementptr inbounds %struct.cred, %struct.cred* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %126 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  %127 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %128 = call i64 @pid_alive(%struct.task_struct* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %99
  %131 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %132 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.TYPE_2__* @rcu_dereference(i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  br label %138

137:                                              ; preds = %99
  br label %138

138:                                              ; preds = %137, %130
  %139 = phi i32 [ %136, %130 ], [ 0, %137 ]
  %140 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %141 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %140, i32 0, i32 7
  store i32 %139, i32* %141, align 8
  %142 = call i32 (...) @rcu_read_unlock()
  %143 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %144 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %143, i32 0, i32 7
  %145 = load i32, i32* %144, align 4
  %146 = call i8* @cputime_to_usecs(i32 %145)
  %147 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %148 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %147, i32 0, i32 6
  store i8* %146, i8** %148, align 8
  %149 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %150 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @cputime_to_usecs(i32 %151)
  %153 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %154 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %153, i32 0, i32 5
  store i8* %152, i8** %154, align 8
  %155 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %156 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = call i8* @cputime_to_usecs(i32 %157)
  %159 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %160 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %159, i32 0, i32 4
  store i8* %158, i8** %160, align 8
  %161 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %162 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = call i8* @cputime_to_usecs(i32 %163)
  %165 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %166 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  %167 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %168 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %171 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %173 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %176 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load %struct.taskstats*, %struct.taskstats** %3, align 8
  %178 = getelementptr inbounds %struct.taskstats, %struct.taskstats* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %181 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @strncpy(i32 %179, i32 %182, i32 4)
  ret void
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @do_posix_clock_monotonic_gettime(%struct.timespec*) #1

declare dso_local i64 @timespec_sub(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @timespec_to_ns(%struct.timespec*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i64 @thread_group_leader(%struct.task_struct*) #1

declare dso_local i32 @task_nice(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.cred* @__task_cred(%struct.task_struct*) #1

declare dso_local i64 @pid_alive(%struct.task_struct*) #1

declare dso_local %struct.TYPE_2__* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @cputime_to_usecs(i32) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
