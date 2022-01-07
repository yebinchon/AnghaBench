; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_add_fdes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_add_fdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64 }
%struct.fde_accumulator = type { i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.dwarf_cie = type { i32 }

@DW_EH_PE_absptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, %struct.fde_accumulator*, %struct.TYPE_12__*)* @add_fdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_fdes(%struct.object* %0, %struct.fde_accumulator* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.object*, align 8
  %5 = alloca %struct.fde_accumulator*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.dwarf_cie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.dwarf_cie*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.object* %0, %struct.object** %4, align 8
  store %struct.fde_accumulator* %1, %struct.fde_accumulator** %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  store %struct.dwarf_cie* null, %struct.dwarf_cie** %7, align 8
  %13 = load %struct.object*, %struct.object** %4, align 8
  %14 = getelementptr inbounds %struct.object, %struct.object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.object*, %struct.object** %4, align 8
  %19 = getelementptr inbounds %struct.object, %struct.object* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.object*, %struct.object** %4, align 8
  %24 = call i64 @base_from_object(i32 %22, %struct.object* %23)
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %99, %3
  %26 = load %struct.object*, %struct.object** %4, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = call i32 @last_fde(%struct.object* %26, %struct.TYPE_12__* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %102

31:                                               ; preds = %25
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %99

37:                                               ; preds = %31
  %38 = load %struct.object*, %struct.object** %4, align 8
  %39 = getelementptr inbounds %struct.object, %struct.object* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call %struct.dwarf_cie* @get_cie(%struct.TYPE_12__* %45)
  store %struct.dwarf_cie* %46, %struct.dwarf_cie** %10, align 8
  %47 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %48 = load %struct.dwarf_cie*, %struct.dwarf_cie** %7, align 8
  %49 = icmp ne %struct.dwarf_cie* %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  store %struct.dwarf_cie* %51, %struct.dwarf_cie** %7, align 8
  %52 = load %struct.dwarf_cie*, %struct.dwarf_cie** %10, align 8
  %53 = call i32 @get_cie_encoding(%struct.dwarf_cie* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.object*, %struct.object** %4, align 8
  %56 = call i64 @base_from_object(i32 %54, %struct.object* %55)
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %50, %44
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @DW_EH_PE_absptr, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i64*
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %99

70:                                               ; preds = %62
  br label %95

71:                                               ; preds = %58
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @read_encoded_value_with_base(i32 %72, i64 %73, i64 %76, i64* %11)
  %78 = load i32, i32* %8, align 4
  %79 = call i64 @size_of_encoded_value(i32 %78)
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ult i64 %80, 8
  br i1 %81, label %82, label %87

82:                                               ; preds = %71
  %83 = load i64, i64* %12, align 8
  %84 = shl i64 %83, 3
  %85 = shl i64 1, %84
  %86 = sub nsw i64 %85, 1
  store i64 %86, i64* %12, align 8
  br label %88

87:                                               ; preds = %71
  store i64 -1, i64* %12, align 8
  br label %88

88:                                               ; preds = %87, %82
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %12, align 8
  %91 = and i64 %89, %90
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %70
  %96 = load %struct.fde_accumulator*, %struct.fde_accumulator** %5, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = call i32 @fde_insert(%struct.fde_accumulator* %96, %struct.TYPE_12__* %97)
  br label %99

99:                                               ; preds = %95, %93, %69, %36
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = call %struct.TYPE_12__* @next_fde(%struct.TYPE_12__* %100)
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %6, align 8
  br label %25

102:                                              ; preds = %25
  ret void
}

declare dso_local i64 @base_from_object(i32, %struct.object*) #1

declare dso_local i32 @last_fde(%struct.object*, %struct.TYPE_12__*) #1

declare dso_local %struct.dwarf_cie* @get_cie(%struct.TYPE_12__*) #1

declare dso_local i32 @get_cie_encoding(%struct.dwarf_cie*) #1

declare dso_local i32 @read_encoded_value_with_base(i32, i64, i64, i64*) #1

declare dso_local i64 @size_of_encoded_value(i32) #1

declare dso_local i32 @fde_insert(%struct.fde_accumulator*, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @next_fde(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
