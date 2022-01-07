; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_pasted_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf32-spu.c_pasted_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.bfd_link_order* }
%struct.bfd_link_order = type { i64, %struct.TYPE_18__, %struct.bfd_link_order* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.bfd_link_info = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (i32, %struct.TYPE_20__*)* }
%struct._spu_elf_section_data = type { %struct.spu_elf_stack_info* }
%struct.spu_elf_stack_info = type { i32, %struct.function_info* }
%struct.function_info = type { %struct.function_info* }
%struct.TYPE_21__ = type { i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_indirect_link_order = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%A link_order not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.bfd_link_info*)* @pasted_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasted_function(%struct.TYPE_20__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.bfd_link_order*, align 8
  %7 = alloca %struct._spu_elf_section_data*, align 8
  %8 = alloca %struct.spu_elf_stack_info*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.function_info*, align 8
  %11 = alloca %struct.function_info*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %12 = call %struct.TYPE_21__* @bfd_zmalloc(i32 16)
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %9, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %29 = call i32 @_bfd_elf_section_from_bfd_section(i32 %27, %struct.TYPE_20__* %28)
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = call %struct.function_info* @maybe_insert_function(%struct.TYPE_20__* %32, %struct.TYPE_21__* %33, i32 %34, i32 %35)
  store %struct.function_info* %36, %struct.function_info** %10, align 8
  %37 = load %struct.function_info*, %struct.function_info** %10, align 8
  %38 = icmp ne %struct.function_info* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %17
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %3, align 4
  br label %126

41:                                               ; preds = %17
  store %struct.function_info* null, %struct.function_info** %11, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load %struct.bfd_link_order*, %struct.bfd_link_order** %46, align 8
  store %struct.bfd_link_order* %47, %struct.bfd_link_order** %6, align 8
  br label %48

48:                                               ; preds = %112, %41
  %49 = load %struct.bfd_link_order*, %struct.bfd_link_order** %6, align 8
  %50 = icmp ne %struct.bfd_link_order* %49, null
  br i1 %50, label %51, label %116

51:                                               ; preds = %48
  %52 = load %struct.bfd_link_order*, %struct.bfd_link_order** %6, align 8
  %53 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %55, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = icmp eq %struct.TYPE_20__* %56, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %51
  %60 = load %struct.function_info*, %struct.function_info** %11, align 8
  %61 = icmp ne %struct.function_info* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.function_info*, %struct.function_info** %11, align 8
  %64 = getelementptr inbounds %struct.function_info, %struct.function_info* %63, i32 0, i32 0
  %65 = load %struct.function_info*, %struct.function_info** %64, align 8
  %66 = icmp ne %struct.function_info* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.function_info*, %struct.function_info** %11, align 8
  %69 = getelementptr inbounds %struct.function_info, %struct.function_info* %68, i32 0, i32 0
  %70 = load %struct.function_info*, %struct.function_info** %69, align 8
  store %struct.function_info* %70, %struct.function_info** %11, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.function_info*, %struct.function_info** %11, align 8
  %73 = load %struct.function_info*, %struct.function_info** %10, align 8
  %74 = getelementptr inbounds %struct.function_info, %struct.function_info* %73, i32 0, i32 0
  store %struct.function_info* %72, %struct.function_info** %74, align 8
  br label %75

75:                                               ; preds = %71, %59
  %76 = load i32, i32* @TRUE, align 4
  store i32 %76, i32* %3, align 4
  br label %126

77:                                               ; preds = %51
  %78 = load %struct.bfd_link_order*, %struct.bfd_link_order** %6, align 8
  %79 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @bfd_indirect_link_order, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %77
  %84 = load %struct.bfd_link_order*, %struct.bfd_link_order** %6, align 8
  %85 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %87, align 8
  %89 = call %struct._spu_elf_section_data* @spu_elf_section_data(%struct.TYPE_20__* %88)
  store %struct._spu_elf_section_data* %89, %struct._spu_elf_section_data** %7, align 8
  %90 = icmp ne %struct._spu_elf_section_data* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load %struct._spu_elf_section_data*, %struct._spu_elf_section_data** %7, align 8
  %93 = getelementptr inbounds %struct._spu_elf_section_data, %struct._spu_elf_section_data* %92, i32 0, i32 0
  %94 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %93, align 8
  store %struct.spu_elf_stack_info* %94, %struct.spu_elf_stack_info** %8, align 8
  %95 = icmp ne %struct.spu_elf_stack_info* %94, null
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %8, align 8
  %98 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %8, align 8
  %103 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %102, i32 0, i32 1
  %104 = load %struct.function_info*, %struct.function_info** %103, align 8
  %105 = load %struct.spu_elf_stack_info*, %struct.spu_elf_stack_info** %8, align 8
  %106 = getelementptr inbounds %struct.spu_elf_stack_info, %struct.spu_elf_stack_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.function_info, %struct.function_info* %104, i64 %109
  store %struct.function_info* %110, %struct.function_info** %11, align 8
  br label %111

111:                                              ; preds = %101, %96, %91, %83, %77
  br label %112

112:                                              ; preds = %111
  %113 = load %struct.bfd_link_order*, %struct.bfd_link_order** %6, align 8
  %114 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %113, i32 0, i32 2
  %115 = load %struct.bfd_link_order*, %struct.bfd_link_order** %114, align 8
  store %struct.bfd_link_order* %115, %struct.bfd_link_order** %6, align 8
  br label %48

116:                                              ; preds = %48
  %117 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %118 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %117, i32 0, i32 0
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 0
  %121 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %120, align 8
  %122 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = call i32 %121(i32 %122, %struct.TYPE_20__* %123)
  %125 = load i32, i32* @FALSE, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %116, %75, %39, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local %struct.TYPE_21__* @bfd_zmalloc(i32) #1

declare dso_local i32 @_bfd_elf_section_from_bfd_section(i32, %struct.TYPE_20__*) #1

declare dso_local %struct.function_info* @maybe_insert_function(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local %struct._spu_elf_section_data* @spu_elf_section_data(%struct.TYPE_20__*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
