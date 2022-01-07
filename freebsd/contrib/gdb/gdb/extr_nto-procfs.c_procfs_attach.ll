; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_nto-procfs.c_procfs_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"process-id to attach\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Attaching GDB to itself is not a good idea...\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Attaching to program `%s', %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Attaching to %s\0A\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@procfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @procfs_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procfs_attach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = call i32 @error_no_arg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @atoi(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (...) @getpid()
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %11
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %19
  %23 = call i64 @get_exec_file(i32 0)
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @pid_to_ptid(i32 %29)
  %31 = call i32 @target_pid_to_str(i32 %30)
  %32 = call i32 (i8*, i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %28, i32 %31)
  br label %40

33:                                               ; preds = %22
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @pid_to_ptid(i32 %34)
  %36 = call i32 @target_pid_to_str(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i8*, i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @gdb_stdout, align 4
  %42 = call i32 @gdb_flush(i32 %41)
  br label %43

43:                                               ; preds = %40, %19
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @pid_to_ptid(i32 %44)
  %46 = call i32 @do_attach(i32 %45)
  store i32 %46, i32* @inferior_ptid, align 4
  %47 = call i32 @push_target(i32* @procfs_ops)
  ret void
}

declare dso_local i32 @error_no_arg(i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @get_exec_file(i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*, ...) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @do_attach(i32) #1

declare dso_local i32 @push_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
