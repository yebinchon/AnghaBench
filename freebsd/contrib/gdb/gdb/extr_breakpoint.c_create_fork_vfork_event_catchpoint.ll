; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_fork_vfork_event_catchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_fork_vfork_event_catchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i32*, i64 }
%struct.breakpoint = type { i32, i64, i32, i32, i32*, i32*, i32*, i64 }

@breakpoint_count = common dso_local global i64 0, align 8
@bp_enabled = common dso_local global i32 0, align 4
@disp_del = common dso_local global i32 0, align 4
@disp_donttouch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @create_fork_vfork_event_catchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_fork_vfork_event_catchpoint(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symtab_and_line, align 8
  %8 = alloca %struct.breakpoint*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %9, align 4
  %10 = call i32 @init_sal(%struct.symtab_and_line* %7)
  %11 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 1
  store i32* null, i32** %12, align 8
  %13 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %7, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.breakpoint* @set_raw_breakpoint(%struct.symtab_and_line* byval(%struct.symtab_and_line) align 8 %7, i32 %14)
  store %struct.breakpoint* %15, %struct.breakpoint** %8, align 8
  %16 = load i64, i64* @breakpoint_count, align 8
  %17 = add nsw i64 %16, 1
  %18 = call i32 @set_breakpoint_count(i64 %17)
  %19 = load i64, i64* @breakpoint_count, align 8
  %20 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %21 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %20, i32 0, i32 7
  store i64 %19, i64* %21, align 8
  %22 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %23 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %22, i32 0, i32 6
  store i32* null, i32** %23, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %32

27:                                               ; preds = %3
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i32* @savestring(i8* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i32* [ null, %26 ], [ %31, %27 ]
  %34 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %35 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %34, i32 0, i32 5
  store i32* %33, i32** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %38 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %40 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %39, i32 0, i32 4
  store i32* null, i32** %40, align 8
  %41 = load i32, i32* @bp_enabled, align 4
  %42 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %43 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @disp_del, align 4
  br label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @disp_donttouch, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %53 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %55 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = load %struct.breakpoint*, %struct.breakpoint** %8, align 8
  %57 = call i32 @mention(%struct.breakpoint* %56)
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
