; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_sharedlibrary_info_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_pa64solib.c_pa64_sharedlibrary_info_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.so_list = type { i64, %struct.so_list*, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@so_list_head = common dso_local global %struct.so_list* null, align 8
@exec_bfd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"No executable file.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"No shared libraries loaded at this time.\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Shared Object Libraries\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"   %-19s%-19s%-19s%-19s\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"  text start\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"   text end\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"  data start\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"   data end\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"  (symbols not loaded)\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"  (shared library unloaded)\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"  %-18s\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"016l\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%-18s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" %-18s\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c" %-18s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @pa64_sharedlibrary_info_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pa64_sharedlibrary_info_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.so_list*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.so_list*, %struct.so_list** @so_list_head, align 8
  store %struct.so_list* %7, %struct.so_list** %5, align 8
  %8 = load i32*, i32** @exec_bfd, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %86

12:                                               ; preds = %2
  %13 = load %struct.so_list*, %struct.so_list** %5, align 8
  %14 = icmp eq %struct.so_list* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %86

17:                                               ; preds = %12
  %18 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  br label %20

20:                                               ; preds = %41, %17
  %21 = load %struct.so_list*, %struct.so_list** %5, align 8
  %22 = icmp ne %struct.so_list* %21, null
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load %struct.so_list*, %struct.so_list** %5, align 8
  %25 = getelementptr inbounds %struct.so_list, %struct.so_list* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %26)
  %28 = load %struct.so_list*, %struct.so_list** %5, align 8
  %29 = getelementptr inbounds %struct.so_list, %struct.so_list* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %23
  %35 = load %struct.so_list*, %struct.so_list** %5, align 8
  %36 = getelementptr inbounds %struct.so_list, %struct.so_list* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.so_list*, %struct.so_list** %5, align 8
  %43 = getelementptr inbounds %struct.so_list, %struct.so_list* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @local_hex_string_custom(i64 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %47 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %46)
  %48 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %49 = load %struct.so_list*, %struct.so_list** %5, align 8
  %50 = getelementptr inbounds %struct.so_list, %struct.so_list* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @local_hex_string_custom(i64 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %53)
  %55 = load %struct.so_list*, %struct.so_list** %5, align 8
  %56 = getelementptr inbounds %struct.so_list, %struct.so_list* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.so_list*, %struct.so_list** %5, align 8
  %60 = getelementptr inbounds %struct.so_list, %struct.so_list* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = call i32 @local_hex_string_custom(i64 %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %64)
  %66 = load %struct.so_list*, %struct.so_list** %5, align 8
  %67 = getelementptr inbounds %struct.so_list, %struct.so_list* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @local_hex_string_custom(i64 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %71 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %70)
  %72 = load %struct.so_list*, %struct.so_list** %5, align 8
  %73 = getelementptr inbounds %struct.so_list, %struct.so_list* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.so_list*, %struct.so_list** %5, align 8
  %77 = getelementptr inbounds %struct.so_list, %struct.so_list* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  %81 = call i32 @local_hex_string_custom(i64 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %81)
  %83 = load %struct.so_list*, %struct.so_list** %5, align 8
  %84 = getelementptr inbounds %struct.so_list, %struct.so_list* %83, i32 0, i32 1
  %85 = load %struct.so_list*, %struct.so_list** %84, align 8
  store %struct.so_list* %85, %struct.so_list** %5, align 8
  br label %20

86:                                               ; preds = %10, %15, %20
  ret void
}

declare dso_local i32 @printf_unfiltered(i8*, ...) #1

declare dso_local i32 @local_hex_string_custom(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
