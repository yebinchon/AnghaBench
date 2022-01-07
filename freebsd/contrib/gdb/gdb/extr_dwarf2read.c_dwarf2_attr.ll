; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute = type { i32 }
%struct.die_info = type { i32, %struct.attribute* }
%struct.dwarf2_cu = type { i32 }

@DW_AT_specification = common dso_local global i32 0, align 4
@DW_AT_abstract_origin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attribute* (%struct.die_info*, i32, %struct.dwarf2_cu*)* @dwarf2_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attribute* @dwarf2_attr(%struct.die_info* %0, i32 %1, %struct.dwarf2_cu* %2) #0 {
  %4 = alloca %struct.attribute*, align 8
  %5 = alloca %struct.die_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwarf2_cu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.attribute*, align 8
  %10 = alloca %struct.die_info*, align 8
  store %struct.die_info* %0, %struct.die_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %7, align 8
  store %struct.attribute* null, %struct.attribute** %9, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %65, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.die_info*, %struct.die_info** %5, align 8
  %14 = getelementptr inbounds %struct.die_info, %struct.die_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %68

17:                                               ; preds = %11
  %18 = load %struct.die_info*, %struct.die_info** %5, align 8
  %19 = getelementptr inbounds %struct.die_info, %struct.die_info* %18, i32 0, i32 1
  %20 = load %struct.attribute*, %struct.attribute** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.attribute, %struct.attribute* %20, i64 %22
  %24 = getelementptr inbounds %struct.attribute, %struct.attribute* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %17
  %29 = load %struct.die_info*, %struct.die_info** %5, align 8
  %30 = getelementptr inbounds %struct.die_info, %struct.die_info* %29, i32 0, i32 1
  %31 = load %struct.attribute*, %struct.attribute** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.attribute, %struct.attribute* %31, i64 %33
  store %struct.attribute* %34, %struct.attribute** %4, align 8
  br label %85

35:                                               ; preds = %17
  %36 = load %struct.die_info*, %struct.die_info** %5, align 8
  %37 = getelementptr inbounds %struct.die_info, %struct.die_info* %36, i32 0, i32 1
  %38 = load %struct.attribute*, %struct.attribute** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.attribute, %struct.attribute* %38, i64 %40
  %42 = getelementptr inbounds %struct.attribute, %struct.attribute* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DW_AT_specification, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %35
  %47 = load %struct.die_info*, %struct.die_info** %5, align 8
  %48 = getelementptr inbounds %struct.die_info, %struct.die_info* %47, i32 0, i32 1
  %49 = load %struct.attribute*, %struct.attribute** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.attribute, %struct.attribute* %49, i64 %51
  %53 = getelementptr inbounds %struct.attribute, %struct.attribute* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DW_AT_abstract_origin, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %46, %35
  %58 = load %struct.die_info*, %struct.die_info** %5, align 8
  %59 = getelementptr inbounds %struct.die_info, %struct.die_info* %58, i32 0, i32 1
  %60 = load %struct.attribute*, %struct.attribute** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.attribute, %struct.attribute* %60, i64 %62
  store %struct.attribute* %63, %struct.attribute** %9, align 8
  br label %64

64:                                               ; preds = %57, %46
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %11

68:                                               ; preds = %11
  %69 = load %struct.attribute*, %struct.attribute** %9, align 8
  %70 = icmp ne %struct.attribute* %69, null
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load %struct.attribute*, %struct.attribute** %9, align 8
  %73 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %74 = call i32 @dwarf2_get_ref_die_offset(%struct.attribute* %72, %struct.dwarf2_cu* %73)
  %75 = call %struct.die_info* @follow_die_ref(i32 %74)
  store %struct.die_info* %75, %struct.die_info** %10, align 8
  %76 = load %struct.die_info*, %struct.die_info** %10, align 8
  %77 = icmp ne %struct.die_info* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.die_info*, %struct.die_info** %10, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %82 = call %struct.attribute* @dwarf2_attr(%struct.die_info* %79, i32 %80, %struct.dwarf2_cu* %81)
  store %struct.attribute* %82, %struct.attribute** %4, align 8
  br label %85

83:                                               ; preds = %71
  br label %84

84:                                               ; preds = %83, %68
  store %struct.attribute* null, %struct.attribute** %4, align 8
  br label %85

85:                                               ; preds = %84, %78, %28
  %86 = load %struct.attribute*, %struct.attribute** %4, align 8
  ret %struct.attribute* %86
}

declare dso_local %struct.die_info* @follow_die_ref(i32) #1

declare dso_local i32 @dwarf2_get_ref_die_offset(%struct.attribute*, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
