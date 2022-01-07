; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_goto_actions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_output.c_goto_actions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nstates = common dso_local global i32 0, align 4
@Value_t = common dso_local global i32 0, align 4
@state_count = common dso_local global i32 0, align 4
@start_symbol = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dgoto\00", align 1
@nsyms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @goto_actions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goto_actions() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @nstates, align 4
  %5 = load i32, i32* @Value_t, align 4
  %6 = call i32 @NEW2(i32 %4, i32 %5)
  store i32 %6, i32* @state_count, align 4
  %7 = load i32, i32* @start_symbol, align 4
  %8 = add nsw i32 %7, 1
  %9 = call i32 @default_goto(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @start_int_table(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @start_symbol, align 4
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @save_column(i32 %13, i32 %14)
  store i32 10, i32* %2, align 4
  %16 = load i32, i32* @start_symbol, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %38, %0
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @nsyms, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = icmp sge i32 %23, 10
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @output_newline()
  store i32 1, i32* %2, align 4
  br label %30

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %27, %25
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @default_goto(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @output_int(i32 %33)
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @save_column(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %18

41:                                               ; preds = %18
  %42 = call i32 (...) @end_table()
  %43 = load i32, i32* @state_count, align 4
  %44 = call i32 @FREE(i32 %43)
  ret void
}

declare dso_local i32 @NEW2(i32, i32) #1

declare dso_local i32 @default_goto(i32) #1

declare dso_local i32 @start_int_table(i8*, i32) #1

declare dso_local i32 @save_column(i32, i32) #1

declare dso_local i32 @output_newline(...) #1

declare dso_local i32 @output_int(i32) #1

declare dso_local i32 @end_table(...) #1

declare dso_local i32 @FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
