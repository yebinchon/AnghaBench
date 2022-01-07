; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_child_terminal_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_child_terminal_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"This GDB does not control a terminal.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Inferior's terminal status (currently saved by GDB):\0A\00", align 1
@tflags_inferior = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"File descriptor flags = \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"O_RDONLY\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"O_WRONLY\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"O_RDWR\00", align 1
@O_APPEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c" | O_APPEND\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" | 0x%x\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdin_serial = common dso_local global i32 0, align 4
@inferior_ttystate = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@O_ACCMODE = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_NDELAY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@inferior_process_group = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_terminal_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @gdb_has_a_terminal()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %47

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @tflags_inferior, align 4
  store i32 %12, i32* %5, align 4
  %13 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 131
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 128, label %18
    i32 129, label %20
  ]

16:                                               ; preds = %10
  %17 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %22

18:                                               ; preds = %10
  %19 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %22

20:                                               ; preds = %10
  %21 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %22

22:                                               ; preds = %10, %20, %18, %16
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -132
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @O_APPEND, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %22
  %32 = load i32, i32* @O_APPEND, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %43 = load i32, i32* @stdin_serial, align 4
  %44 = load i32, i32* @inferior_ttystate, align 4
  %45 = load i32, i32* @gdb_stdout, align 4
  %46 = call i32 @serial_print_tty_state(i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %41, %8
  ret void
}

declare dso_local i32 @gdb_has_a_terminal(...) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @serial_print_tty_state(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
