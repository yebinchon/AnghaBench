; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_find_abstract_instance_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_dwarf2.c_find_abstract_instance_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i32, i32*, i32* }
%struct.abbrev_info = type { i32, i32* }
%struct.attribute = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Dwarf Error: Could not find abbrev number %u.\00", align 1
@bfd_error_bad_value = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.comp_unit*, i32)* @find_abstract_instance_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @find_abstract_instance_name(%struct.comp_unit* %0, i32 %1) #0 {
  %3 = alloca %struct.comp_unit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.abbrev_info*, align 8
  %11 = alloca %struct.attribute, align 8
  %12 = alloca i8*, align 8
  store %struct.comp_unit* %0, %struct.comp_unit** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %14 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %5, align 8
  store i8* null, i8** %12, align 8
  %16 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %17 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @read_unsigned_leb128(i32* %22, i32* %23, i32* %8)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = zext i32 %25 to i64
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %34 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.abbrev_info* @lookup_abbrev(i32 %32, i32 %35)
  store %struct.abbrev_info* %36, %struct.abbrev_info** %10, align 8
  %37 = load %struct.abbrev_info*, %struct.abbrev_info** %10, align 8
  %38 = icmp ne %struct.abbrev_info* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @_bfd_error_handler(i32 %40, i32 %41)
  %43 = load i32, i32* @bfd_error_bad_value, align 4
  %44 = call i32 @bfd_set_error(i32 %43)
  br label %88

45:                                               ; preds = %31
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %84, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.abbrev_info*, %struct.abbrev_info** %10, align 8
  %49 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %87

52:                                               ; preds = %46
  %53 = load %struct.abbrev_info*, %struct.abbrev_info** %10, align 8
  %54 = getelementptr inbounds %struct.abbrev_info, %struct.abbrev_info* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = call i32* @read_attribute(%struct.attribute* %11, i32* %58, %struct.comp_unit* %59, i32* %60)
  store i32* %61, i32** %6, align 8
  %62 = getelementptr inbounds %struct.attribute, %struct.attribute* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %82 [
    i32 129, label %64
    i32 128, label %72
    i32 130, label %78
  ]

64:                                               ; preds = %52
  %65 = load i8*, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.attribute, %struct.attribute* %11, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %12, align 8
  br label %71

71:                                               ; preds = %67, %64
  br label %83

72:                                               ; preds = %52
  %73 = load %struct.comp_unit*, %struct.comp_unit** %3, align 8
  %74 = getelementptr inbounds %struct.attribute, %struct.attribute* %11, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @find_abstract_instance_name(%struct.comp_unit* %73, i32 %76)
  store i8* %77, i8** %12, align 8
  br label %83

78:                                               ; preds = %52
  %79 = getelementptr inbounds %struct.attribute, %struct.attribute* %11, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %12, align 8
  br label %83

82:                                               ; preds = %52
  br label %83

83:                                               ; preds = %82, %78, %72, %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %46

87:                                               ; preds = %46
  br label %88

88:                                               ; preds = %87, %39
  br label %89

89:                                               ; preds = %88, %2
  %90 = load i8*, i8** %12, align 8
  ret i8* %90
}

declare dso_local i32 @read_unsigned_leb128(i32*, i32*, i32*) #1

declare dso_local %struct.abbrev_info* @lookup_abbrev(i32, i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32* @read_attribute(%struct.attribute*, i32*, %struct.comp_unit*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
