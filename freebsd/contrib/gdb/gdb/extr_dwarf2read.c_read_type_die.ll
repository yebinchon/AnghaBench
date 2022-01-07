; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_type_die.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_read_type_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32 }
%struct.dwarf2_cu = type { i32 }
%struct.cleanup = type { i32 }

@processing_current_prefix = common dso_local global i8* null, align 8
@xfree = common dso_local global i32 0, align 4
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unexepected tag in read_type_die: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.die_info*, %struct.dwarf2_cu*)* @read_type_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_type_die(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  %8 = load %struct.die_info*, %struct.die_info** %3, align 8
  %9 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %10 = call i8* @determine_prefix(%struct.die_info* %8, %struct.dwarf2_cu* %9)
  store i8* %10, i8** %5, align 8
  %11 = load i8*, i8** @processing_current_prefix, align 8
  store i8* %11, i8** %6, align 8
  %12 = load i32, i32* @xfree, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct.cleanup* @make_cleanup(i32 %12, i8* %13)
  store %struct.cleanup* %14, %struct.cleanup** %7, align 8
  %15 = load i8*, i8** %5, align 8
  store i8* %15, i8** @processing_current_prefix, align 8
  %16 = load %struct.die_info*, %struct.die_info** %3, align 8
  %17 = getelementptr inbounds %struct.die_info, %struct.die_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %79 [
    i32 144, label %19
    i32 135, label %19
    i32 130, label %19
    i32 142, label %23
    i32 134, label %27
    i32 132, label %27
    i32 146, label %31
    i32 141, label %35
    i32 129, label %39
    i32 140, label %43
    i32 139, label %47
    i32 137, label %47
    i32 143, label %51
    i32 128, label %55
    i32 138, label %59
    i32 136, label %63
    i32 131, label %67
    i32 133, label %71
    i32 145, label %75
  ]

19:                                               ; preds = %2, %2, %2
  %20 = load %struct.die_info*, %struct.die_info** %3, align 8
  %21 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %22 = call i32 @read_structure_type(%struct.die_info* %20, %struct.dwarf2_cu* %21)
  br label %85

23:                                               ; preds = %2
  %24 = load %struct.die_info*, %struct.die_info** %3, align 8
  %25 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %26 = call i32 @read_enumeration_type(%struct.die_info* %24, %struct.dwarf2_cu* %25)
  br label %85

27:                                               ; preds = %2, %2
  %28 = load %struct.die_info*, %struct.die_info** %3, align 8
  %29 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %30 = call i32 @read_subroutine_type(%struct.die_info* %28, %struct.dwarf2_cu* %29)
  br label %85

31:                                               ; preds = %2
  %32 = load %struct.die_info*, %struct.die_info** %3, align 8
  %33 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %34 = call i32 @read_array_type(%struct.die_info* %32, %struct.dwarf2_cu* %33)
  br label %85

35:                                               ; preds = %2
  %36 = load %struct.die_info*, %struct.die_info** %3, align 8
  %37 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %38 = call i32 @read_tag_pointer_type(%struct.die_info* %36, %struct.dwarf2_cu* %37)
  br label %85

39:                                               ; preds = %2
  %40 = load %struct.die_info*, %struct.die_info** %3, align 8
  %41 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %42 = call i32 @read_tag_unspecified_type(%struct.die_info* %40, %struct.dwarf2_cu* %41)
  br label %85

43:                                               ; preds = %2
  %44 = load %struct.die_info*, %struct.die_info** %3, align 8
  %45 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %46 = call i32 @read_tag_ptr_to_member_type(%struct.die_info* %44, %struct.dwarf2_cu* %45)
  br label %85

47:                                               ; preds = %2, %2
  %48 = load %struct.die_info*, %struct.die_info** %3, align 8
  %49 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %50 = call i32 @read_tag_reference_type(%struct.die_info* %48, %struct.dwarf2_cu* %49)
  br label %85

51:                                               ; preds = %2
  %52 = load %struct.die_info*, %struct.die_info** %3, align 8
  %53 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %54 = call i32 @read_tag_const_type(%struct.die_info* %52, %struct.dwarf2_cu* %53)
  br label %85

55:                                               ; preds = %2
  %56 = load %struct.die_info*, %struct.die_info** %3, align 8
  %57 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %58 = call i32 @read_tag_volatile_type(%struct.die_info* %56, %struct.dwarf2_cu* %57)
  br label %85

59:                                               ; preds = %2
  %60 = load %struct.die_info*, %struct.die_info** %3, align 8
  %61 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %62 = call i32 @read_tag_restrict_type(%struct.die_info* %60, %struct.dwarf2_cu* %61)
  br label %85

63:                                               ; preds = %2
  %64 = load %struct.die_info*, %struct.die_info** %3, align 8
  %65 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %66 = call i32 @read_tag_string_type(%struct.die_info* %64, %struct.dwarf2_cu* %65)
  br label %85

67:                                               ; preds = %2
  %68 = load %struct.die_info*, %struct.die_info** %3, align 8
  %69 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %70 = call i32 @read_typedef(%struct.die_info* %68, %struct.dwarf2_cu* %69)
  br label %85

71:                                               ; preds = %2
  %72 = load %struct.die_info*, %struct.die_info** %3, align 8
  %73 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %74 = call i32 @read_subrange_type(%struct.die_info* %72, %struct.dwarf2_cu* %73)
  br label %85

75:                                               ; preds = %2
  %76 = load %struct.die_info*, %struct.die_info** %3, align 8
  %77 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %78 = call i32 @read_base_type(%struct.die_info* %76, %struct.dwarf2_cu* %77)
  br label %85

79:                                               ; preds = %2
  %80 = load %struct.die_info*, %struct.die_info** %3, align 8
  %81 = getelementptr inbounds %struct.die_info, %struct.die_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dwarf_tag_name(i32 %82)
  %84 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19
  %86 = load i8*, i8** %6, align 8
  store i8* %86, i8** @processing_current_prefix, align 8
  %87 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %88 = call i32 @do_cleanups(%struct.cleanup* %87)
  ret void
}

declare dso_local i8* @determine_prefix(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i32 @read_structure_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_enumeration_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_subroutine_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_array_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_pointer_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_unspecified_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_ptr_to_member_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_reference_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_const_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_volatile_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_restrict_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_tag_string_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_typedef(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_subrange_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @read_base_type(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i32 @complaint(i32*, i8*, i32) #1

declare dso_local i32 @dwarf_tag_name(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
