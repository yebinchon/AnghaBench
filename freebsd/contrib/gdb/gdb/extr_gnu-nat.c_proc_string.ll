; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_proc_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@proc_string.tid_str = internal global [80 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [11 x i8] c"process %d\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"thread %d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @proc_string(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %3 = load %struct.proc*, %struct.proc** %2, align 8
  %4 = call i64 @proc_is_task(%struct.proc* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load %struct.proc*, %struct.proc** %2, align 8
  %8 = getelementptr inbounds %struct.proc, %struct.proc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @proc_string.tid_str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.proc*, %struct.proc** %2, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.proc*, %struct.proc** %2, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MERGEPID(i32 %21, i32 0)
  %23 = call i32 @pid_to_thread_id(i32 %22)
  %24 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @proc_string.tid_str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %13, %6
  ret i8* getelementptr inbounds ([80 x i8], [80 x i8]* @proc_string.tid_str, i64 0, i64 0)
}

declare dso_local i64 @proc_is_task(%struct.proc*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #1

declare dso_local i32 @pid_to_thread_id(i32) #1

declare dso_local i32 @MERGEPID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
