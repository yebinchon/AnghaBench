; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_build_block_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-parser.c_build_block_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_sema_info = type { i64, i64, %struct.TYPE_2__*, i8* }
%struct.TYPE_2__ = type { i8* }

@build_block_struct_type.unique_count = internal global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"__block_literal_%d\00", align 1
@RECORD_TYPE = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"__isa\00", align 1
@ptr_type_node = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"__flags\00", align 1
@integer_type_node = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"__reserved\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"__FuncPtr\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"__descriptor\00", align 1
@TYPE_UNQUALIFIED = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.block_sema_info*)* @build_block_struct_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @build_block_struct_type(%struct.block_sema_info* %0) #0 {
  %2 = alloca %struct.block_sema_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.block_sema_info* %0, %struct.block_sema_info** %2, align 8
  %10 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %11 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @TREE_VALUE(i64 %17)
  %19 = call i64 @block_requires_copying(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i8*, i8** @TRUE, align 8
  %23 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %24 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i64, i64* %5, align 8
  %28 = call i64 @TREE_CHAIN(i64 %27)
  store i64 %28, i64* %5, align 8
  br label %13

29:                                               ; preds = %21, %13
  %30 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %31 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %46, %29
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @TREE_VALUE(i64 %37)
  %39 = call i64 @COPYABLE_BYREF_LOCAL_VAR(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i8*, i8** @TRUE, align 8
  %43 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %44 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %49

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @TREE_CHAIN(i64 %47)
  store i64 %48, i64* %5, align 8
  br label %33

49:                                               ; preds = %41, %33
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %51 = load i32, i32* @build_block_struct_type.unique_count, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* @build_block_struct_type.unique_count, align 4
  %53 = call i32 @sprintf(i8* %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = call i32 (...) @push_to_top_level()
  %55 = load i32, i32* @RECORD_TYPE, align 4
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %57 = call i32 @get_identifier(i8* %56)
  %58 = call i64 @start_struct(i32 %55, i32 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* @FIELD_DECL, align 4
  %60 = call i32 @get_identifier(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ptr_type_node, align 4
  %62 = call i64 @build_decl(i32 %59, i32 %60, i32 %61)
  store i64 %62, i64* %4, align 8
  %63 = load i64, i64* %4, align 8
  store i64 %63, i64* %3, align 8
  %64 = load i32, i32* @FIELD_DECL, align 4
  %65 = call i32 @get_identifier(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @integer_type_node, align 4
  %67 = call i64 @build_decl(i32 %64, i32 %65, i32 %66)
  store i64 %67, i64* %4, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @chainon(i64 %68, i64 %69)
  %71 = load i32, i32* @FIELD_DECL, align 4
  %72 = call i32 @get_identifier(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i32, i32* @integer_type_node, align 4
  %74 = call i64 @build_decl(i32 %71, i32 %72, i32 %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @chainon(i64 %75, i64 %76)
  %78 = load i32, i32* @FIELD_DECL, align 4
  %79 = call i32 @get_identifier(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %80 = load i32, i32* @ptr_type_node, align 4
  %81 = call i64 @build_decl(i32 %78, i32 %79, i32 %80)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load i64, i64* %4, align 8
  %84 = call i32 @chainon(i64 %82, i64 %83)
  %85 = load i32, i32* @FIELD_DECL, align 4
  %86 = call i32 @get_identifier(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %88 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @build_block_descriptor_type(i8* %89)
  %91 = call i64 @build_decl(i32 %85, i32 %86, i32 %90)
  store i64 %91, i64* %4, align 8
  %92 = load i64, i64* %3, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @chainon(i64 %92, i64 %93)
  %95 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %96 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %95, i32 0, i32 3
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %111

99:                                               ; preds = %49
  %100 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %101 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = icmp ne %struct.TYPE_2__* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i8*, i8** @TRUE, align 8
  %106 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %107 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %106, i32 0, i32 2
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i8* %105, i8** %109, align 8
  br label %110

110:                                              ; preds = %104, %99
  br label %111

111:                                              ; preds = %110, %49
  %112 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %113 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %5, align 8
  br label %115

115:                                              ; preds = %132, %111
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %135

118:                                              ; preds = %115
  %119 = load i64, i64* %5, align 8
  %120 = call i64 @TREE_VALUE(i64 %119)
  store i64 %120, i64* %8, align 8
  %121 = load i32, i32* @FIELD_DECL, align 4
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @DECL_NAME(i64 %122)
  %124 = load i64, i64* %8, align 8
  %125 = call i32 @TREE_TYPE(i64 %124)
  %126 = load i32, i32* @TYPE_UNQUALIFIED, align 4
  %127 = call i32 @c_build_qualified_type(i32 %125, i32 %126)
  %128 = call i64 @build_decl(i32 %121, i32 %123, i32 %127)
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %3, align 8
  %130 = load i64, i64* %4, align 8
  %131 = call i32 @chainon(i64 %129, i64 %130)
  br label %132

132:                                              ; preds = %118
  %133 = load i64, i64* %5, align 8
  %134 = call i64 @TREE_CHAIN(i64 %133)
  store i64 %134, i64* %5, align 8
  br label %115

135:                                              ; preds = %115
  %136 = load %struct.block_sema_info*, %struct.block_sema_info** %2, align 8
  %137 = getelementptr inbounds %struct.block_sema_info, %struct.block_sema_info* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %5, align 8
  br label %139

139:                                              ; preds = %154, %135
  %140 = load i64, i64* %5, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load i64, i64* %5, align 8
  %144 = call i64 @TREE_VALUE(i64 %143)
  store i64 %144, i64* %9, align 8
  %145 = load i32, i32* @FIELD_DECL, align 4
  %146 = load i64, i64* %9, align 8
  %147 = call i32 @DECL_NAME(i64 %146)
  %148 = load i64, i64* %9, align 8
  %149 = call i32 @TREE_TYPE(i64 %148)
  %150 = call i64 @build_decl(i32 %145, i32 %147, i32 %149)
  store i64 %150, i64* %4, align 8
  %151 = load i64, i64* %3, align 8
  %152 = load i64, i64* %4, align 8
  %153 = call i32 @chainon(i64 %151, i64 %152)
  br label %154

154:                                              ; preds = %142
  %155 = load i64, i64* %5, align 8
  %156 = call i64 @TREE_CHAIN(i64 %155)
  store i64 %156, i64* %5, align 8
  br label %139

157:                                              ; preds = %139
  %158 = call i32 (...) @pop_from_top_level()
  %159 = load i64, i64* %7, align 8
  %160 = load i64, i64* %3, align 8
  %161 = load i32, i32* @NULL_TREE, align 4
  %162 = call i32 @finish_struct(i64 %159, i64 %160, i32 %161)
  %163 = load i64, i64* %7, align 8
  ret i64 %163
}

declare dso_local i64 @block_requires_copying(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @COPYABLE_BYREF_LOCAL_VAR(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @push_to_top_level(...) #1

declare dso_local i64 @start_struct(i32, i32) #1

declare dso_local i32 @get_identifier(i8*) #1

declare dso_local i64 @build_decl(i32, i32, i32) #1

declare dso_local i32 @chainon(i64, i64) #1

declare dso_local i32 @build_block_descriptor_type(i8*) #1

declare dso_local i32 @DECL_NAME(i64) #1

declare dso_local i32 @c_build_qualified_type(i32, i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @pop_from_top_level(...) #1

declare dso_local i32 @finish_struct(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
