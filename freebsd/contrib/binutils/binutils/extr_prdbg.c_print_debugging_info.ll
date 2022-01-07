; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_print_debugging_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_print_debugging_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pr_handle = type { i8*, i32**, i32*, i32*, i64, i32*, i64, i32* }

@.str = private unnamed_addr constant [39 x i8] c"!_TAG_FILE_FORMAT\092\09/extended format/\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"!_TAG_FILE_SORTED\090\09/0=unsorted, 1=sorted/\0A\00", align 1
@.str.2 = private unnamed_addr constant [73 x i8] c"!_TAG_PROGRAM_AUTHOR\09Ian Lance Taylor, Salvador E. Tropea and others\09//\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"!_TAG_PROGRAM_NAME\09objdump\09/From GNU binutils/\0A\00", align 1
@tg_fns = common dso_local global i32 0, align 4
@pr_fns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @print_debugging_info(i32* %0, i8* %1, i32* %2, i32** %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.pr_handle, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32** %3, i32*** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 7
  store i32* %14, i32** %15, align 8
  %16 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 6
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 5
  store i32* null, i32** %17, align 8
  %18 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 2
  store i32* %20, i32** %21, align 8
  %22 = load i32**, i32*** %10, align 8
  %23 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 1
  store i32** %22, i32*** %23, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = getelementptr inbounds %struct.pr_handle, %struct.pr_handle* %13, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = load i64, i64* %12, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %6
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @fputs(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %29)
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32* %31)
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @fputs(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @fputs(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32* %35)
  br label %37

37:                                               ; preds = %28, %6
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i8*, i8** %8, align 8
  %42 = bitcast %struct.pr_handle* %13 to i8*
  %43 = call i64 @debug_write(i8* %41, i32* @tg_fns, i8* %42)
  br label %48

44:                                               ; preds = %37
  %45 = load i8*, i8** %8, align 8
  %46 = bitcast %struct.pr_handle* %13 to i8*
  %47 = call i64 @debug_write(i8* %45, i32* @pr_fns, i8* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %43, %40 ], [ %47, %44 ]
  ret i64 %49
}

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i64 @debug_write(i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
