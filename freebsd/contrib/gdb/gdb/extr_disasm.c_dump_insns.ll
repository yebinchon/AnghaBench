; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_dump_insns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_disasm.c_dump_insns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_out = type { i32 }
%struct.disassemble_info = type { i32 }
%struct.ui_stream = type { i32 }
%struct.cleanup = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"func-name\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c">:\09\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c":\09\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"inst\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ui_out*, %struct.disassemble_info*, i64, i64, i32, %struct.ui_stream*)* @dump_insns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_insns(%struct.ui_out* %0, %struct.disassemble_info* %1, i64 %2, i64 %3, i32 %4, %struct.ui_stream* %5) #0 {
  %7 = alloca %struct.ui_out*, align 8
  %8 = alloca %struct.disassemble_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ui_stream*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cleanup*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store %struct.ui_out* %0, %struct.ui_out** %7, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ui_stream* %5, %struct.ui_stream** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %14, align 8
  br label %22

22:                                               ; preds = %76, %6
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %97

26:                                               ; preds = %22
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %27 = load i32, i32* @QUIT, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %97

35:                                               ; preds = %30
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %35
  br label %39

39:                                               ; preds = %38, %26
  %40 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %41 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out* %40, i32* null)
  store %struct.cleanup* %41, %struct.cleanup** %18, align 8
  %42 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @ui_out_field_core_addr(%struct.ui_out* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @build_address_symbolic(i64 %45, i32 0, i8** %20, i32* %16, i8** %19, i32* %17, i32* %15)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %39
  %49 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %50 = call i32 @ui_out_text(%struct.ui_out* %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = call i32 @ui_out_field_string(%struct.ui_out* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  %54 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %55 = call i32 @ui_out_text(%struct.ui_out* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @ui_out_field_int(%struct.ui_out* %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %60 = call i32 @ui_out_text(%struct.ui_out* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %64

61:                                               ; preds = %39
  %62 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %63 = call i32 @ui_out_text(%struct.ui_out* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %48
  %65 = load i8*, i8** %19, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %19, align 8
  %69 = call i32 @xfree(i8* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i8*, i8** %20, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i8*, i8** %20, align 8
  %75 = call i32 @xfree(i8* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.ui_stream*, %struct.ui_stream** %12, align 8
  %78 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ui_file_rewind(i32 %79)
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.disassemble_info*, %struct.disassemble_info** %8, align 8
  %83 = call i64 @TARGET_PRINT_INSN(i64 %81, %struct.disassemble_info* %82)
  %84 = load i64, i64* %14, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %14, align 8
  %86 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %87 = load %struct.ui_stream*, %struct.ui_stream** %12, align 8
  %88 = call i32 @ui_out_field_stream(%struct.ui_out* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.ui_stream* %87)
  %89 = load %struct.ui_stream*, %struct.ui_stream** %12, align 8
  %90 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ui_file_rewind(i32 %91)
  %93 = load %struct.cleanup*, %struct.cleanup** %18, align 8
  %94 = call i32 @do_cleanups(%struct.cleanup* %93)
  %95 = load %struct.ui_out*, %struct.ui_out** %7, align 8
  %96 = call i32 @ui_out_text(%struct.ui_out* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %22

97:                                               ; preds = %34, %22
  %98 = load i32, i32* %13, align 4
  ret i32 %98
}

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(%struct.ui_out*, i32*) #1

declare dso_local i32 @ui_out_field_core_addr(%struct.ui_out*, i8*, i64) #1

declare dso_local i32 @build_address_symbolic(i64, i32, i8**, i32*, i8**, i32*, i32*) #1

declare dso_local i32 @ui_out_text(%struct.ui_out*, i8*) #1

declare dso_local i32 @ui_out_field_string(%struct.ui_out*, i8*, i8*) #1

declare dso_local i32 @ui_out_field_int(%struct.ui_out*, i8*, i32) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @ui_file_rewind(i32) #1

declare dso_local i64 @TARGET_PRINT_INSN(i64, %struct.disassemble_info*) #1

declare dso_local i32 @ui_out_field_stream(%struct.ui_out*, i8*, %struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
