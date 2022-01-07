; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_new_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_inflow.c_new_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inferior_thisrun_terminal = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@TIOCNOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_tty() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @inferior_thisrun_terminal, align 8
  %3 = icmp eq i8* %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %43

5:                                                ; preds = %0
  %6 = load i8*, i8** @inferior_thisrun_terminal, align 8
  %7 = load i32, i32* @O_RDWR, align 4
  %8 = call i32 @open(i8* %6, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %5
  %12 = load i8*, i8** @inferior_thisrun_terminal, align 8
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @print_sys_errmsg(i8* %12, i32 %13)
  %15 = call i32 @_exit(i32 1) #3
  unreachable

16:                                               ; preds = %5
  %17 = load i32, i32* %1, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = call i32 @close(i32 0)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @dup(i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %1, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = call i32 @close(i32 1)
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @dup(i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %1, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = call i32 @close(i32 2)
  %35 = load i32, i32* %1, align 4
  %36 = call i32 @dup(i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %1, align 4
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @close(i32 %41)
  br label %43

43:                                               ; preds = %4, %40, %37
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @print_sys_errmsg(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
