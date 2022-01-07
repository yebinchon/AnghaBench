; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_is_defined_archive_symbol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_elf_link_is_defined_archive_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_29__, %struct.TYPE_29__ }
%struct.TYPE_30__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@bfd_object = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @elf_link_is_defined_archive_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elf_link_is_defined_archive_symbol(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_27__* @_bfd_get_elt_at_filepos(%struct.TYPE_27__* %15, i32 %18)
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %4, align 8
  %20 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %21 = icmp eq %struct.TYPE_27__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @FALSE, align 4
  store i32 %23, i32* %3, align 4
  br label %139

24:                                               ; preds = %2
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %26 = load i32, i32* @bfd_object, align 4
  %27 = call i32 @bfd_check_format(%struct.TYPE_27__* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %3, align 4
  br label %139

31:                                               ; preds = %24
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %139

38:                                               ; preds = %31
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @DYNAMIC, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %47 = call i64 @elf_dynsymtab(%struct.TYPE_27__* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45, %38
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = call %struct.TYPE_24__* @elf_tdata(%struct.TYPE_27__* %50)
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 1
  store %struct.TYPE_29__* %52, %struct.TYPE_29__** %6, align 8
  br label %57

53:                                               ; preds = %45
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %55 = call %struct.TYPE_24__* @elf_tdata(%struct.TYPE_27__* %54)
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  store %struct.TYPE_29__* %56, %struct.TYPE_29__** %6, align 8
  br label %57

57:                                               ; preds = %53, %49
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %62 = call %struct.TYPE_30__* @get_elf_backend_data(%struct.TYPE_27__* %61)
  %63 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %60, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %69 = call i64 @elf_bad_symtab(%struct.TYPE_27__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %82

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %8, align 4
  %79 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %73, %71
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %3, align 4
  br label %139

87:                                               ; preds = %82
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call %struct.TYPE_28__* @bfd_elf_get_elf_syms(%struct.TYPE_27__* %88, %struct.TYPE_29__* %89, i32 %90, i32 %91, i32* null, i32* null, i32* null)
  store %struct.TYPE_28__* %92, %struct.TYPE_28__** %10, align 8
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %94 = icmp eq %struct.TYPE_28__* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @FALSE, align 4
  store i32 %96, i32* %3, align 4
  br label %139

97:                                               ; preds = %87
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %99, %struct.TYPE_28__** %11, align 8
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i64 %102
  store %struct.TYPE_28__* %103, %struct.TYPE_28__** %12, align 8
  br label %104

104:                                              ; preds = %132, %97
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %107 = icmp ult %struct.TYPE_28__* %105, %106
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %110 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @bfd_elf_string_from_elf_section(%struct.TYPE_27__* %109, i32 %112, i32 %115)
  store i8* %116, i8** %14, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %135

120:                                              ; preds = %108
  %121 = load i8*, i8** %14, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @strcmp(i8* %121, i32 %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %120
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %130 = call i32 @is_global_data_symbol_definition(%struct.TYPE_27__* %128, %struct.TYPE_28__* %129)
  store i32 %130, i32* %13, align 4
  br label %135

131:                                              ; preds = %120
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 1
  store %struct.TYPE_28__* %134, %struct.TYPE_28__** %11, align 8
  br label %104

135:                                              ; preds = %127, %119, %104
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %137 = call i32 @free(%struct.TYPE_28__* %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %95, %85, %36, %29, %22
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.TYPE_27__* @_bfd_get_elt_at_filepos(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @bfd_check_format(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @elf_dynsymtab(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_24__* @elf_tdata(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_30__* @get_elf_backend_data(%struct.TYPE_27__*) #1

declare dso_local i64 @elf_bad_symtab(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @bfd_elf_get_elf_syms(%struct.TYPE_27__*, %struct.TYPE_29__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @bfd_elf_string_from_elf_section(%struct.TYPE_27__*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @is_global_data_symbol_definition(%struct.TYPE_27__*, %struct.TYPE_28__*) #1

declare dso_local i32 @free(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
