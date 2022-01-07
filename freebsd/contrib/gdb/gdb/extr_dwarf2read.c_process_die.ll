; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_process_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_process_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32, i32*, i32* }
%struct.dwarf2_cu = type { i32 }

@processing_has_namespace_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @process_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_die(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %5 = load %struct.die_info*, %struct.die_info** %3, align 8
  %6 = getelementptr inbounds %struct.die_info, %struct.die_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %99 [
    i32 139, label %8
    i32 146, label %9
    i32 132, label %13
    i32 142, label %20
    i32 141, label %21
    i32 129, label %21
    i32 150, label %21
    i32 149, label %25
    i32 133, label %25
    i32 128, label %25
    i32 145, label %32
    i32 130, label %39
    i32 152, label %43
    i32 138, label %47
    i32 137, label %51
    i32 136, label %55
    i32 135, label %55
    i32 134, label %59
    i32 151, label %63
    i32 131, label %73
    i32 148, label %83
    i32 147, label %87
    i32 140, label %88
    i32 144, label %92
    i32 143, label %92
  ]

8:                                                ; preds = %2
  br label %103

9:                                                ; preds = %2
  %10 = load %struct.die_info*, %struct.die_info** %3, align 8
  %11 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %12 = call i32 @read_file_scope(%struct.die_info* %10, %struct.dwarf2_cu* %11)
  br label %103

13:                                               ; preds = %2
  %14 = load %struct.die_info*, %struct.die_info** %3, align 8
  %15 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %16 = call i32 @read_subroutine_type(%struct.die_info* %14, %struct.dwarf2_cu* %15)
  %17 = load %struct.die_info*, %struct.die_info** %3, align 8
  %18 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %19 = call i32 @read_func_scope(%struct.die_info* %17, %struct.dwarf2_cu* %18)
  br label %103

20:                                               ; preds = %2
  br label %103

21:                                               ; preds = %2, %2, %2
  %22 = load %struct.die_info*, %struct.die_info** %3, align 8
  %23 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %24 = call i32 @read_lexical_block_scope(%struct.die_info* %22, %struct.dwarf2_cu* %23)
  br label %103

25:                                               ; preds = %2, %2, %2
  %26 = load %struct.die_info*, %struct.die_info** %3, align 8
  %27 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %28 = call i32 @read_structure_type(%struct.die_info* %26, %struct.dwarf2_cu* %27)
  %29 = load %struct.die_info*, %struct.die_info** %3, align 8
  %30 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %31 = call i32 @process_structure_scope(%struct.die_info* %29, %struct.dwarf2_cu* %30)
  br label %103

32:                                               ; preds = %2
  %33 = load %struct.die_info*, %struct.die_info** %3, align 8
  %34 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %35 = call i32 @read_enumeration_type(%struct.die_info* %33, %struct.dwarf2_cu* %34)
  %36 = load %struct.die_info*, %struct.die_info** %3, align 8
  %37 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %38 = call i32 @process_enumeration_scope(%struct.die_info* %36, %struct.dwarf2_cu* %37)
  br label %103

39:                                               ; preds = %2
  %40 = load %struct.die_info*, %struct.die_info** %3, align 8
  %41 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %42 = call i32 @read_subroutine_type(%struct.die_info* %40, %struct.dwarf2_cu* %41)
  br label %103

43:                                               ; preds = %2
  %44 = load %struct.die_info*, %struct.die_info** %3, align 8
  %45 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %46 = call i32 @read_array_type(%struct.die_info* %44, %struct.dwarf2_cu* %45)
  br label %103

47:                                               ; preds = %2
  %48 = load %struct.die_info*, %struct.die_info** %3, align 8
  %49 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %50 = call i32 @read_tag_pointer_type(%struct.die_info* %48, %struct.dwarf2_cu* %49)
  br label %103

51:                                               ; preds = %2
  %52 = load %struct.die_info*, %struct.die_info** %3, align 8
  %53 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %54 = call i32 @read_tag_ptr_to_member_type(%struct.die_info* %52, %struct.dwarf2_cu* %53)
  br label %103

55:                                               ; preds = %2, %2
  %56 = load %struct.die_info*, %struct.die_info** %3, align 8
  %57 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %58 = call i32 @read_tag_reference_type(%struct.die_info* %56, %struct.dwarf2_cu* %57)
  br label %103

59:                                               ; preds = %2
  %60 = load %struct.die_info*, %struct.die_info** %3, align 8
  %61 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %62 = call i32 @read_tag_string_type(%struct.die_info* %60, %struct.dwarf2_cu* %61)
  br label %103

63:                                               ; preds = %2
  %64 = load %struct.die_info*, %struct.die_info** %3, align 8
  %65 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %66 = call i32 @read_base_type(%struct.die_info* %64, %struct.dwarf2_cu* %65)
  %67 = load %struct.die_info*, %struct.die_info** %3, align 8
  %68 = load %struct.die_info*, %struct.die_info** %3, align 8
  %69 = getelementptr inbounds %struct.die_info, %struct.die_info* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %72 = call i32 @new_symbol(%struct.die_info* %67, i32* %70, %struct.dwarf2_cu* %71)
  br label %103

73:                                               ; preds = %2
  %74 = load %struct.die_info*, %struct.die_info** %3, align 8
  %75 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %76 = call i32 @read_subrange_type(%struct.die_info* %74, %struct.dwarf2_cu* %75)
  %77 = load %struct.die_info*, %struct.die_info** %3, align 8
  %78 = load %struct.die_info*, %struct.die_info** %3, align 8
  %79 = getelementptr inbounds %struct.die_info, %struct.die_info* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %82 = call i32 @new_symbol(%struct.die_info* %77, i32* %80, %struct.dwarf2_cu* %81)
  br label %103

83:                                               ; preds = %2
  %84 = load %struct.die_info*, %struct.die_info** %3, align 8
  %85 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %86 = call i32 @read_common_block(%struct.die_info* %84, %struct.dwarf2_cu* %85)
  br label %103

87:                                               ; preds = %2
  br label %103

88:                                               ; preds = %2
  store i32 1, i32* @processing_has_namespace_info, align 4
  %89 = load %struct.die_info*, %struct.die_info** %3, align 8
  %90 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %91 = call i32 @read_namespace(%struct.die_info* %89, %struct.dwarf2_cu* %90)
  br label %103

92:                                               ; preds = %2, %2
  store i32 1, i32* @processing_has_namespace_info, align 4
  %93 = load %struct.die_info*, %struct.die_info** %3, align 8
  %94 = getelementptr inbounds %struct.die_info, %struct.die_info* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp eq i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @gdb_assert(i32 %97)
  br label %103

99:                                               ; preds = %2
  %100 = load %struct.die_info*, %struct.die_info** %3, align 8
  %101 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %102 = call i32 @new_symbol(%struct.die_info* %100, i32* null, %struct.dwarf2_cu* %101)
  br label %103

103:                                              ; preds = %99, %92, %88, %87, %83, %73, %63, %59, %55, %51, %47, %43, %39, %32, %25, %21, %20, %13, %9, %8
  ret void
}

declare dso_local i32 @read_file_scope(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_subroutine_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_func_scope(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_lexical_block_scope(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_structure_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @process_structure_scope(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_enumeration_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @process_enumeration_scope(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_array_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_pointer_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_ptr_to_member_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_reference_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_string_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_base_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @new_symbol(%struct.die_info*, i32*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_subrange_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_common_block(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_namespace(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
