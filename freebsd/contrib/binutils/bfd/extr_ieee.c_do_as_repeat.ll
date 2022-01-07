; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_as_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ieee.c_do_as_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64, i32, i64, i64 }

@ieee_set_current_section_enum = common dso_local global i32 0, align 4
@IEEE_SECTION_NUMBER_BASE = common dso_local global i64 0, align 8
@ieee_set_current_pc_enum = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EXEC_P = common dso_local global i32 0, align 4
@ieee_repeat_data_enum = common dso_local global i32 0, align 4
@ieee_load_constant_bytes_enum = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @do_as_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_as_repeat(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %104

10:                                               ; preds = %2
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = load i32, i32* @ieee_set_current_section_enum, align 4
  %13 = call i32 @ieee_write_byte(%struct.TYPE_8__* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %10
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE_SECTION_NUMBER_BASE, align 8
  %21 = add nsw i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @ieee_write_byte(%struct.TYPE_8__* %16, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %15
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = load i32, i32* @ieee_set_current_pc_enum, align 4
  %28 = ashr i32 %27, 8
  %29 = call i32 @ieee_write_byte(%struct.TYPE_8__* %26, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = load i32, i32* @ieee_set_current_pc_enum, align 4
  %34 = and i32 %33, 255
  %35 = call i32 @ieee_write_byte(%struct.TYPE_8__* %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IEEE_SECTION_NUMBER_BASE, align 8
  %43 = add nsw i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = call i32 @ieee_write_byte(%struct.TYPE_8__* %38, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37, %31, %25, %15, %10
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %106

49:                                               ; preds = %37
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EXEC_P, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @ieee_write_int(%struct.TYPE_8__* %57, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %106

65:                                               ; preds = %56
  br label %76

66:                                               ; preds = %49
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ieee_write_expression(%struct.TYPE_8__* %67, i32 0, i32 %70, i32 0, i32 0)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %3, align 4
  br label %106

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = load i32, i32* @ieee_repeat_data_enum, align 4
  %79 = call i32 @ieee_write_byte(%struct.TYPE_8__* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %101

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ieee_write_int(%struct.TYPE_8__* %82, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = load i32, i32* @ieee_load_constant_bytes_enum, align 4
  %91 = call i32 @ieee_write_byte(%struct.TYPE_8__* %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %95 = call i32 @ieee_write_byte(%struct.TYPE_8__* %94, i32 1)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = call i32 @ieee_write_byte(%struct.TYPE_8__* %98, i32 0)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97, %93, %88, %81, %76
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %106

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103, %2
  %105 = load i32, i32* @TRUE, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %104, %101, %73, %63, %47
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @ieee_write_byte(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @ieee_write_int(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @ieee_write_expression(%struct.TYPE_8__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
