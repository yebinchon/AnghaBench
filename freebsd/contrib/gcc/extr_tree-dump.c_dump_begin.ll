; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_dump_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_file_info = type { i32, i32 }

@TDI_none = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"could not open dump file %qs: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dump_begin(i32 %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dump_file_info*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @TDI_none, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @dump_enabled_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %2
  store i32* null, i32** %3, align 8
  br label %52

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @get_dump_file_name(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.dump_file_info* @get_dump_file_info(i32 %20)
  store %struct.dump_file_info* %21, %struct.dump_file_info** %7, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.dump_file_info*, %struct.dump_file_info** %7, align 8
  %24 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %29 = call i32* @fopen(i8* %22, i8* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %17
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* @errno, align 4
  %35 = call i8* @strerror(i32 %34)
  %36 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %35)
  br label %40

37:                                               ; preds = %17
  %38 = load %struct.dump_file_info*, %struct.dump_file_info** %7, align 8
  %39 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @free(i8* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.dump_file_info*, %struct.dump_file_info** %7, align 8
  %47 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  store i32 %48, i32* %49, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32*, i32** %8, align 8
  store i32* %51, i32** %3, align 8
  br label %52

52:                                               ; preds = %50, %16
  %53 = load i32*, i32** %3, align 8
  ret i32* %53
}

declare dso_local i32 @dump_enabled_p(i32) #1

declare dso_local i8* @get_dump_file_name(i32) #1

declare dso_local %struct.dump_file_info* @get_dump_file_info(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
