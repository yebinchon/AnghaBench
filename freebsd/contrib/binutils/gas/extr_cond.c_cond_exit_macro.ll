; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_cond_exit_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_cond.c_cond_exit_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conditional_frame = type { i32, %struct.conditional_frame* }

@current_cframe = common dso_local global %struct.conditional_frame* null, align 8
@cond_obstack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cond_exit_macro(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conditional_frame*, align 8
  store i32 %0, i32* %2, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load %struct.conditional_frame*, %struct.conditional_frame** @current_cframe, align 8
  %6 = icmp ne %struct.conditional_frame* %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load %struct.conditional_frame*, %struct.conditional_frame** @current_cframe, align 8
  %9 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %2, align 4
  %12 = icmp sge i32 %10, %11
  br label %13

13:                                               ; preds = %7, %4
  %14 = phi i1 [ false, %4 ], [ %12, %7 ]
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = load %struct.conditional_frame*, %struct.conditional_frame** @current_cframe, align 8
  store %struct.conditional_frame* %16, %struct.conditional_frame** %3, align 8
  %17 = load %struct.conditional_frame*, %struct.conditional_frame** @current_cframe, align 8
  %18 = getelementptr inbounds %struct.conditional_frame, %struct.conditional_frame* %17, i32 0, i32 1
  %19 = load %struct.conditional_frame*, %struct.conditional_frame** %18, align 8
  store %struct.conditional_frame* %19, %struct.conditional_frame** @current_cframe, align 8
  %20 = load %struct.conditional_frame*, %struct.conditional_frame** %3, align 8
  %21 = call i32 @obstack_free(i32* @cond_obstack, %struct.conditional_frame* %20)
  br label %4

22:                                               ; preds = %13
  ret void
}

declare dso_local i32 @obstack_free(i32*, %struct.conditional_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
