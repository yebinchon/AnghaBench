; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_dump_value_to_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_dump_value_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }
%struct.value = type { i32 }

@null_cleanup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"No value to %s.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"append\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"dump\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Invalid expression.\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"value is not an lval: address assumed to be zero\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @dump_value_to_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_value_to_file(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.value*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @null_cleanup, align 4
  %12 = call %struct.cleanup* @make_cleanup(i32 %11, i32* null)
  store %struct.cleanup* %12, %struct.cleanup** %7, align 8
  %13 = call i8* @scan_filename_with_cleanup(i8** %4, i32* null)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %3
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 97
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %21, %16
  %30 = load i8*, i8** %4, align 8
  %31 = call %struct.value* @parse_and_eval(i8* %30)
  store %struct.value* %31, %struct.value** %8, align 8
  %32 = load %struct.value*, %struct.value** %8, align 8
  %33 = icmp eq %struct.value* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39, %36
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.value*, %struct.value** %8, align 8
  %47 = call i32 @VALUE_CONTENTS(%struct.value* %46)
  %48 = load %struct.value*, %struct.value** %8, align 8
  %49 = call i32 @VALUE_TYPE(%struct.value* %48)
  %50 = call i32 @TYPE_LENGTH(i32 %49)
  %51 = call i32 @dump_binary_file(i8* %44, i8* %45, i32 %47, i32 %50)
  br label %72

52:                                               ; preds = %39
  %53 = load %struct.value*, %struct.value** %8, align 8
  %54 = call i64 @VALUE_LVAL(%struct.value* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load %struct.value*, %struct.value** %8, align 8
  %58 = call i64 @VALUE_ADDRESS(%struct.value* %57)
  store i64 %58, i64* %10, align 8
  br label %61

59:                                               ; preds = %52
  store i64 0, i64* %10, align 8
  %60 = call i32 @warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load %struct.value*, %struct.value** %8, align 8
  %67 = call i32 @VALUE_CONTENTS(%struct.value* %66)
  %68 = load %struct.value*, %struct.value** %8, align 8
  %69 = call i32 @VALUE_TYPE(%struct.value* %68)
  %70 = call i32 @TYPE_LENGTH(i32 %69)
  %71 = call i32 @dump_bfd_file(i8* %62, i8* %63, i8* %64, i64 %65, i32 %67, i32 %70)
  br label %72

72:                                               ; preds = %61, %43
  %73 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %74 = call i32 @do_cleanups(%struct.cleanup* %73)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, i32*) #1

declare dso_local i8* @scan_filename_with_cleanup(i8**, i32*) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.value* @parse_and_eval(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @dump_binary_file(i8*, i8*, i32, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @dump_bfd_file(i8*, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
