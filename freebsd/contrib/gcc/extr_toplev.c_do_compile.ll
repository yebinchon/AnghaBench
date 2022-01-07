; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_do_compile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_toplev.c_do_compile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_report = common dso_local global i64 0, align 8
@quiet_flag = common dso_local global i32 0, align 4
@flag_detailed_statistics = common dso_local global i64 0, align 8
@TV_TOTAL = common dso_local global i32 0, align 4
@errorcount = common dso_local global i32 0, align 4
@no_backend = common dso_local global i32 0, align 4
@main_input_filename = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_compile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compile() #0 {
  %1 = load i64, i64* @time_report, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @quiet_flag, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i64, i64* @flag_detailed_statistics, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6, %3, %0
  %10 = call i32 (...) @timevar_init()
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, i32* @TV_TOTAL, align 4
  %13 = call i32 @timevar_start(i32 %12)
  %14 = call i32 (...) @process_options()
  %15 = load i32, i32* @errorcount, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %11
  %18 = call i32 (...) @init_adjust_machine_modes()
  %19 = load i32, i32* @no_backend, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @backend_init()
  br label %23

23:                                               ; preds = %21, %17
  %24 = load i32, i32* @main_input_filename, align 4
  %25 = call i64 @lang_dependent_init(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 (...) @compile_file()
  br label %29

29:                                               ; preds = %27, %23
  %30 = call i32 (...) @finalize()
  br label %31

31:                                               ; preds = %29, %11
  %32 = load i32, i32* @TV_TOTAL, align 4
  %33 = call i32 @timevar_stop(i32 %32)
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 @timevar_print(i32 %34)
  ret void
}

declare dso_local i32 @timevar_init(...) #1

declare dso_local i32 @timevar_start(i32) #1

declare dso_local i32 @process_options(...) #1

declare dso_local i32 @init_adjust_machine_modes(...) #1

declare dso_local i32 @backend_init(...) #1

declare dso_local i64 @lang_dependent_init(i32) #1

declare dso_local i32 @compile_file(...) #1

declare dso_local i32 @finalize(...) #1

declare dso_local i32 @timevar_stop(i32) #1

declare dso_local i32 @timevar_print(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
