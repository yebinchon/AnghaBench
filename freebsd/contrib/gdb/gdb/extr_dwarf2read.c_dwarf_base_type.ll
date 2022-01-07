; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_base_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32 }

@FT_VOID = common dso_local global i32 0, align 4
@FT_BOOLEAN = common dso_local global i32 0, align 4
@FT_DBL_PREC_COMPLEX = common dso_local global i32 0, align 4
@FT_COMPLEX = common dso_local global i32 0, align 4
@FT_DBL_PREC_FLOAT = common dso_local global i32 0, align 4
@FT_FLOAT = common dso_local global i32 0, align 4
@FT_SIGNED_CHAR = common dso_local global i32 0, align 4
@FT_SIGNED_SHORT = common dso_local global i32 0, align 4
@FT_SIGNED_INTEGER = common dso_local global i32 0, align 4
@FT_UNSIGNED_CHAR = common dso_local global i32 0, align 4
@FT_UNSIGNED_SHORT = common dso_local global i32 0, align 4
@FT_UNSIGNED_INTEGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (i32, i32, %struct.dwarf2_cu*)* @dwarf_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @dwarf_base_type(i32 %0, i32 %1, %struct.dwarf2_cu* %2) #0 {
  %4 = alloca %struct.type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwarf2_cu*, align 8
  %8 = alloca %struct.objfile*, align 8
  %9 = alloca %struct.type*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.dwarf2_cu* %2, %struct.dwarf2_cu** %7, align 8
  %10 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %11 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %10, i32 0, i32 0
  %12 = load %struct.objfile*, %struct.objfile** %11, align 8
  store %struct.objfile* %12, %struct.objfile** %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %108 [
    i32 135, label %14
    i32 134, label %20
    i32 133, label %26
    i32 132, label %41
    i32 131, label %56
    i32 130, label %76
    i32 129, label %82
    i32 128, label %102
  ]

14:                                               ; preds = %3
  %15 = load %struct.objfile*, %struct.objfile** %8, align 8
  %16 = load i32, i32* @FT_VOID, align 4
  %17 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %18 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %15, i32 %16, %struct.dwarf2_cu* %17)
  store %struct.type* %18, %struct.type** %9, align 8
  %19 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %19, %struct.type** %4, align 8
  br label %114

20:                                               ; preds = %3
  %21 = load %struct.objfile*, %struct.objfile** %8, align 8
  %22 = load i32, i32* @FT_BOOLEAN, align 4
  %23 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %24 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %21, i32 %22, %struct.dwarf2_cu* %23)
  store %struct.type* %24, %struct.type** %9, align 8
  %25 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %25, %struct.type** %4, align 8
  br label %114

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 16
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.objfile*, %struct.objfile** %8, align 8
  %31 = load i32, i32* @FT_DBL_PREC_COMPLEX, align 4
  %32 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %33 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %30, i32 %31, %struct.dwarf2_cu* %32)
  store %struct.type* %33, %struct.type** %9, align 8
  br label %39

34:                                               ; preds = %26
  %35 = load %struct.objfile*, %struct.objfile** %8, align 8
  %36 = load i32, i32* @FT_COMPLEX, align 4
  %37 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %38 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %35, i32 %36, %struct.dwarf2_cu* %37)
  store %struct.type* %38, %struct.type** %9, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %40, %struct.type** %4, align 8
  br label %114

41:                                               ; preds = %3
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 8
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.objfile*, %struct.objfile** %8, align 8
  %46 = load i32, i32* @FT_DBL_PREC_FLOAT, align 4
  %47 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %48 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %45, i32 %46, %struct.dwarf2_cu* %47)
  store %struct.type* %48, %struct.type** %9, align 8
  br label %54

49:                                               ; preds = %41
  %50 = load %struct.objfile*, %struct.objfile** %8, align 8
  %51 = load i32, i32* @FT_FLOAT, align 4
  %52 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %53 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %50, i32 %51, %struct.dwarf2_cu* %52)
  store %struct.type* %53, %struct.type** %9, align 8
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %55, %struct.type** %4, align 8
  br label %114

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %68 [
    i32 1, label %58
    i32 2, label %63
    i32 4, label %69
  ]

58:                                               ; preds = %56
  %59 = load %struct.objfile*, %struct.objfile** %8, align 8
  %60 = load i32, i32* @FT_SIGNED_CHAR, align 4
  %61 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %62 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %59, i32 %60, %struct.dwarf2_cu* %61)
  store %struct.type* %62, %struct.type** %9, align 8
  br label %74

63:                                               ; preds = %56
  %64 = load %struct.objfile*, %struct.objfile** %8, align 8
  %65 = load i32, i32* @FT_SIGNED_SHORT, align 4
  %66 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %67 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %64, i32 %65, %struct.dwarf2_cu* %66)
  store %struct.type* %67, %struct.type** %9, align 8
  br label %74

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %56, %68
  %70 = load %struct.objfile*, %struct.objfile** %8, align 8
  %71 = load i32, i32* @FT_SIGNED_INTEGER, align 4
  %72 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %73 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %70, i32 %71, %struct.dwarf2_cu* %72)
  store %struct.type* %73, %struct.type** %9, align 8
  br label %74

74:                                               ; preds = %69, %63, %58
  %75 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %75, %struct.type** %4, align 8
  br label %114

76:                                               ; preds = %3
  %77 = load %struct.objfile*, %struct.objfile** %8, align 8
  %78 = load i32, i32* @FT_SIGNED_CHAR, align 4
  %79 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %80 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %77, i32 %78, %struct.dwarf2_cu* %79)
  store %struct.type* %80, %struct.type** %9, align 8
  %81 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %81, %struct.type** %4, align 8
  br label %114

82:                                               ; preds = %3
  %83 = load i32, i32* %6, align 4
  switch i32 %83, label %94 [
    i32 1, label %84
    i32 2, label %89
    i32 4, label %95
  ]

84:                                               ; preds = %82
  %85 = load %struct.objfile*, %struct.objfile** %8, align 8
  %86 = load i32, i32* @FT_UNSIGNED_CHAR, align 4
  %87 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %88 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %85, i32 %86, %struct.dwarf2_cu* %87)
  store %struct.type* %88, %struct.type** %9, align 8
  br label %100

89:                                               ; preds = %82
  %90 = load %struct.objfile*, %struct.objfile** %8, align 8
  %91 = load i32, i32* @FT_UNSIGNED_SHORT, align 4
  %92 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %93 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %90, i32 %91, %struct.dwarf2_cu* %92)
  store %struct.type* %93, %struct.type** %9, align 8
  br label %100

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %82, %94
  %96 = load %struct.objfile*, %struct.objfile** %8, align 8
  %97 = load i32, i32* @FT_UNSIGNED_INTEGER, align 4
  %98 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %99 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %96, i32 %97, %struct.dwarf2_cu* %98)
  store %struct.type* %99, %struct.type** %9, align 8
  br label %100

100:                                              ; preds = %95, %89, %84
  %101 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %101, %struct.type** %4, align 8
  br label %114

102:                                              ; preds = %3
  %103 = load %struct.objfile*, %struct.objfile** %8, align 8
  %104 = load i32, i32* @FT_UNSIGNED_CHAR, align 4
  %105 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %106 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %103, i32 %104, %struct.dwarf2_cu* %105)
  store %struct.type* %106, %struct.type** %9, align 8
  %107 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %107, %struct.type** %4, align 8
  br label %114

108:                                              ; preds = %3
  %109 = load %struct.objfile*, %struct.objfile** %8, align 8
  %110 = load i32, i32* @FT_SIGNED_INTEGER, align 4
  %111 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %7, align 8
  %112 = call %struct.type* @dwarf2_fundamental_type(%struct.objfile* %109, i32 %110, %struct.dwarf2_cu* %111)
  store %struct.type* %112, %struct.type** %9, align 8
  %113 = load %struct.type*, %struct.type** %9, align 8
  store %struct.type* %113, %struct.type** %4, align 8
  br label %114

114:                                              ; preds = %108, %102, %100, %76, %74, %54, %39, %20, %14
  %115 = load %struct.type*, %struct.type** %4, align 8
  ret %struct.type* %115
}

declare dso_local %struct.type* @dwarf2_fundamental_type(%struct.objfile*, i32, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
