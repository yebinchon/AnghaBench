; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_procfs.c_procfs_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Detaching from program: %s %s\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@null_ptid = common dso_local global i32 0, align 4
@procfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @procfs_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procfs_detach(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = call i8* @get_exec_file(i32 0)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %9
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* @inferior_ptid, align 4
  %17 = call i32 @target_pid_to_str(i32 %16)
  %18 = call i32 @printf_filtered(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %15, i32 %17)
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  br label %21

21:                                               ; preds = %14, %2
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @do_detach(i32 %28)
  %30 = load i32, i32* @null_ptid, align 4
  store i32 %30, i32* @inferior_ptid, align 4
  %31 = call i32 @unpush_target(i32* @procfs_ops)
  ret void
}

declare dso_local i8* @get_exec_file(i32) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i32) #1

declare dso_local i32 @target_pid_to_str(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @do_detach(i32) #1

declare dso_local i32 @unpush_target(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
