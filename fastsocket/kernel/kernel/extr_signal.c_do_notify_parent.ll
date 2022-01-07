; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_notify_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_signal.c_do_notify_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_8__*, i32, i32, %struct.task_struct* }
%struct.TYPE_11__ = type { %struct.sighand_struct* }
%struct.sighand_struct = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.siginfo = type { i32, i32, i32, i8*, i8*, i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@CLD_DUMPED = common dso_local global i32 0, align 4
@CLD_KILLED = common dso_local global i32 0, align 4
@CLD_EXITED = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@SA_NOCLDWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_notify_parent(%struct.task_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.siginfo, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sighand_struct*, align 8
  %8 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = call i32 @task_is_stopped_or_traced(%struct.task_struct* %14)
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %18 = call i32 @task_ptrace(%struct.task_struct* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %2
  %21 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 6
  %23 = load %struct.task_struct*, %struct.task_struct** %22, align 8
  %24 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %25 = icmp ne %struct.task_struct* %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %28 = call i32 @thread_group_empty(%struct.task_struct* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %20
  %32 = phi i1 [ true, %20 ], [ %30, %26 ]
  br label %33

33:                                               ; preds = %31, %2
  %34 = phi i1 [ false, %2 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = call i32 (...) @rcu_read_lock()
  %41 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %42 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %43 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %42, i32 0, i32 2
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = call i32 @task_active_pid_ns(%struct.TYPE_11__* %44)
  %46 = call i32 @task_pid_nr_ns(%struct.task_struct* %41, i32 %45)
  %47 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 6
  store i32 %46, i32* %47, align 4
  %48 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %49 = call %struct.TYPE_12__* @__task_cred(%struct.task_struct* %48)
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 5
  store i32 %51, i32* %52, align 8
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %55 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %58 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %57, i32 0, i32 3
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cputime_add(i32 %56, i32 %61)
  %63 = call i8* @cputime_to_clock_t(i32 %62)
  %64 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 4
  store i8* %63, i8** %64, align 8
  %65 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 3
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cputime_add(i32 %67, i32 %72)
  %74 = call i8* @cputime_to_clock_t(i32 %73)
  %75 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 3
  store i8* %74, i8** %75, align 8
  %76 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %77 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %78, 127
  %80 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 1
  store i32 %79, i32* %80, align 4
  %81 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %82 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, 128
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %33
  %87 = load i32, i32* @CLD_DUMPED, align 4
  %88 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  store i32 %87, i32* %88, align 8
  br label %107

89:                                               ; preds = %33
  %90 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 127
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32, i32* @CLD_KILLED, align 4
  %97 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  store i32 %96, i32* %97, align 8
  br label %106

98:                                               ; preds = %89
  %99 = load i32, i32* @CLD_EXITED, align 4
  %100 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 2
  store i32 %99, i32* %100, align 8
  %101 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %102 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = ashr i32 %103, 8
  %105 = getelementptr inbounds %struct.siginfo, %struct.siginfo* %5, i32 0, i32 1
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %98, %95
  br label %107

107:                                              ; preds = %106, %86
  %108 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %109 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.sighand_struct*, %struct.sighand_struct** %111, align 8
  store %struct.sighand_struct* %112, %struct.sighand_struct** %7, align 8
  %113 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %114 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %113, i32 0, i32 0
  %115 = load i64, i64* %6, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %118 = call i32 @task_ptrace(%struct.task_struct* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %168, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @SIGCHLD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %168

124:                                              ; preds = %120
  %125 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %126 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %125, i32 0, i32 1
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i32, i32* @SIGCHLD, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SIG_IGN, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %151, label %137

137:                                              ; preds = %124
  %138 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %139 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %138, i32 0, i32 1
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = load i32, i32* @SIGCHLD, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @SA_NOCLDWAIT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %168

151:                                              ; preds = %137, %124
  %152 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %153 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %152, i32 0, i32 1
  store i32 -1, i32* %153, align 4
  store i32 -1, i32* %8, align 4
  %154 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %155 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %154, i32 0, i32 1
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = load i32, i32* @SIGCHLD, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @SIG_IGN, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  store i32 -1, i32* %4, align 4
  br label %167

167:                                              ; preds = %166, %151
  br label %168

168:                                              ; preds = %167, %137, %120, %107
  %169 = load i32, i32* %4, align 4
  %170 = call i64 @valid_signal(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load i32, i32* %4, align 4
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %172
  %176 = load i32, i32* %4, align 4
  %177 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %178 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %177, i32 0, i32 2
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = call i32 @__group_send_sig_info(i32 %176, %struct.siginfo* %5, %struct.TYPE_11__* %179)
  br label %181

181:                                              ; preds = %175, %172, %168
  %182 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %183 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %184 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %183, i32 0, i32 2
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = call i32 @__wake_up_parent(%struct.task_struct* %182, %struct.TYPE_11__* %185)
  %187 = load %struct.sighand_struct*, %struct.sighand_struct** %7, align 8
  %188 = getelementptr inbounds %struct.sighand_struct, %struct.sighand_struct* %187, i32 0, i32 0
  %189 = load i64, i64* %6, align 8
  %190 = call i32 @spin_unlock_irqrestore(i32* %188, i64 %189)
  %191 = load i32, i32* %8, align 4
  ret i32 %191
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @task_is_stopped_or_traced(%struct.task_struct*) #1

declare dso_local i32 @task_ptrace(%struct.task_struct*) #1

declare dso_local i32 @thread_group_empty(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @task_pid_nr_ns(%struct.task_struct*, i32) #1

declare dso_local i32 @task_active_pid_ns(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_12__* @__task_cred(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i8* @cputime_to_clock_t(i32) #1

declare dso_local i32 @cputime_add(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @valid_signal(i32) #1

declare dso_local i32 @__group_send_sig_info(i32, %struct.siginfo*, %struct.TYPE_11__*) #1

declare dso_local i32 @__wake_up_parent(%struct.task_struct*, %struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
