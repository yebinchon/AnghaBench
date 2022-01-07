; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386fbsd-nat.c_child_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386fbsd-nat.c_child_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PT_STEP = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@current_regcache = common dso_local global i32 0, align 4
@I386_EFLAGS_REGNUM = common dso_local global i32 0, align 4
@PT_CONTINUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ptrace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ptid_get_pid(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @PT_STEP, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @inferior_ptid, align 4
  %17 = call i32 @ptid_get_pid(i32 %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %15, %3
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @current_regcache, align 4
  %23 = load i32, i32* @I386_EFLAGS_REGNUM, align 4
  %24 = call i32 @regcache_cooked_read_unsigned(i32 %22, i32 %23, i32* %9)
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, 256
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load i32, i32* @current_regcache, align 4
  %30 = load i32, i32* @I386_EFLAGS_REGNUM, align 4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, -257
  %33 = call i32 @regcache_cooked_write_unsigned(i32 %29, i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* @PT_CONTINUE, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @target_signal_to_host(i32 %39)
  %41 = call i32 @ptrace(i32 %37, i32 %38, i32 1, i32 %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = call i32 @perror_with_name(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @ptid_get_pid(i32) #1

declare dso_local i32 @regcache_cooked_read_unsigned(i32, i32, i32*) #1

declare dso_local i32 @regcache_cooked_write_unsigned(i32, i32, i32) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @target_signal_to_host(i32) #1

declare dso_local i32 @perror_with_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
