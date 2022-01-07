; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_output_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_output_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32 }
%struct.cleanup = type { i32 }
%struct.value = type { i32 }
%struct.format_data = type { i8, i32 }

@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.value*, align 8
  %9 = alloca %struct.format_data, align 4
  %10 = alloca %struct.format_data, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %7, align 1
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 47
  br i1 %17, label %18, label %30

18:                                               ; preds = %13
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %3, align 8
  %21 = call i64 @decode_format(i8** %3, i32 0, i32 0)
  %22 = bitcast %struct.format_data* %10 to i64*
  store i64 %21, i64* %22, align 4
  %23 = bitcast %struct.format_data* %9 to i8*
  %24 = bitcast %struct.format_data* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 8, i1 false)
  %25 = bitcast %struct.format_data* %9 to i64*
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @validate_format(i64 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %28 = getelementptr inbounds %struct.format_data, %struct.format_data* %9, i32 0, i32 0
  %29 = load i8, i8* %28, align 4
  store i8 %29, i8* %7, align 1
  br label %30

30:                                               ; preds = %18, %13, %2
  %31 = load i8*, i8** %3, align 8
  %32 = call %struct.expression* @parse_expression(i8* %31)
  store %struct.expression* %32, %struct.expression** %5, align 8
  %33 = load i32, i32* @free_current_contents, align 4
  %34 = call %struct.cleanup* @make_cleanup(i32 %33, %struct.expression** %5)
  store %struct.cleanup* %34, %struct.cleanup** %6, align 8
  %35 = load %struct.expression*, %struct.expression** %5, align 8
  %36 = call %struct.value* @evaluate_expression(%struct.expression* %35)
  store %struct.value* %36, %struct.value** %8, align 8
  %37 = load %struct.value*, %struct.value** %8, align 8
  %38 = call i32 @VALUE_TYPE(%struct.value* %37)
  %39 = call i32 @annotate_value_begin(i32 %38)
  %40 = load %struct.value*, %struct.value** %8, align 8
  %41 = load i8, i8* %7, align 1
  %42 = getelementptr inbounds %struct.format_data, %struct.format_data* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @gdb_stdout, align 4
  %45 = call i32 @print_formatted(%struct.value* %40, i8 signext %41, i32 %43, i32 %44)
  %46 = call i32 (...) @annotate_value_end()
  %47 = call i32 @wrap_here(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @gdb_stdout, align 4
  %49 = call i32 @gdb_flush(i32 %48)
  %50 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %51 = call i32 @do_cleanups(%struct.cleanup* %50)
  ret void
}

declare dso_local i64 @decode_format(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @validate_format(i64, i8*) #1

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local i32 @annotate_value_begin(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @print_formatted(%struct.value*, i8 signext, i32, i32) #1

declare dso_local i32 @annotate_value_end(...) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
