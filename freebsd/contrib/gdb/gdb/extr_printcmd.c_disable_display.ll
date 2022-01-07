; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_disable_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_disable_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, i64, %struct.display* }

@display_chain = common dso_local global %struct.display* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"No display number %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disable_display(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.display*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.display*, %struct.display** @display_chain, align 8
  store %struct.display* %4, %struct.display** %3, align 8
  br label %5

5:                                                ; preds = %18, %1
  %6 = load %struct.display*, %struct.display** %3, align 8
  %7 = icmp ne %struct.display* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %5
  %9 = load %struct.display*, %struct.display** %3, align 8
  %10 = getelementptr inbounds %struct.display, %struct.display* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = load %struct.display*, %struct.display** %3, align 8
  %16 = getelementptr inbounds %struct.display, %struct.display* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  br label %25

17:                                               ; preds = %8
  br label %18

18:                                               ; preds = %17
  %19 = load %struct.display*, %struct.display** %3, align 8
  %20 = getelementptr inbounds %struct.display, %struct.display* %19, i32 0, i32 2
  %21 = load %struct.display*, %struct.display** %20, align 8
  store %struct.display* %21, %struct.display** %3, align 8
  br label %5

22:                                               ; preds = %5
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %14
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
