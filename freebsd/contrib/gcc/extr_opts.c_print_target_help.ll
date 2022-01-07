; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_target_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_opts.c_print_target_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@print_target_help.displayed = internal global i32 0, align 4
@cl_options_count = common dso_local global i32 0, align 4
@cl_options = common dso_local global %struct.TYPE_2__* null, align 8
@CL_TARGET = common dso_local global i32 0, align 4
@CL_UNDOCUMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"\0ATarget specific options:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @print_target_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_target_help() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @print_target_help.displayed, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %32

5:                                                ; preds = %0
  store i32 1, i32* @print_target_help.displayed, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %29, %5
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @cl_options_count, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cl_options, align 8
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CL_TARGET, align 4
  %18 = load i32, i32* @CL_UNDOCUMENTED, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @CL_TARGET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %10
  %24 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @printf(i8* %24)
  %26 = load i32, i32* @CL_TARGET, align 4
  %27 = call i32 @print_filtered_help(i32 %26)
  br label %32

28:                                               ; preds = %10
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %1, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %6

32:                                               ; preds = %4, %23, %6
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @print_filtered_help(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
