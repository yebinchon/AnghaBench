; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_linear_search_fdes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_linear_search_fdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64, i8* }
%struct.dwarf_cie = type { i32 }

@DW_EH_PE_absptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (%struct.object*, %struct.TYPE_12__*, i8*)* @linear_search_fdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @linear_search_fdes(%struct.object* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.object*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dwarf_cie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dwarf_cie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.object* %0, %struct.object** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.dwarf_cie* null, %struct.dwarf_cie** %8, align 8
  %16 = load %struct.object*, %struct.object** %5, align 8
  %17 = getelementptr inbounds %struct.object, %struct.object* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.object*, %struct.object** %5, align 8
  %22 = getelementptr inbounds %struct.object, %struct.object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.object*, %struct.object** %5, align 8
  %27 = call i32 @base_from_object(i32 %25, %struct.object* %26)
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %123, %3
  %29 = load %struct.object*, %struct.object** %5, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = call i32 @last_fde(%struct.object* %29, %struct.TYPE_12__* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %126

34:                                               ; preds = %28
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %123

40:                                               ; preds = %34
  %41 = load %struct.object*, %struct.object** %5, align 8
  %42 = getelementptr inbounds %struct.object, %struct.object* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = call %struct.dwarf_cie* @get_cie(%struct.TYPE_12__* %48)
  store %struct.dwarf_cie* %49, %struct.dwarf_cie** %11, align 8
  %50 = load %struct.dwarf_cie*, %struct.dwarf_cie** %11, align 8
  %51 = load %struct.dwarf_cie*, %struct.dwarf_cie** %8, align 8
  %52 = icmp ne %struct.dwarf_cie* %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load %struct.dwarf_cie*, %struct.dwarf_cie** %11, align 8
  store %struct.dwarf_cie* %54, %struct.dwarf_cie** %8, align 8
  %55 = load %struct.dwarf_cie*, %struct.dwarf_cie** %11, align 8
  %56 = call i32 @get_cie_encoding(%struct.dwarf_cie* %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.object*, %struct.object** %5, align 8
  %59 = call i32 @base_from_object(i32 %57, %struct.object* %58)
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %53, %47
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @DW_EH_PE_absptr, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = bitcast i8* %68 to i32*
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %12, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %123

81:                                               ; preds = %65
  br label %113

82:                                               ; preds = %61
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @read_encoded_value_with_base(i32 %83, i32 %84, i8* %87, i32* %12)
  store i8* %88, i8** %15, align 8
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 15
  %91 = load i8*, i8** %15, align 8
  %92 = call i8* @read_encoded_value_with_base(i32 %90, i32 0, i8* %91, i32* %13)
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @size_of_encoded_value(i32 %93)
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 8
  br i1 %97, label %98, label %105

98:                                               ; preds = %82
  %99 = load i32, i32* %14, align 4
  %100 = shl i32 %99, 3
  %101 = zext i32 %100 to i64
  %102 = shl i64 1, %101
  %103 = sub nsw i64 %102, 1
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %14, align 4
  br label %106

105:                                              ; preds = %82
  store i32 -1, i32* %14, align 4
  br label %106

106:                                              ; preds = %105, %98
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %14, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  br label %123

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %81
  %114 = load i8*, i8** %7, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32, i32* %12, align 4
  %117 = sub nsw i32 %115, %116
  %118 = load i32, i32* %13, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %121, %struct.TYPE_12__** %4, align 8
  br label %127

122:                                              ; preds = %113
  br label %123

123:                                              ; preds = %122, %111, %80, %39
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = call %struct.TYPE_12__* @next_fde(%struct.TYPE_12__* %124)
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %6, align 8
  br label %28

126:                                              ; preds = %28
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %127

127:                                              ; preds = %126, %120
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %128
}

declare dso_local i32 @base_from_object(i32, %struct.object*) #1

declare dso_local i32 @last_fde(%struct.object*, %struct.TYPE_12__*) #1

declare dso_local %struct.dwarf_cie* @get_cie(%struct.TYPE_12__*) #1

declare dso_local i32 @get_cie_encoding(%struct.dwarf_cie*) #1

declare dso_local i8* @read_encoded_value_with_base(i32, i32, i8*, i32*) #1

declare dso_local i32 @size_of_encoded_value(i32) #1

declare dso_local %struct.TYPE_12__* @next_fde(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
