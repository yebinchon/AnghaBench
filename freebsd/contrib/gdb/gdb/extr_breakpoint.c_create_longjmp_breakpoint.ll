; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_longjmp_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_longjmp_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.breakpoint = type { i32, i32, i32 }
%struct.minimal_symbol = type { i32 }

@bp_longjmp_resume = common dso_local global i32 0, align 4
@bp_longjmp = common dso_local global i32 0, align 4
@bp_disabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @create_longjmp_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_longjmp_breakpoint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.breakpoint*, align 8
  %4 = alloca %struct.minimal_symbol*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @bp_longjmp_resume, align 4
  %9 = call %struct.breakpoint* @create_internal_breakpoint(i32 0, i32 %8)
  store %struct.breakpoint* %9, %struct.breakpoint** %3, align 8
  br label %20

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call %struct.minimal_symbol* @lookup_minimal_symbol_text(i8* %11, i32* null)
  store %struct.minimal_symbol* %12, %struct.minimal_symbol** %4, align 8
  %13 = icmp eq %struct.minimal_symbol* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %33

15:                                               ; preds = %10
  %16 = load %struct.minimal_symbol*, %struct.minimal_symbol** %4, align 8
  %17 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol* %16)
  %18 = load i32, i32* @bp_longjmp, align 4
  %19 = call %struct.breakpoint* @create_internal_breakpoint(i32 %17, i32 %18)
  store %struct.breakpoint* %19, %struct.breakpoint** %3, align 8
  br label %20

20:                                               ; preds = %15, %7
  %21 = load i32, i32* @bp_disabled, align 4
  %22 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %23 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %25 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load i8*, i8** %2, align 8
  %30 = call i32 @xstrdup(i8* %29)
  %31 = load %struct.breakpoint*, %struct.breakpoint** %3, align 8
  %32 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %14, %28, %20
  ret void
}

declare dso_local %struct.breakpoint* @create_internal_breakpoint(i32, i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_text(i8*, i32*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.minimal_symbol*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
