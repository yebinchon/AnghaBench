; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_include.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_macrotab.c_macro_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macro_source_file = type { i32, %struct.macro_source_file*, %struct.macro_source_file*, i32, i32, %struct.macro_source_file* }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"both `%s' and `%s' allegedly #included at %s:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.macro_source_file* @macro_include(%struct.macro_source_file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.macro_source_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.macro_source_file*, align 8
  %8 = alloca %struct.macro_source_file**, align 8
  store %struct.macro_source_file* %0, %struct.macro_source_file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %10 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %9, i32 0, i32 5
  store %struct.macro_source_file** %10, %struct.macro_source_file*** %8, align 8
  br label %11

11:                                               ; preds = %25, %3
  %12 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %13 = load %struct.macro_source_file*, %struct.macro_source_file** %12, align 8
  %14 = icmp ne %struct.macro_source_file* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %17 = load %struct.macro_source_file*, %struct.macro_source_file** %16, align 8
  %18 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %15, %11
  %23 = phi i1 [ false, %11 ], [ %21, %15 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %27 = load %struct.macro_source_file*, %struct.macro_source_file** %26, align 8
  %28 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %27, i32 0, i32 1
  store %struct.macro_source_file** %28, %struct.macro_source_file*** %8, align 8
  br label %11

29:                                               ; preds = %22
  %30 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %31 = load %struct.macro_source_file*, %struct.macro_source_file** %30, align 8
  %32 = icmp ne %struct.macro_source_file* %31, null
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %36 = load %struct.macro_source_file*, %struct.macro_source_file** %35, align 8
  %37 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %71

40:                                               ; preds = %33
  %41 = load i8*, i8** %6, align 8
  %42 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %43 = load %struct.macro_source_file*, %struct.macro_source_file** %42, align 8
  %44 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %47 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %64, %40
  %52 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %53 = load %struct.macro_source_file*, %struct.macro_source_file** %52, align 8
  %54 = icmp ne %struct.macro_source_file* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %58 = load %struct.macro_source_file*, %struct.macro_source_file** %57, align 8
  %59 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %56, %60
  br label %62

62:                                               ; preds = %55, %51
  %63 = phi i1 [ false, %51 ], [ %61, %55 ]
  br i1 %63, label %64, label %70

64:                                               ; preds = %62
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %68 = load %struct.macro_source_file*, %struct.macro_source_file** %67, align 8
  %69 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %68, i32 0, i32 1
  store %struct.macro_source_file** %69, %struct.macro_source_file*** %8, align 8
  br label %51

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %33, %29
  %72 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %73 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call %struct.macro_source_file* @new_source_file(i32 %74, i8* %75)
  store %struct.macro_source_file* %76, %struct.macro_source_file** %7, align 8
  %77 = load %struct.macro_source_file*, %struct.macro_source_file** %4, align 8
  %78 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %79 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %78, i32 0, i32 2
  store %struct.macro_source_file* %77, %struct.macro_source_file** %79, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %82 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  %84 = load %struct.macro_source_file*, %struct.macro_source_file** %83, align 8
  %85 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %86 = getelementptr inbounds %struct.macro_source_file, %struct.macro_source_file* %85, i32 0, i32 1
  store %struct.macro_source_file* %84, %struct.macro_source_file** %86, align 8
  %87 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  %88 = load %struct.macro_source_file**, %struct.macro_source_file*** %8, align 8
  store %struct.macro_source_file* %87, %struct.macro_source_file** %88, align 8
  %89 = load %struct.macro_source_file*, %struct.macro_source_file** %7, align 8
  ret %struct.macro_source_file* %89
}

declare dso_local i32 @complaint(i32*, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.macro_source_file* @new_source_file(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
