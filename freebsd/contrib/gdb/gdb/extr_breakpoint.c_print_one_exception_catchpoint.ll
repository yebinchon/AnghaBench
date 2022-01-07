; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_print_one_exception_catchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_print_one_exception_catchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@addressprint = common dso_local global i64 0, align 8
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"exception throw\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"exception catch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.breakpoint*, i32*)* @print_one_exception_catchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_one_exception_catchpoint(%struct.breakpoint* %0, i32* %1) #0 {
  %3 = alloca %struct.breakpoint*, align 8
  %4 = alloca i32*, align 8
  store %struct.breakpoint* %0, %struct.breakpoint** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i64, i64* @addressprint, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = call i32 @annotate_field(i32 4)
  %9 = load i32, i32* @uiout, align 4
  %10 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %11 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ui_out_field_core_addr(i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %7, %2
  %17 = call i32 @annotate_field(i32 5)
  %18 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %19 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %25 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @strstr(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* @uiout, align 4
  %31 = call i32 @ui_out_field_string(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %35

32:                                               ; preds = %16
  %33 = load i32, i32* @uiout, align 4
  %34 = call i32 @ui_out_field_string(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  ret void
}

declare dso_local i32 @annotate_field(i32) #1

declare dso_local i32 @ui_out_field_core_addr(i32, i8*, i32) #1

declare dso_local i32* @strstr(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
