; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_range_type_named.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_range_type_named.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@builtin_type_int = common dso_local global %struct.type* null, align 8
@TYPE_CODE_RANGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"___XD\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"? .. ?\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"___L\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" .. \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"___U\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ui_file*)* @print_range_type_named to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_range_type_named(i8* %0, %struct.ui_file* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call %struct.type* @ada_find_any_type(i8* %13)
  store %struct.type* %14, %struct.type** %5, align 8
  %15 = load %struct.type*, %struct.type** %5, align 8
  %16 = icmp eq %struct.type* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %18, %struct.type** %6, align 8
  br label %30

19:                                               ; preds = %2
  %20 = load %struct.type*, %struct.type** %5, align 8
  %21 = call i64 @TYPE_CODE(%struct.type* %20)
  %22 = load i64, i64* @TYPE_CODE_RANGE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.type*, %struct.type** %5, align 8
  %26 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %25)
  store %struct.type* %26, %struct.type** %6, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load %struct.type*, %struct.type** %5, align 8
  store %struct.type* %28, %struct.type** %6, align 8
  br label %29

29:                                               ; preds = %27, %24
  br label %30

30:                                               ; preds = %29, %17
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @strstr(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.type*, %struct.type** %5, align 8
  %37 = icmp eq %struct.type* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %40 = call i32 @fprintf_filtered(%struct.ui_file* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %96

41:                                               ; preds = %35, %30
  %42 = load i8*, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.type*, %struct.type** %5, align 8
  %46 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %47 = call i32 @print_range(%struct.type* %45, %struct.ui_file* %46)
  br label %95

48:                                               ; preds = %41
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %10, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 5
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i8* @strchr(i8* %57, i8 signext 95)
  store i8* %58, i8** %11, align 8
  store i32 1, i32* %12, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 76
  br i1 %62, label %63, label %70

63:                                               ; preds = %48
  %64 = load %struct.type*, %struct.type** %5, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %67 = call i32 @print_range_bound(%struct.type* %64, i8* %65, i32* %12, %struct.ui_file* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8* %69, i8** %9, align 8
  br label %76

70:                                               ; preds = %48
  %71 = load %struct.type*, %struct.type** %5, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %75 = call i32 @print_dynamic_range_bound(%struct.type* %71, i8* %72, i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %74)
  br label %76

76:                                               ; preds = %70, %63
  %77 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %78 = call i32 @fprintf_filtered(%struct.ui_file* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i8*, i8** %9, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 85
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.type*, %struct.type** %5, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %87 = call i32 @print_range_bound(%struct.type* %84, i8* %85, i32* %12, %struct.ui_file* %86)
  br label %94

88:                                               ; preds = %76
  %89 = load %struct.type*, %struct.type** %5, align 8
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %93 = call i32 @print_dynamic_range_bound(%struct.type* %89, i8* %90, i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.ui_file* %92)
  br label %94

94:                                               ; preds = %88, %83
  br label %95

95:                                               ; preds = %94, %44
  br label %96

96:                                               ; preds = %95, %38
  ret void
}

declare dso_local %struct.type* @ada_find_any_type(i8*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @print_range(%struct.type*, %struct.ui_file*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @print_range_bound(%struct.type*, i8*, i32*, %struct.ui_file*) #1

declare dso_local i32 @print_dynamic_range_bound(%struct.type*, i8*, i32, i8*, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
