; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hppa_pid_or_tid_to_str.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infttrace.c_hppa_pid_or_tid_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hppa_pid_or_tid_to_str.buf = internal global [100 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"thread %d (\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c")\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @hppa_pid_or_tid_to_str(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @PIDGET(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @is_process_id(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @child_pid_to_str(i32 %11)
  store i8* %12, i8** %2, align 8
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @pid_to_thread_id(i32 %14)
  %16 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hppa_pid_or_tid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i8* @hppa_tid_to_str(i32 %17)
  %19 = call i32 @strcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hppa_pid_or_tid_to_str.buf, i64 0, i64 0), i8* %18)
  %20 = call i32 @strcat(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hppa_pid_or_tid_to_str.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @hppa_pid_or_tid_to_str.buf, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %13, %10
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i32 @PIDGET(i32) #1

declare dso_local i64 @is_process_id(i32) #1

declare dso_local i8* @child_pid_to_str(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @pid_to_thread_id(i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i8* @hppa_tid_to_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
