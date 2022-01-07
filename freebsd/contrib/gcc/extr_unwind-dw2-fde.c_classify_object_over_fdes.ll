; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_classify_object_over_fdes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-dw2-fde.c_classify_object_over_fdes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }
%struct.dwarf_cie = type { i32 }

@DW_EH_PE_absptr = common dso_local global i32 0, align 4
@DW_EH_PE_omit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.object*, %struct.TYPE_11__*)* @classify_object_over_fdes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @classify_object_over_fdes(%struct.object* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.dwarf_cie*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwarf_cie*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.object* %0, %struct.object** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store %struct.dwarf_cie* null, %struct.dwarf_cie** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load i32, i32* @DW_EH_PE_absptr, align 4
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %109, %2
  %14 = load %struct.object*, %struct.object** %3, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = call i32 @last_fde(%struct.object* %14, %struct.TYPE_11__* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %112

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %109

25:                                               ; preds = %19
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = call %struct.dwarf_cie* @get_cie(%struct.TYPE_11__* %26)
  store %struct.dwarf_cie* %27, %struct.dwarf_cie** %9, align 8
  %28 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %29 = load %struct.dwarf_cie*, %struct.dwarf_cie** %5, align 8
  %30 = icmp ne %struct.dwarf_cie* %28, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  store %struct.dwarf_cie* %32, %struct.dwarf_cie** %5, align 8
  %33 = load %struct.dwarf_cie*, %struct.dwarf_cie** %9, align 8
  %34 = call i32 @get_cie_encoding(%struct.dwarf_cie* %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.object*, %struct.object** %3, align 8
  %37 = call i32 @base_from_object(i32 %35, %struct.object* %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.object*, %struct.object** %3, align 8
  %39 = getelementptr inbounds %struct.object, %struct.object* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DW_EH_PE_omit, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.object*, %struct.object** %3, align 8
  %48 = getelementptr inbounds %struct.object, %struct.object* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  br label %65

51:                                               ; preds = %31
  %52 = load %struct.object*, %struct.object** %3, align 8
  %53 = getelementptr inbounds %struct.object, %struct.object* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.object*, %struct.object** %3, align 8
  %61 = getelementptr inbounds %struct.object, %struct.object* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %51
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %25
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @read_encoded_value_with_base(i32 %67, i32 %68, i32 %71, i32* %11)
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @size_of_encoded_value(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %76, 8
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 %79, 3
  %81 = zext i32 %80 to i64
  %82 = shl i64 1, %81
  %83 = sub nsw i64 %82, 1
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %86

85:                                               ; preds = %66
  store i32 -1, i32* %10, align 4
  br label %86

86:                                               ; preds = %85, %78
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %109

92:                                               ; preds = %86
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.object*, %struct.object** %3, align 8
  %99 = getelementptr inbounds %struct.object, %struct.object* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ult i8* %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.object*, %struct.object** %3, align 8
  %107 = getelementptr inbounds %struct.object, %struct.object* %106, i32 0, i32 0
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %102, %92
  br label %109

109:                                              ; preds = %108, %91, %24
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %111 = call %struct.TYPE_11__* @next_fde(%struct.TYPE_11__* %110)
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %4, align 8
  br label %13

112:                                              ; preds = %13
  %113 = load i64, i64* %6, align 8
  ret i64 %113
}

declare dso_local i32 @last_fde(%struct.object*, %struct.TYPE_11__*) #1

declare dso_local %struct.dwarf_cie* @get_cie(%struct.TYPE_11__*) #1

declare dso_local i32 @get_cie_encoding(%struct.dwarf_cie*) #1

declare dso_local i32 @base_from_object(i32, %struct.object*) #1

declare dso_local i32 @read_encoded_value_with_base(i32, i32, i32, i32*) #1

declare dso_local i32 @size_of_encoded_value(i32) #1

declare dso_local %struct.TYPE_11__* @next_fde(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
