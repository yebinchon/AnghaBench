; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_type_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }

@none_type = common dso_local global i32 0, align 4
@error_mark_node = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"is not a type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @cp_parser_type_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cp_parser_type_name(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = call i32 @cp_parser_parse_tentatively(%struct.TYPE_11__* %8)
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = load i32, i32* @none_type, align 4
  %12 = call i64 @cp_parser_class_name(%struct.TYPE_11__* %10, i32 0, i32 0, i32 %11, i32 1, i32 0, i32 0)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = call i32 @cp_parser_parse_definitely(%struct.TYPE_11__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %83, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call i64 @cp_parser_identifier(%struct.TYPE_11__* %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @error_mark_node, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @error_mark_node, align 8
  store i64 %23, i64* %2, align 8
  br label %85

24:                                               ; preds = %16
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @cp_parser_lookup_name_simple(%struct.TYPE_11__* %25, i64 %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @TYPE_DECL, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @objc_is_id(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %32
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @objc_is_class_name(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %36, %32
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = call i64 @cp_parser_objc_protocol_refs_opt(%struct.TYPE_11__* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @objc_get_protocol_qualified_type(i64 %43, i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i64, i64* %7, align 8
  %50 = call i64 @TYPE_NAME(i64 %49)
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %48, %40
  br label %52

52:                                               ; preds = %51, %36, %24
  %53 = load i64, i64* %4, align 8
  %54 = call i64 @TREE_CODE(i64 %53)
  %55 = load i64, i64* @TYPE_DECL, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = call i32 @cp_parser_simulate_error(%struct.TYPE_11__* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @cp_parser_name_lookup_error(%struct.TYPE_11__* %62, i64 %63, i64 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i64, i64* @error_mark_node, align 8
  store i64 %67, i64* %4, align 8
  br label %82

68:                                               ; preds = %52
  %69 = load i64, i64* %4, align 8
  %70 = load i64, i64* @error_mark_node, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @maybe_note_name_used_in_class(i64 %78, i64 %79)
  br label %81

81:                                               ; preds = %77, %72, %68
  br label %82

82:                                               ; preds = %81, %66
  br label %83

83:                                               ; preds = %82, %1
  %84 = load i64, i64* %4, align 8
  store i64 %84, i64* %2, align 8
  br label %85

85:                                               ; preds = %83, %22
  %86 = load i64, i64* %2, align 8
  ret i64 %86
}

declare dso_local i32 @cp_parser_parse_tentatively(%struct.TYPE_11__*) #1

declare dso_local i64 @cp_parser_class_name(%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cp_parser_parse_definitely(%struct.TYPE_11__*) #1

declare dso_local i64 @cp_parser_identifier(%struct.TYPE_11__*) #1

declare dso_local i64 @cp_parser_lookup_name_simple(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @objc_is_id(i64) #1

declare dso_local i64 @objc_is_class_name(i64) #1

declare dso_local i64 @cp_parser_objc_protocol_refs_opt(%struct.TYPE_11__*) #1

declare dso_local i64 @objc_get_protocol_qualified_type(i64, i64) #1

declare dso_local i64 @TYPE_NAME(i64) #1

declare dso_local i32 @cp_parser_simulate_error(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_parser_name_lookup_error(%struct.TYPE_11__*, i64, i64, i8*) #1

declare dso_local i32 @maybe_note_name_used_in_class(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
