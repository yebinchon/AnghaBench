; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_input_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_pex-common.c_pex_input_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pex_obj = type { i64, i64, i8*, i32, i32* }

@STDIN_FILE_NO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@PEX_BINARY_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pex_input_file(%struct.pex_obj* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.pex_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  store %struct.pex_obj* %0, %struct.pex_obj** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %8, align 8
  %11 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %12 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %3
  %16 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %17 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %22 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STDIN_FILE_NO, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %28 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %20, %3
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* @errno, align 4
  store i32* null, i32** %4, align 8
  br label %69

33:                                               ; preds = %26
  %34 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @temp_file(%struct.pex_obj* %34, i32 %35, i8* %36)
  store i8* %37, i8** %8, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32* null, i32** %4, align 8
  br label %69

41:                                               ; preds = %33
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @PEX_BINARY_OUTPUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %49 = call i32* @fopen(i8* %42, i8* %48)
  store i32* %49, i32** %9, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @free(i8* %53)
  store i32* null, i32** %4, align 8
  br label %69

55:                                               ; preds = %41
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %58 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %57, i32 0, i32 4
  store i32* %56, i32** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %61 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = icmp ne i8* %62, %63
  %65 = zext i1 %64 to i32
  %66 = load %struct.pex_obj*, %struct.pex_obj** %5, align 8
  %67 = getelementptr inbounds %struct.pex_obj, %struct.pex_obj* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %9, align 8
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %55, %52, %40, %31
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i8* @temp_file(%struct.pex_obj*, i32, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
