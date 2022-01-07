; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_resolve_pending_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_resolve_pending_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.breakpoint = type { i8*, i32, i32, i32, i32 }
%struct.symtabs_and_lines = type { i32 }
%struct.symtab_and_line = type { i32 }
%struct.ui_file = type { i32 }
%struct.lang_and_radix = type { i32, i32 }
%struct.cleanup = type { i32 }

@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@input_radix = common dso_local global i32 0, align 4
@do_restore_lang_radix_cleanup = common dso_local global i32 0, align 4
@GDB_RC_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Pending breakpoint \22%s\22 resolved\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.breakpoint*)* @resolve_pending_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_pending_breakpoint(%struct.breakpoint* %0) #0 {
  %2 = alloca %struct.breakpoint*, align 8
  %3 = alloca %struct.symtabs_and_lines, align 4
  %4 = alloca %struct.symtab_and_line, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ui_file*, align 8
  %12 = alloca %struct.lang_and_radix, align 4
  %13 = alloca %struct.cleanup*, align 8
  store %struct.breakpoint* %0, %struct.breakpoint** %2, align 8
  store i8** null, i8*** %5, align 8
  %14 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %15 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.lang_and_radix, %struct.lang_and_radix* %12, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @input_radix, align 4
  %22 = getelementptr inbounds %struct.lang_and_radix, %struct.lang_and_radix* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @do_restore_lang_radix_cleanup, align 4
  %24 = call %struct.cleanup* @make_cleanup(i32 %23, %struct.lang_and_radix* %12)
  store %struct.cleanup* %24, %struct.cleanup** %13, align 8
  %25 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %26 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @set_language(i32 %27)
  %29 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %30 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* @input_radix, align 4
  %32 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %33 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %36 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %39 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %42 = call i32 @break_command_1(i8* %34, i32 %37, i32 %40, %struct.breakpoint* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @GDB_RC_OK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %1
  %47 = load %struct.breakpoint*, %struct.breakpoint** %2, align 8
  %48 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @printf_filtered(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %1
  %52 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %53 = call i32 @do_cleanups(%struct.cleanup* %52)
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.lang_and_radix*) #1

declare dso_local i32 @set_language(i32) #1

declare dso_local i32 @break_command_1(i8*, i32, i32, %struct.breakpoint*) #1

declare dso_local i32 @printf_filtered(i8*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
