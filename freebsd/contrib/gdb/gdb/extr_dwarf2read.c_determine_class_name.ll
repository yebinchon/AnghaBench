; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_determine_class_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_determine_class_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i64, %struct.die_info* }
%struct.dwarf2_cu = type { i32 }
%struct.cleanup = type { i32 }

@processing_current_prefix = common dso_local global i8* null, align 8
@xfree = common dso_local global i32 0, align 4
@processing_has_namespace_info = common dso_local global i32 0, align 4
@DW_TAG_subprogram = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"<<anonymous>>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.die_info*, %struct.dwarf2_cu*)* @determine_class_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @determine_class_name(%struct.die_info* %0, %struct.dwarf2_cu* %1) #0 {
  %3 = alloca %struct.die_info*, align 8
  %4 = alloca %struct.dwarf2_cu*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.die_info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.die_info*, align 8
  %10 = alloca i8*, align 8
  store %struct.die_info* %0, %struct.die_info** %3, align 8
  store %struct.dwarf2_cu* %1, %struct.dwarf2_cu** %4, align 8
  store %struct.cleanup* null, %struct.cleanup** %5, align 8
  %11 = load %struct.die_info*, %struct.die_info** %3, align 8
  %12 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %13 = call %struct.die_info* @die_specification(%struct.die_info* %11, %struct.dwarf2_cu* %12)
  store %struct.die_info* %13, %struct.die_info** %6, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.die_info*, %struct.die_info** %6, align 8
  %15 = icmp ne %struct.die_info* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.die_info*, %struct.die_info** %6, align 8
  %18 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %19 = call i8* @determine_prefix(%struct.die_info* %17, %struct.dwarf2_cu* %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** @processing_current_prefix, align 8
  %21 = load i32, i32* @xfree, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call %struct.cleanup* @make_cleanup(i32 %21, i8* %22)
  store %struct.cleanup* %23, %struct.cleanup** %5, align 8
  br label %24

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @processing_has_namespace_info, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %61, label %27

27:                                               ; preds = %24
  %28 = load %struct.die_info*, %struct.die_info** %3, align 8
  %29 = getelementptr inbounds %struct.die_info, %struct.die_info* %28, i32 0, i32 1
  %30 = load %struct.die_info*, %struct.die_info** %29, align 8
  store %struct.die_info* %30, %struct.die_info** %9, align 8
  br label %31

31:                                               ; preds = %57, %27
  %32 = load %struct.die_info*, %struct.die_info** %9, align 8
  %33 = icmp ne %struct.die_info* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.die_info*, %struct.die_info** %9, align 8
  %36 = getelementptr inbounds %struct.die_info, %struct.die_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %31
  %40 = phi i1 [ false, %31 ], [ %38, %34 ]
  br i1 %40, label %41, label %60

41:                                               ; preds = %39
  %42 = load %struct.die_info*, %struct.die_info** %9, align 8
  %43 = getelementptr inbounds %struct.die_info, %struct.die_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DW_TAG_subprogram, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load %struct.die_info*, %struct.die_info** %9, align 8
  %49 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %50 = call i32 @dwarf2_linkage_name(%struct.die_info* %48, %struct.dwarf2_cu* %49)
  %51 = call i8* @class_name_from_physname(i32 %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %60

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %41
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.die_info*, %struct.die_info** %9, align 8
  %59 = call %struct.die_info* @sibling_die(%struct.die_info* %58)
  store %struct.die_info* %59, %struct.die_info** %9, align 8
  br label %31

60:                                               ; preds = %54, %39
  br label %61

61:                                               ; preds = %60, %24
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.die_info*, %struct.die_info** %3, align 8
  %66 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %4, align 8
  %67 = call i8* @dwarf2_name(%struct.die_info* %65, %struct.dwarf2_cu* %66)
  store i8* %67, i8** %10, align 8
  %68 = load i8*, i8** @processing_current_prefix, align 8
  %69 = load i8*, i8** %10, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i8*, i8** %10, align 8
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i8* [ %72, %71 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %73 ]
  %76 = call i8* @typename_concat(i8* %68, i8* %75)
  store i8* %76, i8** %7, align 8
  br label %77

77:                                               ; preds = %74, %61
  %78 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %79 = icmp ne %struct.cleanup* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %82 = call i32 @do_cleanups(%struct.cleanup* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i8*, i8** %7, align 8
  ret i8* %84
}

declare dso_local %struct.die_info* @die_specification(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i8* @determine_prefix(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i8* @class_name_from_physname(i32) #1

declare dso_local i32 @dwarf2_linkage_name(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local %struct.die_info* @sibling_die(%struct.die_info*) #1

declare dso_local i8* @dwarf2_name(%struct.die_info*, %struct.dwarf2_cu*) #1

declare dso_local i8* @typename_concat(i8*, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
