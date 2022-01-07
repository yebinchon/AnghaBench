; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_dump_memory_to_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_dump_memory_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Missing start address.\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Missing stop address.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Invalid memory address range (start >= end).\00", align 1
@xfree = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @dump_memory_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_memory_to_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* @null_cleanup, align 4
  %17 = call %struct.cleanup* @make_cleanup(i32 %16, i8* null)
  store %struct.cleanup* %17, %struct.cleanup** %7, align 8
  %18 = call i8* @scan_filename_with_cleanup(i8** %4, i32* null)
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21, %3
  %27 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = call i8* @scan_expression_with_cleanup(i8** %4, i32* null)
  store i8* %29, i8** %13, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %28
  %38 = call i32 @error(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i8*, i8** %4, align 8
  store i8* %40, i8** %14, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i64 @parse_and_eval_address(i8* %41)
  store i64 %42, i64* %8, align 8
  %43 = load i8*, i8** %14, align 8
  %44 = call i64 @parse_and_eval_address(i8* %43)
  store i64 %44, i64* %9, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp sle i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %39
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i8* @xmalloc(i64 %54)
  store i8* %55, i8** %12, align 8
  %56 = load i32, i32* @xfree, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = call %struct.cleanup* @make_cleanup(i32 %56, i8* %57)
  %59 = load i64, i64* %8, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @target_read_memory(i64 %59, i8* %60, i64 %61)
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %50
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %65, %50
  %70 = load i8*, i8** %11, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 @dump_binary_file(i8* %70, i8* %71, i8* %72, i64 %73)
  br label %83

75:                                               ; preds = %65
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %10, align 8
  %82 = call i32 @dump_bfd_file(i8* %76, i8* %77, i8* %78, i64 %79, i8* %80, i64 %81)
  br label %83

83:                                               ; preds = %75, %69
  %84 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %85 = call i32 @do_cleanups(%struct.cleanup* %84)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i8* @scan_filename_with_cleanup(i8**, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @scan_expression_with_cleanup(i8**, i32*) #1

declare dso_local i64 @parse_and_eval_address(i8*) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @target_read_memory(i64, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dump_binary_file(i8*, i8*, i8*, i64) #1

declare dso_local i32 @dump_bfd_file(i8*, i8*, i8*, i64, i8*, i64) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
