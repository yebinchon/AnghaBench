; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_seccomp.c___secure_computing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_seccomp.c___secure_computing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@mode1_syscalls = common dso_local global i32* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
@mode1_syscalls_32 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__secure_computing(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %25 [
    i32 1, label %10
  ]

10:                                               ; preds = %1
  %11 = load i32*, i32** @mode1_syscalls, align 8
  store i32* %11, i32** %4, align 8
  br label %12

12:                                               ; preds = %19, %10
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %30

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %12, label %24

24:                                               ; preds = %19
  br label %27

25:                                               ; preds = %1
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %25, %24
  %28 = load i32, i32* @SIGKILL, align 4
  %29 = call i32 @do_exit(i32 %28)
  br label %30

30:                                               ; preds = %27, %17
  ret void
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
