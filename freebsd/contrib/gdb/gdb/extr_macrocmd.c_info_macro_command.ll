; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrocmd.c_info_macro_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrocmd.c_info_macro_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_scope = type { i32, %struct.macro_source_file* }
%struct.macro_source_file = type { i32 }
%struct.cleanup = type { i32 }
%struct.macro_definition = type { i64, i32, i8**, i8* }

@free_current_contents = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [102 x i8] c"You must follow the `info macro' command with the name of the macro\0Awhose definition you want to see.\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"GDB has no preprocessor macro information for that code.\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Defined at \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"#define %s\00", align 1
@macro_function_like = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [68 x i8] c"The symbol `%s' has no definition as a C/C++ preprocessor macro\0Aat \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @info_macro_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @info_macro_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.macro_scope*, align 8
  %6 = alloca %struct.cleanup*, align 8
  %7 = alloca %struct.macro_definition*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.macro_source_file*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.macro_scope* null, %struct.macro_scope** %5, align 8
  %11 = load i32, i32* @free_current_contents, align 4
  %12 = call %struct.cleanup* @make_cleanup(i32 %11, %struct.macro_scope** %5)
  store %struct.cleanup* %12, %struct.cleanup** %6, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %2
  %20 = call i32 @error(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  %22 = call %struct.macro_scope* (...) @default_macro_scope()
  store %struct.macro_scope* %22, %struct.macro_scope** %5, align 8
  %23 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %24 = icmp ne %struct.macro_scope* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %29 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %28, i32 0, i32 1
  %30 = load %struct.macro_source_file*, %struct.macro_source_file** %29, align 8
  %31 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %32 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = call %struct.macro_definition* @macro_lookup_definition(%struct.macro_source_file* %30, i32 %33, i8* %34)
  store %struct.macro_definition* %35, %struct.macro_definition** %7, align 8
  %36 = load %struct.macro_definition*, %struct.macro_definition** %7, align 8
  %37 = icmp ne %struct.macro_definition* %36, null
  br i1 %37, label %38, label %102

38:                                               ; preds = %27
  %39 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %40 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %39, i32 0, i32 1
  %41 = load %struct.macro_source_file*, %struct.macro_source_file** %40, align 8
  %42 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %43 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %3, align 8
  %46 = call %struct.macro_source_file* @macro_definition_location(%struct.macro_source_file* %41, i32 %44, i8* %45, i32* %8)
  store %struct.macro_source_file* %46, %struct.macro_source_file** %9, align 8
  %47 = load i32, i32* @gdb_stdout, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf_filtered(i32 %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @gdb_stdout, align 4
  %50 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @show_pp_source_pos(i32 %49, %struct.macro_source_file* %50, i32 %51)
  %53 = load i32, i32* @gdb_stdout, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = call i32 (i32, i8*, ...) @fprintf_filtered(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load %struct.macro_definition*, %struct.macro_definition** %7, align 8
  %57 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @macro_function_like, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %96

61:                                               ; preds = %38
  %62 = load i32, i32* @gdb_stdout, align 4
  %63 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %90, %61
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.macro_definition*, %struct.macro_definition** %7, align 8
  %67 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = load %struct.macro_definition*, %struct.macro_definition** %7, align 8
  %72 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @gdb_stdout, align 4
  %79 = call i32 @fputs_filtered(i8* %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = load %struct.macro_definition*, %struct.macro_definition** %7, align 8
  %83 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @gdb_stdout, align 4
  %88 = call i32 @fputs_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %70
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %64

93:                                               ; preds = %64
  %94 = load i32, i32* @gdb_stdout, align 4
  %95 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %93, %38
  %97 = load i32, i32* @gdb_stdout, align 4
  %98 = load %struct.macro_definition*, %struct.macro_definition** %7, align 8
  %99 = getelementptr inbounds %struct.macro_definition, %struct.macro_definition* %98, i32 0, i32 3
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i32, i8*, ...) @fprintf_filtered(i32 %97, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %100)
  br label %114

102:                                              ; preds = %27
  %103 = load i32, i32* @gdb_stdout, align 4
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 (i32, i8*, ...) @fprintf_filtered(i32 %103, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.8, i64 0, i64 0), i8* %104)
  %106 = load i32, i32* @gdb_stdout, align 4
  %107 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %108 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %107, i32 0, i32 1
  %109 = load %struct.macro_source_file*, %struct.macro_source_file** %108, align 8
  %110 = load %struct.macro_scope*, %struct.macro_scope** %5, align 8
  %111 = getelementptr inbounds %struct.macro_scope, %struct.macro_scope* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @show_pp_source_pos(i32 %106, %struct.macro_source_file* %109, i32 %112)
  br label %114

114:                                              ; preds = %102, %96
  %115 = load %struct.cleanup*, %struct.cleanup** %6, align 8
  %116 = call i32 @do_cleanups(%struct.cleanup* %115)
  ret void
}

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.macro_scope**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.macro_scope* @default_macro_scope(...) #1

declare dso_local %struct.macro_definition* @macro_lookup_definition(%struct.macro_source_file*, i32, i8*) #1

declare dso_local %struct.macro_source_file* @macro_definition_location(%struct.macro_source_file*, i32, i8*, i32*) #1

declare dso_local i32 @fprintf_filtered(i32, i8*, ...) #1

declare dso_local i32 @show_pp_source_pos(i32, %struct.macro_source_file*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
