; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_get_dump_file_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-dump.c_get_dump_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dump_file_info = type { i64, i64, i32, i32 }

@TDI_none = common dso_local global i32 0, align 4
@TDF_TREE = common dso_local global i32 0, align 4
@TDF_IPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c".%03d%c\00", align 1
@dump_base_name = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_dump_file_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [10 x i8], align 1
  %5 = alloca %struct.dump_file_info*, align 8
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TDI_none, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %62

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.dump_file_info* @get_dump_file_info(i32 %12)
  store %struct.dump_file_info* %13, %struct.dump_file_info** %5, align 8
  %14 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %15 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store i8* null, i8** %2, align 8
  br label %62

19:                                               ; preds = %11
  %20 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %21 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %25, align 1
  br label %55

26:                                               ; preds = %19
  %27 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %28 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TDF_TREE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8 116, i8* %6, align 1
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %36 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @TDF_IPA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i8 105, i8* %6, align 1
  br label %43

42:                                               ; preds = %34
  store i8 114, i8* %6, align 1
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %33
  %45 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %46 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %47 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i8, i8* %6, align 1
  %50 = call i64 @snprintf(i8* %45, i32 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %48, i8 signext %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  store i8 0, i8* %53, align 1
  br label %54

54:                                               ; preds = %52, %44
  br label %55

55:                                               ; preds = %54, %24
  %56 = load i32, i32* @dump_base_name, align 4
  %57 = getelementptr inbounds [10 x i8], [10 x i8]* %4, i64 0, i64 0
  %58 = load %struct.dump_file_info*, %struct.dump_file_info** %5, align 8
  %59 = getelementptr inbounds %struct.dump_file_info, %struct.dump_file_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @concat(i32 %56, i8* %57, i32 %60, i32* null)
  store i8* %61, i8** %2, align 8
  br label %62

62:                                               ; preds = %55, %18, %10
  %63 = load i8*, i8** %2, align 8
  ret i8* %63
}

declare dso_local %struct.dump_file_info* @get_dump_file_info(i32) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i64, i8 signext) #1

declare dso_local i8* @concat(i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
