; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_lexical_block_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_lexical_block_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i64, %struct.die_info* }
%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32 }
%struct.context_stack = type { i32*, i32, i32 }

@local_symbols = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_lexical_block_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_lexical_block_scope(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca %struct.context_stack*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.die_info*, align 8
  %10 = alloca i64, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %11 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %12 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %11, i32 0, i32 0
  %13 = load %struct.objfile*, %struct.objfile** %12, align 8
  store %struct.objfile* %13, %struct.objfile** %5, align 8
  %14 = load %struct.objfile*, %struct.objfile** %5, align 8
  %15 = getelementptr inbounds %struct.objfile, %struct.objfile* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.objfile*, %struct.objfile** %5, align 8
  %18 = call i32 @SECT_OFF_TEXT(%struct.objfile* %17)
  %19 = call i64 @ANOFFSET(i32 %16, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.die_info*, %struct.die_info** %3, align 8
  %21 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %22 = call i32 @dwarf2_get_pc_bounds(%struct.die_info* %20, i64* %7, i64* %8, %struct.dwarf2_cu* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %77

25:                                               ; preds = %2
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* %7, align 8
  %28 = add nsw i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add nsw i64 %30, %29
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @push_context(i32 0, i64 %32)
  %34 = load %struct.die_info*, %struct.die_info** %3, align 8
  %35 = getelementptr inbounds %struct.die_info, %struct.die_info* %34, i32 0, i32 1
  %36 = load %struct.die_info*, %struct.die_info** %35, align 8
  %37 = icmp ne %struct.die_info* %36, null
  br i1 %37, label %38, label %59

38:                                               ; preds = %25
  %39 = load %struct.die_info*, %struct.die_info** %3, align 8
  %40 = getelementptr inbounds %struct.die_info, %struct.die_info* %39, i32 0, i32 1
  %41 = load %struct.die_info*, %struct.die_info** %40, align 8
  store %struct.die_info* %41, %struct.die_info** %9, align 8
  br label %42

42:                                               ; preds = %52, %38
  %43 = load %struct.die_info*, %struct.die_info** %9, align 8
  %44 = icmp ne %struct.die_info* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.die_info*, %struct.die_info** %9, align 8
  %47 = getelementptr inbounds %struct.die_info, %struct.die_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i1 [ false, %42 ], [ %49, %45 ]
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  %53 = load %struct.die_info*, %struct.die_info** %9, align 8
  %54 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %55 = call i32 @process_die(%struct.die_info* %53, %struct.dwarf2_cu* %54)
  %56 = load %struct.die_info*, %struct.die_info** %9, align 8
  %57 = call %struct.die_info* @sibling_die(%struct.die_info* %56)
  store %struct.die_info* %57, %struct.die_info** %9, align 8
  br label %42

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %25
  %60 = call %struct.context_stack* (...) @pop_context()
  store %struct.context_stack* %60, %struct.context_stack** %6, align 8
  %61 = load i32*, i32** @local_symbols, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %65 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %68 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.objfile*, %struct.objfile** %5, align 8
  %72 = call i32 @finish_block(i32 0, i32** @local_symbols, i32 %66, i32 %69, i64 %70, %struct.objfile* %71)
  br label %73

73:                                               ; preds = %63, %59
  %74 = load %struct.context_stack*, %struct.context_stack** %6, align 8
  %75 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** @local_symbols, align 8
  br label %77

77:                                               ; preds = %73, %24
  ret void
}

declare dso_local i64 @ANOFFSET(i32, i32) #1

declare dso_local i32 @SECT_OFF_TEXT(%struct.objfile*) #1

declare dso_local i32 @dwarf2_get_pc_bounds(%struct.die_info*, i64*, i64*, %struct.dwarf2_cu*) #1

declare dso_local i32 @push_context(i32, i64) #1

declare dso_local i32 @process_die(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

declare dso_local %struct.context_stack* @pop_context(...) #1

declare dso_local i32 @finish_block(i32, i32**, i32, i32, i64, %struct.objfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
