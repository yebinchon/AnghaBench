; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_exec_event_catchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_exec_event_catchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i32*, i64 }
%struct.breakpoint = type { i32, i32, i32, i32*, i32*, i32*, i64 }

@bp_catch_exec = common dso_local global i32 0, align 4
@breakpoint_count = common dso_local global i64 0, align 8
@bp_enabled = common dso_local global i32 0, align 4
@disp_del = common dso_local global i32 0, align 4
@disp_donttouch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_exec_event_catchpoint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.symtab_and_line, align 8
  %6 = alloca %struct.breakpoint*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 -1, i32* %7, align 4
  %8 = call i32 @init_sal(%struct.symtab_and_line* %5)
  %9 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %5, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @bp_catch_exec, align 4
  %13 = call %struct.breakpoint* @set_raw_breakpoint(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %5, i32 %12)
  store %struct.breakpoint* %13, %struct.breakpoint** %6, align 8
  %14 = load i64, i64* @breakpoint_count, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @set_breakpoint_count(i64 %15)
  %17 = load i64, i64* @breakpoint_count, align 8
  %18 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %19 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  %20 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %21 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %30

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strlen(i8* %27)
  %29 = call i32* @savestring(i8* %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %24
  %31 = phi i32* [ null, %24 ], [ %29, %25 ]
  %32 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %33 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %36 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %38 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %37, i32 0, i32 3
  store i32* null, i32** %38, align 8
  %39 = load i32, i32* @bp_enabled, align 4
  %40 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %41 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %30
  %45 = load i32, i32* @disp_del, align 4
  br label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @disp_donttouch, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %51 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.breakpoint*, %struct.breakpoint** %6, align 8
  %53 = call i32 @mention(%struct.breakpoint* %52)
  ret void
}

declare dso_local i32 @init_sal(%struct.symtab_and_line*) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8, i32) #1

declare dso_local i32 @set_breakpoint_count(i64) #1

declare dso_local i32* @savestring(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mention(%struct.breakpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
