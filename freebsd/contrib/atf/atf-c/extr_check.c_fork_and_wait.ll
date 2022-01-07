; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_fork_and_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/atf/atf-c/extr_check.c_fork_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exec_data = type { i8** }

@exec_child = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*, i32*, i32*)* @fork_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fork_and_wait(i8** %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.exec_data, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = getelementptr inbounds %struct.exec_data, %struct.exec_data* %13, i32 0, i32 0
  %15 = load i8**, i8*** %5, align 8
  store i8** %15, i8*** %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @init_sbs(i32* %16, i32* %11, i32* %17, i32* %12)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i64 @atf_is_error(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %36

23:                                               ; preds = %4
  %24 = load i32, i32* @exec_child, align 4
  %25 = call i32 @atf_process_fork(i32* %10, i32 %24, i32* %11, i32* %12, %struct.exec_data* %13)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @atf_is_error(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %33

30:                                               ; preds = %23
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @atf_process_child_wait(i32* %10, i32* %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %29
  %34 = call i32 @atf_process_stream_fini(i32* %12)
  %35 = call i32 @atf_process_stream_fini(i32* %11)
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @init_sbs(i32*, i32*, i32*, i32*) #1

declare dso_local i64 @atf_is_error(i32) #1

declare dso_local i32 @atf_process_fork(i32*, i32, i32*, i32*, %struct.exec_data*) #1

declare dso_local i32 @atf_process_child_wait(i32*, i32*) #1

declare dso_local i32 @atf_process_stream_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
