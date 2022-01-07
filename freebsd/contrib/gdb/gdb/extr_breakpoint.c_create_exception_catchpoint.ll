; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_exception_catchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_create_exception_catchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i32 }
%struct.breakpoint = type { i32, i32, i32, i32*, i32*, i32*, i64 }

@bp_catch_throw = common dso_local global i32 0, align 4
@bp_catch_catch = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Internal error -- invalid catchpoint kind\00", align 1
@breakpoint_count = common dso_local global i64 0, align 8
@bp_enabled = common dso_local global i32 0, align 4
@disp_del = common dso_local global i32 0, align 4
@disp_donttouch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32, %struct.symtab_and_line*)* @create_exception_catchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_exception_catchpoint(i32 %0, i8* %1, i32 %2, %struct.symtab_and_line* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.symtab_and_line*, align 8
  %9 = alloca %struct.breakpoint*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.symtab_and_line* %3, %struct.symtab_and_line** %8, align 8
  store i32 -1, i32* %10, align 4
  %12 = load %struct.symtab_and_line*, %struct.symtab_and_line** %8, align 8
  %13 = icmp ne %struct.symtab_and_line* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %69

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %21 [
    i32 128, label %17
    i32 129, label %19
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @bp_catch_throw, align 4
  store i32 %18, i32* %11, align 4
  br label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @bp_catch_catch, align 4
  store i32 %20, i32* %11, align 4
  br label %23

21:                                               ; preds = %15
  %22 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %19, %17
  %24 = load %struct.symtab_and_line*, %struct.symtab_and_line** %8, align 8
  %25 = load i32, i32* %11, align 4
  %26 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %24, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.breakpoint* @set_raw_breakpoint(i32 %27, i32 %25)
  store %struct.breakpoint* %28, %struct.breakpoint** %9, align 8
  %29 = load i64, i64* @breakpoint_count, align 8
  %30 = add nsw i64 %29, 1
  %31 = call i32 @set_breakpoint_count(i64 %30)
  %32 = load i64, i64* @breakpoint_count, align 8
  %33 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %34 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %33, i32 0, i32 6
  store i64 %32, i64* %34, align 8
  %35 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %36 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %35, i32 0, i32 5
  store i32* null, i32** %36, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  br label %45

40:                                               ; preds = %23
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @strlen(i8* %42)
  %44 = call i32* @savestring(i8* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %39
  %46 = phi i32* [ null, %39 ], [ %44, %40 ]
  %47 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %48 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %47, i32 0, i32 4
  store i32* %46, i32** %48, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %51 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %53 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @bp_enabled, align 4
  %55 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %56 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @disp_del, align 4
  br label %63

61:                                               ; preds = %45
  %62 = load i32, i32* @disp_donttouch, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %66 = getelementptr inbounds %struct.breakpoint, %struct.breakpoint* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.breakpoint*, %struct.breakpoint** %9, align 8
  %68 = call i32 @mention(%struct.breakpoint* %67)
  br label %69

69:                                               ; preds = %63, %14
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.breakpoint* @set_raw_breakpoint(i32, i32) #1

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
