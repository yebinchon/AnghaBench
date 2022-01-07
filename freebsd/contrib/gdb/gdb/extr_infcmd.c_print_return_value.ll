; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_print_return_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcmd.c_print_return_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.cleanup = type { i32 }
%struct.ui_stream = type { i32 }
%struct.value = type { i32 }

@stop_registers = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@RETURN_VALUE_STRUCT_CONVENTION = common dso_local global i64 0, align 8
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Value returned has type: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"return-type\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" Cannot determine contents\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Function return value unknown.\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Value returned is \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"gdb-result-var\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"$%d\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@Val_no_prettyprint = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"return-value\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.type*)* @print_return_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_return_value(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.ui_stream*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.type* %1, %struct.type** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.type*, %struct.type** %4, align 8
  %13 = load i32, i32* @stop_registers, align 4
  %14 = call %struct.value* @register_value_being_returned(%struct.type* %12, i32 %13)
  store %struct.value* %14, %struct.value** %7, align 8
  br label %63

15:                                               ; preds = %2
  %16 = load i32, i32* @current_gdbarch, align 4
  %17 = call i64 @gdbarch_return_value_p(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = load %struct.type*, %struct.type** %4, align 8
  %22 = call i64 @gdbarch_return_value(i32 %20, %struct.type* %21, i32* null, i32* null, i32* null)
  %23 = load i64, i64* @RETURN_VALUE_STRUCT_CONVENTION, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @gdb_assert(i32 %25)
  %27 = load i32, i32* @uiout, align 4
  %28 = call i32 @ui_out_text(i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @uiout, align 4
  %30 = load %struct.type*, %struct.type** %4, align 8
  %31 = call i32 @TYPE_NAME(%struct.type* %30)
  %32 = call i32 @ui_out_field_string(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @uiout, align 4
  %34 = call i32 @ui_out_text(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @uiout, align 4
  %36 = call i32 @ui_out_text(i32 %35, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %89

37:                                               ; preds = %15
  %38 = call i64 (...) @DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS_P()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load i32, i32* @stop_registers, align 4
  %42 = call i32 @DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS(i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %40
  %48 = load %struct.type*, %struct.type** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call %struct.value* @value_at(%struct.type* %48, i32 %49, i32* null)
  store %struct.value* %50, %struct.value** %7, align 8
  br label %61

51:                                               ; preds = %37
  %52 = load %struct.type*, %struct.type** %4, align 8
  %53 = call %struct.value* @allocate_value(%struct.type* %52)
  store %struct.value* %53, %struct.value** %7, align 8
  %54 = load %struct.type*, %struct.type** %4, align 8
  %55 = call i32 @CHECK_TYPEDEF(%struct.type* %54)
  %56 = load %struct.type*, %struct.type** %4, align 8
  %57 = load i32, i32* @stop_registers, align 4
  %58 = load %struct.value*, %struct.value** %7, align 8
  %59 = call i32 @VALUE_CONTENTS_RAW(%struct.value* %58)
  %60 = call i32 @EXTRACT_RETURN_VALUE(%struct.type* %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %51, %47
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %11
  %64 = load i32, i32* @uiout, align 4
  %65 = call %struct.ui_stream* @ui_out_stream_new(i32 %64)
  store %struct.ui_stream* %65, %struct.ui_stream** %6, align 8
  %66 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %67 = call %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream* %66)
  store %struct.cleanup* %67, %struct.cleanup** %5, align 8
  %68 = load i32, i32* @uiout, align 4
  %69 = call i32 @ui_out_text(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %70 = load i32, i32* @uiout, align 4
  %71 = load %struct.value*, %struct.value** %7, align 8
  %72 = call i32 @record_latest_value(%struct.value* %71)
  %73 = call i32 @ui_out_field_fmt(i32 %70, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @uiout, align 4
  %75 = call i32 @ui_out_text(i32 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %76 = load %struct.value*, %struct.value** %7, align 8
  %77 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %78 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @Val_no_prettyprint, align 4
  %81 = call i32 @value_print(%struct.value* %76, i32 %79, i32 0, i32 %80)
  %82 = load i32, i32* @uiout, align 4
  %83 = load %struct.ui_stream*, %struct.ui_stream** %6, align 8
  %84 = call i32 @ui_out_field_stream(i32 %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), %struct.ui_stream* %83)
  %85 = load i32, i32* @uiout, align 4
  %86 = call i32 @ui_out_text(i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %87 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %88 = call i32 @do_cleanups(%struct.cleanup* %87)
  br label %89

89:                                               ; preds = %63, %19
  ret void
}

declare dso_local %struct.value* @register_value_being_returned(%struct.type*, i32) #1

declare dso_local i64 @gdbarch_return_value_p(i32) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @gdbarch_return_value(i32, %struct.type*, i32*, i32*, i32*) #1

declare dso_local i32 @ui_out_text(i32, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i32) #1

declare dso_local i32 @TYPE_NAME(%struct.type*) #1

declare dso_local i64 @DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS_P(...) #1

declare dso_local i32 @DEPRECATED_EXTRACT_STRUCT_VALUE_ADDRESS(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @value_at(%struct.type*, i32, i32*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @EXTRACT_RETURN_VALUE(%struct.type*, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_stream_delete(%struct.ui_stream*) #1

declare dso_local i32 @ui_out_field_fmt(i32, i8*, i8*, i32) #1

declare dso_local i32 @record_latest_value(%struct.value*) #1

declare dso_local i32 @value_print(%struct.value*, i32, i32, i32) #1

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
