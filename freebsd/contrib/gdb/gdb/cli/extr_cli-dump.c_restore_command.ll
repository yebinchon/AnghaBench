; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_restore_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/cli/extr_cli-dump.c_restore_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_data = type { i64, i64, i8* }

@target_has_execution = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Start must be less than end.\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Restore file %s offset 0x%lx start 0x%lx end 0x%lx\0A\00", align 1
@restore_section_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @restore_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.callback_data, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @target_has_execution, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 (...) @noprocess()
  br label %14

14:                                               ; preds = %12, %2
  %15 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 2
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = call i8* @scan_filename_with_cleanup(i8** %3, i32* null)
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %88

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %27 = load i8*, i8** %3, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i64 @strncmp(i8* %27, i8* %28, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  store i32 1, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = load i8*, i8** %3, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %3, align 8
  %39 = load i8*, i8** %3, align 8
  %40 = call i8* @skip_spaces(i8* %39)
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %33, %26
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = call i8* @scan_expression_with_cleanup(i8** %3, i32* null)
  %51 = call i8* @parse_and_eval_long(i8* %50)
  %52 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 2
  store i8* %51, i8** %52, align 8
  br label %53

53:                                               ; preds = %49, %44, %41
  %54 = load i8*, i8** %3, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %53
  %57 = load i8*, i8** %3, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = call i8* @scan_expression_with_cleanup(i8** %3, i32* null)
  %63 = call i8* @parse_and_eval_long(i8* %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %86

68:                                               ; preds = %61
  %69 = load i8*, i8** %3, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i8*, i8** %3, align 8
  %75 = call i8* @parse_and_eval_long(i8* %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  %78 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sle i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %73
  br label %86

86:                                               ; preds = %85, %68, %61
  br label %87

87:                                               ; preds = %86, %56, %53
  br label %88

88:                                               ; preds = %87, %21, %14
  %89 = load i64, i64* @info_verbose, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.callback_data, %struct.callback_data* %6, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @printf_filtered(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i8* %92, i64 %95, i64 %97, i64 %99)
  br label %101

101:                                              ; preds = %91, %88
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @restore_binary_file(i8* %105, %struct.callback_data* %6)
  br label %113

107:                                              ; preds = %101
  %108 = load i8*, i8** %5, align 8
  %109 = call i32* @bfd_openr_with_cleanup(i8* %108, i32* null)
  store i32* %109, i32** %7, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* @restore_section_callback, align 4
  %112 = call i32 @bfd_map_over_sections(i32* %110, i32 %111, %struct.callback_data* %6)
  br label %113

113:                                              ; preds = %107, %104
  ret void
}

declare dso_local i32 @noprocess(...) #1

declare dso_local i8* @scan_filename_with_cleanup(i8**, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @skip_spaces(i8*) #1

declare dso_local i8* @parse_and_eval_long(i8*) #1

declare dso_local i8* @scan_expression_with_cleanup(i8**, i32*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @printf_filtered(i8*, i8*, i64, i64, i64) #1

declare dso_local i32 @restore_binary_file(i8*, %struct.callback_data*) #1

declare dso_local i32* @bfd_openr_with_cleanup(i8*, i32*) #1

declare dso_local i32 @bfd_map_over_sections(i32*, i32, %struct.callback_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
