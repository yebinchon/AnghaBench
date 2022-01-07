; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_x_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_x_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { i32 }
%struct.format_data = type { i32, i32, i32 }
%struct.cleanup = type { i32 }
%struct.type = type { i32 }

@last_format = common dso_local global i32 0, align 4
@last_size = common dso_local global i32 0, align 4
@free_current_contents = common dso_local global i32 0, align 4
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_FUNC = common dso_local global i64 0, align 8
@lval_memory = common dso_local global i64 0, align 8
@next_address = common dso_local global i32 0, align 4
@next_section = common dso_local global i64 0, align 8
@last_examine_value = common dso_local global %struct.value* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"_\00", align 1
@last_examine_address = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@builtin_type_void = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.format_data, align 4
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.value*, align 8
  %9 = alloca %struct.format_data, align 4
  %10 = alloca { i64, i32 }, align 8
  %11 = alloca { i64, i32 }, align 4
  %12 = alloca %struct.type*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @last_format, align 4
  %14 = getelementptr inbounds %struct.format_data, %struct.format_data* %6, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @last_size, align 4
  %16 = getelementptr inbounds %struct.format_data, %struct.format_data* %6, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.format_data, %struct.format_data* %6, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 47
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  %28 = load i32, i32* @last_format, align 4
  %29 = load i32, i32* @last_size, align 4
  %30 = call { i64, i32 } @decode_format(i8** %3, i32 %28, i32 %29)
  store { i64, i32 } %30, { i64, i32 }* %10, align 8
  %31 = bitcast { i64, i32 }* %10 to i8*
  %32 = bitcast %struct.format_data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 8 %31, i64 12, i1 false)
  %33 = bitcast %struct.format_data* %6 to i8*
  %34 = bitcast %struct.format_data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 12, i1 false)
  br label %35

35:                                               ; preds = %25, %20, %2
  %36 = load i8*, i8** %3, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %90

38:                                               ; preds = %35
  %39 = load i8*, i8** %3, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %38
  %44 = load i8*, i8** %3, align 8
  %45 = call %struct.expression* @parse_expression(i8* %44)
  store %struct.expression* %45, %struct.expression** %5, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %48, %43
  %51 = load i32, i32* @free_current_contents, align 4
  %52 = call %struct.cleanup* @make_cleanup(i32 %51, %struct.expression** %5)
  store %struct.cleanup* %52, %struct.cleanup** %7, align 8
  %53 = load %struct.expression*, %struct.expression** %5, align 8
  %54 = call %struct.value* @evaluate_expression(%struct.expression* %53)
  store %struct.value* %54, %struct.value** %8, align 8
  %55 = load %struct.value*, %struct.value** %8, align 8
  %56 = call i32 @VALUE_TYPE(%struct.value* %55)
  %57 = call i64 @TYPE_CODE(i32 %56)
  %58 = load i64, i64* @TYPE_CODE_REF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.value*, %struct.value** %8, align 8
  %62 = call %struct.value* @value_ind(%struct.value* %61)
  store %struct.value* %62, %struct.value** %8, align 8
  br label %63

63:                                               ; preds = %60, %50
  %64 = load %struct.value*, %struct.value** %8, align 8
  %65 = call i32 @VALUE_TYPE(%struct.value* %64)
  %66 = call i64 @TYPE_CODE(i32 %65)
  %67 = load i64, i64* @TYPE_CODE_FUNC, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.value*, %struct.value** %8, align 8
  %71 = call i64 @VALUE_LVAL(%struct.value* %70)
  %72 = load i64, i64* @lval_memory, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.value*, %struct.value** %8, align 8
  %76 = call i32 @VALUE_ADDRESS(%struct.value* %75)
  store i32 %76, i32* @next_address, align 4
  br label %80

77:                                               ; preds = %69, %63
  %78 = load %struct.value*, %struct.value** %8, align 8
  %79 = call i32 @value_as_address(%struct.value* %78)
  store i32 %79, i32* @next_address, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.value*, %struct.value** %8, align 8
  %82 = call i64 @VALUE_BFD_SECTION(%struct.value* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.value*, %struct.value** %8, align 8
  %86 = call i64 @VALUE_BFD_SECTION(%struct.value* %85)
  store i64 %86, i64* @next_section, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %89 = call i32 @do_cleanups(%struct.cleanup* %88)
  br label %90

90:                                               ; preds = %87, %38, %35
  %91 = load i32, i32* @next_address, align 4
  %92 = load i64, i64* @next_section, align 8
  %93 = bitcast { i64, i32 }* %11 to i8*
  %94 = bitcast %struct.format_data* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %93, i8* align 4 %94, i64 12, i1 false)
  %95 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 0
  %96 = load i64, i64* %95, align 4
  %97 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %11, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @do_examine(i64 %96, i32 %98, i32 %91, i64 %92)
  %100 = getelementptr inbounds %struct.format_data, %struct.format_data* %6, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* @last_size, align 4
  %102 = getelementptr inbounds %struct.format_data, %struct.format_data* %6, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* @last_format, align 4
  %104 = load %struct.value*, %struct.value** @last_examine_value, align 8
  %105 = icmp ne %struct.value* %104, null
  br i1 %105, label %106, label %128

106:                                              ; preds = %90
  %107 = load %struct.value*, %struct.value** @last_examine_value, align 8
  %108 = call i32 @VALUE_TYPE(%struct.value* %107)
  %109 = call %struct.type* @lookup_pointer_type(i32 %108)
  store %struct.type* %109, %struct.type** %12, align 8
  %110 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %111 = load %struct.type*, %struct.type** %12, align 8
  %112 = load i32, i32* @last_examine_address, align 4
  %113 = call %struct.value* @value_from_pointer(%struct.type* %111, i32 %112)
  %114 = call i32 @set_internalvar(i32 %110, %struct.value* %113)
  %115 = load %struct.value*, %struct.value** @last_examine_value, align 8
  %116 = call i64 @VALUE_LAZY(%struct.value* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %106
  %119 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %120 = load i32, i32* @builtin_type_void, align 4
  %121 = call %struct.value* @allocate_value(i32 %120)
  %122 = call i32 @set_internalvar(i32 %119, %struct.value* %121)
  br label %127

123:                                              ; preds = %106
  %124 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.value*, %struct.value** @last_examine_value, align 8
  %126 = call i32 @set_internalvar(i32 %124, %struct.value* %125)
  br label %127

127:                                              ; preds = %123, %118
  br label %128

128:                                              ; preds = %127, %90
  ret void
}

declare dso_local { i64, i32 } @decode_format(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @value_as_address(%struct.value*) #1

declare dso_local i64 @VALUE_BFD_SECTION(%struct.value*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @do_examine(i64, i32, i32, i64) #1

declare dso_local %struct.type* @lookup_pointer_type(i32) #1

declare dso_local i32 @set_internalvar(i32, %struct.value*) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local %struct.value* @value_from_pointer(%struct.type*, i32) #1

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local %struct.value* @allocate_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
