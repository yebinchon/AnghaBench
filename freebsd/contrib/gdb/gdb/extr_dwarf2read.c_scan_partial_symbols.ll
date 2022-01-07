; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_scan_partial_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_scan_partial_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwarf2_cu = type { %struct.objfile* }
%struct.objfile = type { i32* }
%struct.partial_die_info = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*, i32*, %struct.dwarf2_cu*, i8*)* @scan_partial_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scan_partial_symbols(i8* %0, i32* %1, i32* %2, %struct.dwarf2_cu* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dwarf2_cu*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.objfile*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.partial_die_info, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.dwarf2_cu* %3, %struct.dwarf2_cu** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %16 = getelementptr inbounds %struct.dwarf2_cu, %struct.dwarf2_cu* %15, i32 0, i32 0
  %17 = load %struct.objfile*, %struct.objfile** %16, align 8
  store %struct.objfile* %17, %struct.objfile** %11, align 8
  %18 = load %struct.objfile*, %struct.objfile** %11, align 8
  %19 = getelementptr inbounds %struct.objfile, %struct.objfile* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %12, align 8
  br label %21

21:                                               ; preds = %5, %133
  store i32 0, i32* %14, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %25 = call i8* @read_partial_die(%struct.partial_die_info* %13, i32* %22, i8* %23, %struct.dwarf2_cu* %24)
  store i8* %25, i8** %6, align 8
  %26 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 134
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 135
  br i1 %36, label %37, label %120

37:                                               ; preds = %33, %29, %21
  %38 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %118 [
    i32 132, label %40
    i32 128, label %74
    i32 130, label %74
    i32 129, label %74
    i32 136, label %83
    i32 133, label %83
    i32 135, label %93
    i32 137, label %103
    i32 131, label %103
    i32 134, label %107
  ]

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %56, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %8, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %54
  %65 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @add_partial_symbol(%struct.partial_die_info* %13, %struct.dwarf2_cu* %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %40
  br label %119

74:                                               ; preds = %37, %37, %37
  %75 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @add_partial_symbol(%struct.partial_die_info* %13, %struct.dwarf2_cu* %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %119

83:                                               ; preds = %37, %37
  %84 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = call i8* @add_partial_structure(%struct.partial_die_info* %13, i8* %88, %struct.dwarf2_cu* %89, i8* %90)
  store i8* %91, i8** %6, align 8
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %87, %83
  br label %119

93:                                               ; preds = %37
  %94 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = call i8* @add_partial_enumeration(%struct.partial_die_info* %13, i8* %98, %struct.dwarf2_cu* %99, i8* %100)
  store i8* %101, i8** %6, align 8
  store i32 1, i32* %14, align 4
  br label %102

102:                                              ; preds = %97, %93
  br label %119

103:                                              ; preds = %37, %37
  %104 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 @add_partial_symbol(%struct.partial_die_info* %13, %struct.dwarf2_cu* %104, i8* %105)
  br label %119

107:                                              ; preds = %37
  %108 = load i8*, i8** %10, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %111

111:                                              ; preds = %110, %107
  %112 = load i8*, i8** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i8* @add_partial_namespace(%struct.partial_die_info* %13, i8* %112, i32* %113, i32* %114, %struct.dwarf2_cu* %115, i8* %116)
  store i8* %117, i8** %6, align 8
  store i32 1, i32* %14, align 4
  br label %119

118:                                              ; preds = %37
  br label %119

119:                                              ; preds = %118, %111, %103, %102, %92, %82, %73
  br label %120

120:                                              ; preds = %119, %33
  %121 = getelementptr inbounds %struct.partial_die_info, %struct.partial_die_info* %13, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %120
  br label %134

125:                                              ; preds = %120
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load i8*, i8** %6, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load %struct.dwarf2_cu*, %struct.dwarf2_cu** %9, align 8
  %132 = call i8* @locate_pdi_sibling(%struct.partial_die_info* %13, i8* %129, i32* %130, %struct.dwarf2_cu* %131)
  store i8* %132, i8** %6, align 8
  br label %133

133:                                              ; preds = %128, %125
  br label %21

134:                                              ; preds = %124
  %135 = load i8*, i8** %6, align 8
  ret i8* %135
}

declare dso_local i8* @read_partial_die(%struct.partial_die_info*, i32*, i8*, %struct.dwarf2_cu*) #1

declare dso_local i32 @add_partial_symbol(%struct.partial_die_info*, %struct.dwarf2_cu*, i8*) #1

declare dso_local i8* @add_partial_structure(%struct.partial_die_info*, i8*, %struct.dwarf2_cu*, i8*) #1

declare dso_local i8* @add_partial_enumeration(%struct.partial_die_info*, i8*, %struct.dwarf2_cu*, i8*) #1

declare dso_local i8* @add_partial_namespace(%struct.partial_die_info*, i8*, i32*, i32*, %struct.dwarf2_cu*, i8*) #1

declare dso_local i8* @locate_pdi_sibling(%struct.partial_die_info*, i8*, i32*, %struct.dwarf2_cu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
