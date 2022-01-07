; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_print_section_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_print_section_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { %struct.section_table*, %struct.section_table* }
%struct.section_table = type { i32*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TARGET_ADDR_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"08l\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"016l\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"\09`%s', \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"file type %s.\0A\00", align 1
@exec_bfd = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"\09Entry point: \00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\09%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" - %s\00", align 1
@info_verbose = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c" @ %s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" is %s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" in %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_section_info(%struct.target_ops* %0, i32* %1) #0 {
  %3 = alloca %struct.target_ops*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.section_table*, align 8
  %6 = alloca i8*, align 8
  store %struct.target_ops* %0, %struct.target_ops** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32, i32* @TARGET_ADDR_BIT, align 4
  %8 = icmp sle i32 %7, 32
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %10, i8** %6, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @bfd_get_filename(i32* %11)
  %13 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = call i32 @wrap_here(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @bfd_get_target(i32* %15)
  %17 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32*, i32** @exec_bfd, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @bfd_get_start_address(i32* %23)
  %25 = load i32, i32* @gdb_stdout, align 4
  %26 = call i32 @print_address_numeric(i32 %24, i32 1, i32 %25)
  %27 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %28

28:                                               ; preds = %21, %2
  %29 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %30 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %29, i32 0, i32 1
  %31 = load %struct.section_table*, %struct.section_table** %30, align 8
  store %struct.section_table* %31, %struct.section_table** %5, align 8
  br label %32

32:                                               ; preds = %83, %28
  %33 = load %struct.section_table*, %struct.section_table** %5, align 8
  %34 = load %struct.target_ops*, %struct.target_ops** %3, align 8
  %35 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %34, i32 0, i32 0
  %36 = load %struct.section_table*, %struct.section_table** %35, align 8
  %37 = icmp ult %struct.section_table* %33, %36
  br i1 %37, label %38, label %86

38:                                               ; preds = %32
  %39 = load %struct.section_table*, %struct.section_table** %5, align 8
  %40 = getelementptr inbounds %struct.section_table, %struct.section_table* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @local_hex_string_custom(i32 %41, i8* %42)
  %44 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %43)
  %45 = load %struct.section_table*, %struct.section_table** %5, align 8
  %46 = getelementptr inbounds %struct.section_table, %struct.section_table* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @local_hex_string_custom(i32 %47, i8* %48)
  %50 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* @info_verbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load %struct.section_table*, %struct.section_table** %5, align 8
  %55 = getelementptr inbounds %struct.section_table, %struct.section_table* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @local_hex_string_custom(i32 %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %53, %38
  %62 = load %struct.section_table*, %struct.section_table** %5, align 8
  %63 = getelementptr inbounds %struct.section_table, %struct.section_table* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.section_table*, %struct.section_table** %5, align 8
  %66 = getelementptr inbounds %struct.section_table, %struct.section_table* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = call i32 @bfd_section_name(i32* %64, %struct.TYPE_2__* %67)
  %69 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %68)
  %70 = load %struct.section_table*, %struct.section_table** %5, align 8
  %71 = getelementptr inbounds %struct.section_table, %struct.section_table* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %61
  %76 = load %struct.section_table*, %struct.section_table** %5, align 8
  %77 = getelementptr inbounds %struct.section_table, %struct.section_table* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bfd_get_filename(i32* %78)
  %80 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %75, %61
  %82 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81
  %84 = load %struct.section_table*, %struct.section_table** %5, align 8
  %85 = getelementptr inbounds %struct.section_table, %struct.section_table* %84, i32 1
  store %struct.section_table* %85, %struct.section_table** %5, align 8
  br label %32

86:                                               ; preds = %32
  ret void
}

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local i32 @print_address_numeric(i32, i32, i32) #1

declare dso_local i32 @bfd_get_start_address(i32*) #1

declare dso_local i32 @local_hex_string_custom(i32, i8*) #1

declare dso_local i32 @bfd_section_name(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
