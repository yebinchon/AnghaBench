; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_print_containing_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_print_containing_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_maps = type { i64 }
%struct.line_map = type { i64, i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"In file included from %s:%u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c",\0A                 from %s:%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linemap_print_containing_files(%struct.line_maps* %0, %struct.line_map* %1) #0 {
  %3 = alloca %struct.line_maps*, align 8
  %4 = alloca %struct.line_map*, align 8
  store %struct.line_maps* %0, %struct.line_maps** %3, align 8
  store %struct.line_map* %1, %struct.line_map** %4, align 8
  %5 = load %struct.line_map*, %struct.line_map** %4, align 8
  %6 = call i64 @MAIN_FILE_P(%struct.line_map* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %10 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.line_map*, %struct.line_map** %4, align 8
  %13 = getelementptr inbounds %struct.line_map, %struct.line_map* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %2
  br label %54

17:                                               ; preds = %8
  %18 = load %struct.line_map*, %struct.line_map** %4, align 8
  %19 = getelementptr inbounds %struct.line_map, %struct.line_map* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %22 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %24 = load %struct.line_map*, %struct.line_map** %4, align 8
  %25 = call %struct.line_map* @INCLUDED_FROM(%struct.line_maps* %23, %struct.line_map* %24)
  store %struct.line_map* %25, %struct.line_map** %4, align 8
  %26 = load i32, i32* @stderr, align 4
  %27 = call i8* @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.line_map*, %struct.line_map** %4, align 8
  %29 = getelementptr inbounds %struct.line_map, %struct.line_map* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.line_map*, %struct.line_map** %4, align 8
  %32 = call i32 @LAST_SOURCE_LINE(%struct.line_map* %31)
  %33 = call i32 @fprintf(i32 %26, i8* %27, i8* %30, i32 %32)
  br label %34

34:                                               ; preds = %39, %17
  %35 = load %struct.line_map*, %struct.line_map** %4, align 8
  %36 = call i64 @MAIN_FILE_P(%struct.line_map* %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.line_maps*, %struct.line_maps** %3, align 8
  %41 = load %struct.line_map*, %struct.line_map** %4, align 8
  %42 = call %struct.line_map* @INCLUDED_FROM(%struct.line_maps* %40, %struct.line_map* %41)
  store %struct.line_map* %42, %struct.line_map** %4, align 8
  %43 = load i32, i32* @stderr, align 4
  %44 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.line_map*, %struct.line_map** %4, align 8
  %46 = getelementptr inbounds %struct.line_map, %struct.line_map* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.line_map*, %struct.line_map** %4, align 8
  %49 = call i32 @LAST_SOURCE_LINE(%struct.line_map* %48)
  %50 = call i32 @fprintf(i32 %43, i8* %44, i8* %47, i32 %49)
  br label %34

51:                                               ; preds = %34
  %52 = load i32, i32* @stderr, align 4
  %53 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %16
  ret void
}

declare dso_local i64 @MAIN_FILE_P(%struct.line_map*) #1

declare dso_local %struct.line_map* @INCLUDED_FROM(%struct.line_maps*, %struct.line_map*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @LAST_SOURCE_LINE(%struct.line_map*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
