; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_process_structure_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_process_structure_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i64, i32, %struct.die_info* }
%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32 }

@processing_current_prefix = common dso_local global i8* null, align 8
@DW_TAG_member = common dso_local global i64 0, align 8
@DW_TAG_variable = common dso_local global i64 0, align 8
@DW_TAG_inheritance = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @process_structure_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_structure_scope(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.die_info*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %8 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %9 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %8, i32 0, i32 0
  %10 = load %struct.objfile*, %struct.objfile** %9, align 8
  store %struct.objfile* %10, %struct.objfile** %5, align 8
  %11 = load i8*, i8** @processing_current_prefix, align 8
  store i8* %11, i8** %6, align 8
  %12 = load %struct.die_info*, %struct.die_info** %3, align 8
  %13 = getelementptr inbounds %struct.die_info, %struct.die_info* %12, i32 0, i32 2
  %14 = load %struct.die_info*, %struct.die_info** %13, align 8
  store %struct.die_info* %14, %struct.die_info** %7, align 8
  %15 = load %struct.die_info*, %struct.die_info** %3, align 8
  %16 = getelementptr inbounds %struct.die_info, %struct.die_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @TYPE_TAG_NAME(i32 %17)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.die_info*, %struct.die_info** %3, align 8
  %22 = getelementptr inbounds %struct.die_info, %struct.die_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @TYPE_TAG_NAME(i32 %23)
  store i8* %24, i8** @processing_current_prefix, align 8
  br label %25

25:                                               ; preds = %20, %2
  br label %26

26:                                               ; preds = %59, %25
  %27 = load %struct.die_info*, %struct.die_info** %7, align 8
  %28 = icmp ne %struct.die_info* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.die_info*, %struct.die_info** %7, align 8
  %31 = getelementptr inbounds %struct.die_info, %struct.die_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i1 [ false, %26 ], [ %33, %29 ]
  br i1 %35, label %36, label %62

36:                                               ; preds = %34
  %37 = load %struct.die_info*, %struct.die_info** %7, align 8
  %38 = getelementptr inbounds %struct.die_info, %struct.die_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DW_TAG_member, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %54, label %42

42:                                               ; preds = %36
  %43 = load %struct.die_info*, %struct.die_info** %7, align 8
  %44 = getelementptr inbounds %struct.die_info, %struct.die_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DW_TAG_variable, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load %struct.die_info*, %struct.die_info** %7, align 8
  %50 = getelementptr inbounds %struct.die_info, %struct.die_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @DW_TAG_inheritance, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %42, %36
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.die_info*, %struct.die_info** %7, align 8
  %57 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %58 = call i32 @process_die(%struct.die_info* %56, %struct.dwarf2_cu* %57)
  br label %59

59:                                               ; preds = %55, %54
  %60 = load %struct.die_info*, %struct.die_info** %7, align 8
  %61 = call %struct.die_info* @sibling_die(%struct.die_info* %60)
  store %struct.die_info* %61, %struct.die_info** %7, align 8
  br label %26

62:                                               ; preds = %34
  %63 = load %struct.die_info*, %struct.die_info** %3, align 8
  %64 = getelementptr inbounds %struct.die_info, %struct.die_info* %63, i32 0, i32 2
  %65 = load %struct.die_info*, %struct.die_info** %64, align 8
  %66 = icmp ne %struct.die_info* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %62
  %68 = load %struct.die_info*, %struct.die_info** %3, align 8
  %69 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %70 = call i32 @die_is_declaration(%struct.die_info* %68, %struct.dwarf2_cu* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.die_info*, %struct.die_info** %3, align 8
  %74 = load %struct.die_info*, %struct.die_info** %3, align 8
  %75 = getelementptr inbounds %struct.die_info, %struct.die_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %78 = call i32 @new_symbol(%struct.die_info* %73, i32 %76, %struct.dwarf2_cu* %77)
  br label %79

79:                                               ; preds = %72, %67, %62
  %80 = load i8*, i8** %6, align 8
  store i8* %80, i8** @processing_current_prefix, align 8
  ret void
}

declare dso_local i8* @TYPE_TAG_NAME(i32) #1

declare dso_local i32 @process_die(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

declare dso_local i32 @die_is_declaration(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @new_symbol(%struct.die_info*, i32, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
