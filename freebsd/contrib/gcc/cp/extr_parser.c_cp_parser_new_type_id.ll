; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_new_type_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_parser.c_cp_parser_new_type_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"types may not be defined in a new-type-id\00", align 1
@NULL_TREE = common dso_local global i32 0, align 4
@cdk_pointer = common dso_local global i64 0, align 8
@cdk_ptrmem = common dso_local global i64 0, align 8
@cdk_array = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i32 0, align 4
@integer_one_node = common dso_local global i32 0, align 4
@ARRAY_TYPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*)* @cp_parser_new_type_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_parser_new_type_id(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %9, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = call i32 @cp_parser_type_specifier_seq(%struct.TYPE_12__* %16, i32 0, i32* %5)
  %18 = load i8*, i8** %9, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = call %struct.TYPE_13__* @cp_parser_new_declarator_opt(%struct.TYPE_12__* %21)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load i32, i32* @NULL_TREE, align 4
  %24 = load i32*, i32** %4, align 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %8, align 8
  br label %26

26:                                               ; preds = %45, %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %28 = icmp ne %struct.TYPE_13__* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @cdk_pointer, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @cdk_ptrmem, align 8
  %40 = icmp eq i64 %38, %39
  br label %41

41:                                               ; preds = %35, %29
  %42 = phi i1 [ true, %29 ], [ %40, %35 ]
  br label %43

43:                                               ; preds = %41, %26
  %44 = phi i1 [ false, %26 ], [ %42, %41 ]
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %46, %struct.TYPE_13__** %8, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %7, align 8
  br label %26

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %75, %50
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = icmp ne %struct.TYPE_13__* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %51
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @cdk_array, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = icmp ne %struct.TYPE_13__* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @cdk_array, align 8
  %72 = icmp eq i64 %70, %71
  br label %73

73:                                               ; preds = %65, %60, %54, %51
  %74 = phi i1 [ false, %60 ], [ false, %54 ], [ false, %51 ], [ %72, %65 ]
  br i1 %74, label %75, label %80

75:                                               ; preds = %73
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %8, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %7, align 8
  br label %51

80:                                               ; preds = %73
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = icmp ne %struct.TYPE_13__* %81, null
  br i1 %82, label %83, label %114

83:                                               ; preds = %80
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @cdk_array, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %114

89:                                               ; preds = %83
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %4, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @error_mark_node, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %89
  %101 = load i32, i32* @integer_one_node, align 4
  %102 = load i32*, i32** %4, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %89
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %111, align 8
  br label %113

112:                                              ; preds = %103
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %113

113:                                              ; preds = %112, %106
  br label %114

114:                                              ; preds = %113, %83, %80
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %116 = call i32 @groktypename(i32* %5, %struct.TYPE_13__* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i64 @TREE_CODE(i32 %117)
  %119 = load i64, i64* @ARRAY_TYPE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load i32*, i32** %4, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NULL_TREE, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @array_type_nelts_top(i32 %127)
  %129 = load i32*, i32** %4, align 8
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @TREE_TYPE(i32 %130)
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %126, %121, %114
  %133 = load i32, i32* %10, align 4
  ret i32 %133
}

declare dso_local i32 @cp_parser_type_specifier_seq(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @cp_parser_new_declarator_opt(%struct.TYPE_12__*) #1

declare dso_local i32 @groktypename(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @array_type_nelts_top(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
