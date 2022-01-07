; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_wait_task_continued.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_wait_task_continued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wait_opts = type { i32, i64, i64, i32 }
%struct.task_struct = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@WCONTINUED = common dso_local global i32 0, align 4
@SIGNAL_STOP_CONTINUED = common dso_local global i32 0, align 4
@WNOWAIT = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@RUSAGE_BOTH = common dso_local global i32 0, align 4
@CLD_CONTINUED = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wait_opts*, %struct.task_struct*)* @wait_task_continued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_task_continued(%struct.wait_opts* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wait_opts*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wait_opts* %0, %struct.wait_opts** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %9 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %10 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @WCONTINUED, align 4
  %13 = and i32 %11, %12
  %14 = call i32 @unlikely(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %132

17:                                               ; preds = %2
  %18 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %132

27:                                               ; preds = %17
  %28 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @spin_lock_irq(i32* %31)
  %33 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %27
  %42 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  store i32 0, i32* %3, align 4
  br label %132

47:                                               ; preds = %27
  %48 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %49 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WNOWAIT, align 4
  %52 = and i32 %50, %51
  %53 = call i32 @unlikely(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @SIGNAL_STOP_CONTINUED, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %59 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %57
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %55, %47
  %65 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %66 = call %struct.TYPE_6__* @__task_cred(%struct.task_struct* %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %8, align 4
  %69 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %70 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock_irq(i32* %72)
  %74 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %75 = call i32 @task_pid_vnr(%struct.task_struct* %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %77 = call i32 @get_task_struct(%struct.task_struct* %76)
  %78 = call i32 @read_unlock(i32* @tasklist_lock)
  %79 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %80 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %118, label %83

83:                                               ; preds = %64
  %84 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %85 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %90 = load i32, i32* @RUSAGE_BOTH, align 4
  %91 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %92 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @getrusage(%struct.task_struct* %89, i32 %90, i64 %93)
  br label %96

95:                                               ; preds = %83
  br label %96

96:                                               ; preds = %95, %88
  %97 = phi i32 [ %94, %88 ], [ 0, %95 ]
  store i32 %97, i32* %6, align 4
  %98 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %99 = call i32 @put_task_struct(%struct.task_struct* %98)
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %96
  %103 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %104 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %109 = getelementptr inbounds %struct.wait_opts, %struct.wait_opts* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @put_user(i32 65535, i64 %110)
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %107, %102, %96
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %112
  br label %130

118:                                              ; preds = %64
  %119 = load %struct.wait_opts*, %struct.wait_opts** %4, align 8
  %120 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @CLD_CONTINUED, align 4
  %124 = load i32, i32* @SIGCONT, align 4
  %125 = call i32 @wait_noreap_copyout(%struct.wait_opts* %119, %struct.task_struct* %120, i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @BUG_ON(i32 %128)
  br label %130

130:                                              ; preds = %118, %117
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %41, %26, %16
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.TYPE_6__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @task_pid_vnr(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @getrusage(%struct.task_struct*, i32, i64) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @put_user(i32, i64) #1

declare dso_local i32 @wait_noreap_copyout(%struct.wait_opts*, %struct.task_struct*, i32, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
