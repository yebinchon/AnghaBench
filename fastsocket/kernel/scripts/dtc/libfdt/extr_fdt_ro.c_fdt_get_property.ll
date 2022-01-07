; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_property.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/dtc/libfdt/extr_fdt_ro.c_fdt_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdt_property = type { i32, i32 }

@FDT_ERR_TRUNCATED = common dso_local global i32 0, align 4
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@FDT_ERR_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fdt_property* @fdt_get_property(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.fdt_property*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fdt_property*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @fdt_check_header(i8* %17)
  store i32 %18, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @_fdt_check_node_offset(i8* %21, i32 %22)
  store i32 %23, i32* %15, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %4
  br label %97

26:                                               ; preds = %20
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %14, align 4
  br label %28

28:                                               ; preds = %92, %26
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %13, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @fdt_next_tag(i8* %30, i32 %31, i32* %14)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %82 [
    i32 131, label %34
    i32 132, label %37
    i32 130, label %37
    i32 129, label %37
    i32 128, label %38
  ]

34:                                               ; preds = %28
  %35 = load i32, i32* @FDT_ERR_TRUNCATED, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %15, align 4
  br label %97

37:                                               ; preds = %28, %28, %28
  br label %85

38:                                               ; preds = %28
  %39 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %15, align 4
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call %struct.fdt_property* @fdt_offset_ptr(i8* %41, i32 %42, i32 8)
  store %struct.fdt_property* %43, %struct.fdt_property** %11, align 8
  %44 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %45 = icmp ne %struct.fdt_property* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %97

47:                                               ; preds = %38
  %48 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %49 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fdt32_to_cpu(i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @fdt_string(i8* %52, i32 %53)
  %55 = load i8*, i8** %8, align 8
  %56 = call i32 @strcmp(i32 %54, i8* %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %47
  %59 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %60 = getelementptr inbounds %struct.fdt_property, %struct.fdt_property* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fdt32_to_cpu(i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call %struct.fdt_property* @fdt_offset_ptr(i8* %63, i32 %64, i32 %68)
  store %struct.fdt_property* %69, %struct.fdt_property** %11, align 8
  %70 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  %71 = icmp ne %struct.fdt_property* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %58
  br label %97

73:                                               ; preds = %58
  %74 = load i32*, i32** %9, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load %struct.fdt_property*, %struct.fdt_property** %11, align 8
  store %struct.fdt_property* %80, %struct.fdt_property** %5, align 8
  br label %104

81:                                               ; preds = %47
  br label %85

82:                                               ; preds = %28
  %83 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %15, align 4
  br label %97

85:                                               ; preds = %81, %37
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 132
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 130
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  br i1 %93, label %28, label %94

94:                                               ; preds = %92
  %95 = load i32, i32* @FDT_ERR_NOTFOUND, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %15, align 4
  br label %97

97:                                               ; preds = %94, %82, %72, %46, %34, %25
  %98 = load i32*, i32** %9, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %97
  store %struct.fdt_property* null, %struct.fdt_property** %5, align 8
  br label %104

104:                                              ; preds = %103, %79
  %105 = load %struct.fdt_property*, %struct.fdt_property** %5, align 8
  ret %struct.fdt_property* %105
}

declare dso_local i32 @fdt_check_header(i8*) #1

declare dso_local i32 @_fdt_check_node_offset(i8*, i32) #1

declare dso_local i32 @fdt_next_tag(i8*, i32, i32*) #1

declare dso_local %struct.fdt_property* @fdt_offset_ptr(i8*, i32, i32) #1

declare dso_local i32 @fdt32_to_cpu(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @fdt_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
