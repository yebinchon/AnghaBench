; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_lookup_inclusion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_lookup_inclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { i8*, %struct.macro_source_file*, %struct.macro_source_file* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_source_file* @macro_lookup_inclusion(%struct.macro_source_file* %0, i8* %1) #0 {
  %3 = alloca %struct.macro_source_file*, align 8
  %4 = alloca %struct.macro_source_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.macro_source_file*, align 8
  %9 = alloca %struct.macro_source_file*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.macro_source_file*, align 8
  %12 = alloca i32, align 4
  store %struct.macro_source_file* %0, %struct.macro_source_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %15 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %13, i8* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  store %struct.macro_source_file* %20, %struct.macro_source_file** %3, align 8
  br label %93

21:                                               ; preds = %2
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strlen(i8* %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %25 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %21
  %32 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %33 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %34, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %60

44:                                               ; preds = %31
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %47 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = call i64 @strcmp(i8* %45, i8* %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  store %struct.macro_source_file* %59, %struct.macro_source_file** %3, align 8
  br label %93

60:                                               ; preds = %44, %31, %21
  store %struct.macro_source_file* null, %struct.macro_source_file** %9, align 8
  store i32 0, i32* %10, align 4
  %61 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %62 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %61, i32 0, i32 2
  %63 = load %struct.macro_source_file*, %struct.macro_source_file** %62, align 8
  store %struct.macro_source_file* %63, %struct.macro_source_file** %8, align 8
  br label %64

64:                                               ; preds = %87, %60
  %65 = load %struct.macro_source_file*, %struct.macro_source_file** %8, align 8
  %66 = icmp ne %struct.macro_source_file* %65, null
  br i1 %66, label %67, label %91

67:                                               ; preds = %64
  %68 = load %struct.macro_source_file*, %struct.macro_source_file** %8, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call %struct.macro_source_file* @macro_lookup_inclusion(%struct.macro_source_file* %68, i8* %69)
  store %struct.macro_source_file* %70, %struct.macro_source_file** %11, align 8
  %71 = load %struct.macro_source_file*, %struct.macro_source_file** %11, align 8
  %72 = icmp ne %struct.macro_source_file* %71, null
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.macro_source_file*, %struct.macro_source_file** %11, align 8
  %75 = call i32 @inclusion_depth(%struct.macro_source_file* %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  %77 = icmp ne %struct.macro_source_file* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78, %73
  %83 = load %struct.macro_source_file*, %struct.macro_source_file** %11, align 8
  store %struct.macro_source_file* %83, %struct.macro_source_file** %9, align 8
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %82, %78
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.macro_source_file*, %struct.macro_source_file** %8, align 8
  %89 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %88, i32 0, i32 1
  %90 = load %struct.macro_source_file*, %struct.macro_source_file** %89, align 8
  store %struct.macro_source_file* %90, %struct.macro_source_file** %8, align 8
  br label %64

91:                                               ; preds = %64
  %92 = load %struct.macro_source_file*, %struct.macro_source_file** %9, align 8
  store %struct.macro_source_file* %92, %struct.macro_source_file** %3, align 8
  br label %93

93:                                               ; preds = %91, %58, %19
  %94 = load %struct.macro_source_file*, %struct.macro_source_file** %3, align 8
  ret %struct.macro_source_file* %94
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @inclusion_depth(%struct.macro_source_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
