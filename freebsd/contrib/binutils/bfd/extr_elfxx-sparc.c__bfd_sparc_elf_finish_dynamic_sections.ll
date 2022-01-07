; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_finish_dynamic_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_finish_dynamic_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i64 }
%struct.TYPE_14__ = type { i64, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct._bfd_sparc_elf_link_hash_table = type { %struct.TYPE_13__*, i32, i64, i32, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SPARC_NOP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_sparc_elf_finish_dynamic_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct._bfd_sparc_elf_link_hash_table*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %11 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %12 = call %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info* %11)
  store %struct._bfd_sparc_elf_link_hash_table* %12, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %13 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %14 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.TYPE_14__* @bfd_get_section_by_name(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %7, align 8
  %19 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %20 = call %struct.TYPE_17__* @elf_hash_table(%struct.bfd_link_info* %19)
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %116

24:                                               ; preds = %2
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.TYPE_14__* @bfd_get_section_by_name(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %9, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = icmp ne %struct.TYPE_14__* %30, null
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi i1 [ false, %24 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @BFD_ASSERT(i32 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = call i32 @sparc_finish_dyn(i32* %36, %struct.bfd_link_info* %37, i32* %38, %struct.TYPE_14__* %39, %struct.TYPE_14__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %171

45:                                               ; preds = %32
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %45
  %51 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %52 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %50
  %56 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %57 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32*, i32** %4, align 8
  %62 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %63 = call i32 @sparc_vxworks_finish_shared_plt(i32* %61, %struct.bfd_link_info* %62)
  br label %68

64:                                               ; preds = %55
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %67 = call i32 @sparc_vxworks_finish_exec_plt(i32* %65, %struct.bfd_link_info* %66)
  br label %68

68:                                               ; preds = %64, %60
  br label %93

69:                                               ; preds = %50
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %74 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @memset(i64 %72, i32 0, i32 %75)
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @ABI_64_P(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %4, align 8
  %82 = load i64, i64* @SPARC_NOP, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = sub nsw i64 %89, 4
  %91 = call i32 @bfd_put_32(i32* %81, i64 %82, i64 %90)
  br label %92

92:                                               ; preds = %80, %69
  br label %93

93:                                               ; preds = %92, %68
  br label %94

94:                                               ; preds = %93, %45
  %95 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %96 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32*, i32** %4, align 8
  %101 = call i32 @ABI_64_P(i32* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99, %94
  br label %108

104:                                              ; preds = %99
  %105 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %106 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  br label %108

108:                                              ; preds = %104, %103
  %109 = phi i32 [ 0, %103 ], [ %107, %104 ]
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = call %struct.TYPE_15__* @elf_section_data(%struct.TYPE_16__* %112)
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i32 %109, i32* %115, align 4
  br label %116

116:                                              ; preds = %108, %2
  %117 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %118 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %117, i32 0, i32 0
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %118, align 8
  %120 = icmp ne %struct.TYPE_13__* %119, null
  br i1 %120, label %121, label %153

121:                                              ; preds = %116
  %122 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %123 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %122, i32 0, i32 0
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %121
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %130 = icmp ne %struct.TYPE_14__* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %136, %139
  br label %142

141:                                              ; preds = %128
  br label %142

142:                                              ; preds = %141, %131
  %143 = phi i64 [ %140, %131 ], [ 0, %141 ]
  store i64 %143, i64* %10, align 8
  %144 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %145 = load i32*, i32** %4, align 8
  %146 = load i64, i64* %10, align 8
  %147 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %148 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @SPARC_ELF_PUT_WORD(%struct._bfd_sparc_elf_link_hash_table* %144, i32* %145, i64 %146, i32 %151)
  br label %153

153:                                              ; preds = %142, %121, %116
  %154 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %155 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %154, i32 0, i32 0
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = icmp ne %struct.TYPE_13__* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %160 = call i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table* %159)
  %161 = load %struct._bfd_sparc_elf_link_hash_table*, %struct._bfd_sparc_elf_link_hash_table** %8, align 8
  %162 = getelementptr inbounds %struct._bfd_sparc_elf_link_hash_table, %struct._bfd_sparc_elf_link_hash_table* %161, i32 0, i32 0
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = call %struct.TYPE_15__* @elf_section_data(%struct.TYPE_16__* %165)
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  store i32 %160, i32* %168, align 4
  br label %169

169:                                              ; preds = %158, %153
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %43
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local %struct._bfd_sparc_elf_link_hash_table* @_bfd_sparc_elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_14__* @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local %struct.TYPE_17__* @elf_hash_table(%struct.bfd_link_info*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @sparc_finish_dyn(i32*, %struct.bfd_link_info*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*) #1

declare dso_local i32 @sparc_vxworks_finish_shared_plt(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @sparc_vxworks_finish_exec_plt(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ABI_64_P(i32*) #1

declare dso_local i32 @bfd_put_32(i32*, i64, i64) #1

declare dso_local %struct.TYPE_15__* @elf_section_data(%struct.TYPE_16__*) #1

declare dso_local i32 @SPARC_ELF_PUT_WORD(%struct._bfd_sparc_elf_link_hash_table*, i32*, i64, i32) #1

declare dso_local i32 @SPARC_ELF_WORD_BYTES(%struct._bfd_sparc_elf_link_hash_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
