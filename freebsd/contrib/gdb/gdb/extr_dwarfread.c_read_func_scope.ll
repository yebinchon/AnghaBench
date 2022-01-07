; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_func_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarfread.c_read_func_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dieinfo = type { i64, i64, i32, i32* }
%struct.objfile = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.context_stack = type { i32, i32, i32 }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DIE @ 0x%x, AT_name tag missing\00", align 1
@DIE_ID = common dso_local global i32 0, align 4
@local_symbols = common dso_local global i32 0, align 4
@list_in_scope = common dso_local global i32* null, align 8
@file_symbols = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dieinfo*, i8*, i8*, %struct.objfile*)* @read_func_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_func_scope(%struct.dieinfo* %0, i8* %1, i8* %2, %struct.objfile* %3) #0 {
  %5 = alloca %struct.dieinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %struct.context_stack*, align 8
  store %struct.dieinfo* %0, %struct.dieinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.objfile* %3, %struct.objfile** %8, align 8
  %10 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %11 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @DIE_ID, align 4
  %16 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %82

17:                                               ; preds = %4
  %18 = load %struct.objfile*, %struct.objfile** %8, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %23 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load %struct.objfile*, %struct.objfile** %8, align 8
  %28 = getelementptr inbounds %struct.objfile, %struct.objfile* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %32 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %37 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.objfile*, %struct.objfile** %8, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %38, i64* %41, align 8
  %42 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %43 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.objfile*, %struct.objfile** %8, align 8
  %46 = getelementptr inbounds %struct.objfile, %struct.objfile* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %35, %26, %17
  %49 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %50 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.context_stack* @push_context(i32 0, i64 %51)
  store %struct.context_stack* %52, %struct.context_stack** %9, align 8
  %53 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %54 = load %struct.objfile*, %struct.objfile** %8, align 8
  %55 = call i32 @new_symbol(%struct.dieinfo* %53, %struct.objfile* %54)
  %56 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %57 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  store i32* @local_symbols, i32** @list_in_scope, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %60 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.objfile*, %struct.objfile** %8, align 8
  %66 = call i32 @process_dies(i8* %63, i8* %64, %struct.objfile* %65)
  %67 = call %struct.context_stack* (...) @pop_context()
  store %struct.context_stack* %67, %struct.context_stack** %9, align 8
  %68 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %69 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %72 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.context_stack*, %struct.context_stack** %9, align 8
  %75 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dieinfo*, %struct.dieinfo** %5, align 8
  %78 = getelementptr inbounds %struct.dieinfo, %struct.dieinfo* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.objfile*, %struct.objfile** %8, align 8
  %81 = call i32 @finish_block(i32 %70, i32* @local_symbols, i32 %73, i32 %76, i64 %79, %struct.objfile* %80)
  store i32* @file_symbols, i32** @list_in_scope, align 8
  br label %82

82:                                               ; preds = %48, %14
  ret void
}

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local %struct.context_stack* @push_context(i32, i64) #1

declare dso_local i32 @new_symbol(%struct.dieinfo*, %struct.objfile*) #1

declare dso_local i32 @process_dies(i8*, i8*, %struct.objfile*) #1

declare dso_local %struct.context_stack* @pop_context(...) #1

declare dso_local i32 @finish_block(i32, i32*, i32, i32, i64, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
