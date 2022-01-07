; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_drti.c_dtrace_dof_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_drti.c_dtrace_dof_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@devnamep = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to open helper device %s\00", align 1
@DTRACEHIOC_REMOVE = common dso_local global i32 0, align 4
@gen = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"DTrace ioctl failed to remove DOF (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DTrace ioctl removed DOF (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dtrace_dof_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_dof_fini() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @devnamep, align 4
  %3 = load i32, i32* @O_RDWR, align 4
  %4 = call i32 @open64(i32 %2, i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @devnamep, align 4
  %8 = call i32 @dbg_printf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %23

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @DTRACEHIOC_REMOVE, align 4
  %12 = call i32 @ioctl(i32 %10, i32 %11, i32* @gen)
  store i32 %12, i32* @gen, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* @gen, align 4
  %16 = call i32 @dbg_printf(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  br label %20

17:                                               ; preds = %9
  %18 = load i32, i32* @gen, align 4
  %19 = call i32 @dbg_printf(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %17, %14
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @close(i32 %21)
  br label %23

23:                                               ; preds = %20, %6
  ret void
}

declare dso_local i32 @open64(i32, i32) #1

declare dso_local i32 @dbg_printf(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
