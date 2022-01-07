; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_output_cie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_output_cie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cie_entry = type { i32, i32, i32, %struct.cfi_insn_data*, %struct.cfi_insn_data*, %struct.TYPE_4__, i64, i8* }
%struct.cfi_insn_data = type { %struct.cfi_insn_data* }
%struct.TYPE_4__ = type { i32*, i8*, i64, i32* }

@O_subtract = common dso_local global i8* null, align 8
@DW_CIE_VERSION = common dso_local global i32 0, align 4
@DW_EH_PE_omit = common dso_local global i32 0, align 4
@DWARF2_LINE_MIN_INSN_LENGTH = common dso_local global i32 0, align 4
@DWARF2_CIE_DATA_ALIGNMENT = common dso_local global i32 0, align 4
@DW_EH_PE_pcrel = common dso_local global i32 0, align 4
@DW_EH_PE_sdata4 = common dso_local global i32 0, align 4
@DW_CFA_nop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cie_entry*)* @output_cie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_cie(%struct.cie_entry* %0) #0 {
  %2 = alloca %struct.cie_entry*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_4__, align 8
  %6 = alloca %struct.cfi_insn_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cie_entry* %0, %struct.cie_entry** %2, align 8
  %9 = call i8* (...) @symbol_temp_new_now()
  %10 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %11 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = call i32* (...) @symbol_temp_make()
  store i32* %12, i32** %3, align 8
  %13 = call i32* (...) @symbol_temp_make()
  store i32* %13, i32** %4, align 8
  %14 = load i8*, i8** @O_subtract, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  store i32* %16, i32** %17, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = call i32 @emit_expr(%struct.TYPE_4__* %5, i32 4)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @symbol_set_value_now(i32* %22)
  %24 = call i32 @out_four(i32 0)
  %25 = load i32, i32* @DW_CIE_VERSION, align 4
  %26 = call i32 @out_one(i32 %25)
  %27 = call i32 @out_one(i32 122)
  %28 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %29 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DW_EH_PE_omit, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = call i32 @out_one(i32 80)
  br label %35

35:                                               ; preds = %33, %1
  %36 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %37 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DW_EH_PE_omit, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @out_one(i32 76)
  br label %43

43:                                               ; preds = %41, %35
  %44 = call i32 @out_one(i32 82)
  %45 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %46 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %45, i32 0, i32 6
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 @out_one(i32 83)
  br label %51

51:                                               ; preds = %49, %43
  %52 = call i32 @out_one(i32 0)
  %53 = load i32, i32* @DWARF2_LINE_MIN_INSN_LENGTH, align 4
  %54 = call i32 @out_uleb128(i32 %53)
  %55 = load i32, i32* @DWARF2_CIE_DATA_ALIGNMENT, align 4
  %56 = call i32 @out_sleb128(i32 %55)
  %57 = load i32, i32* @DW_CIE_VERSION, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %51
  %60 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %61 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @out_one(i32 %62)
  br label %69

64:                                               ; preds = %51
  %65 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %66 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @out_uleb128(i32 %67)
  br label %69

69:                                               ; preds = %64, %59
  %70 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %71 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DW_EH_PE_omit, align 4
  %74 = icmp ne i32 %72, %73
  %75 = zext i1 %74 to i32
  %76 = add nsw i32 1, %75
  store i32 %76, i32* %7, align 4
  %77 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %78 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @DW_EH_PE_omit, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %69
  %83 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %84 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @encoding_size(i32 %85)
  %87 = add nsw i32 1, %86
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %82, %69
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @out_uleb128(i32 %91)
  %93 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %94 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @DW_EH_PE_omit, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %90
  %99 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %100 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @encoding_size(i32 %101)
  store i32 %102, i32* %8, align 4
  %103 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %104 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @out_one(i32 %105)
  %107 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %108 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %107, i32 0, i32 5
  %109 = bitcast %struct.TYPE_4__* %5 to i8*
  %110 = bitcast %struct.TYPE_4__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 32, i1 false)
  %111 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %112 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, 112
  %115 = load i32, i32* @DW_EH_PE_pcrel, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %98
  %118 = call i32 (...) @abort() #4
  unreachable

119:                                              ; preds = %98
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @emit_expr(%struct.TYPE_4__* %5, i32 %120)
  br label %122

122:                                              ; preds = %119
  br label %123

123:                                              ; preds = %122, %90
  %124 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %125 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DW_EH_PE_omit, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %131 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @out_one(i32 %132)
  br label %134

134:                                              ; preds = %129, %123
  %135 = load i32, i32* @DW_EH_PE_sdata4, align 4
  %136 = call i32 @out_one(i32 %135)
  %137 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %138 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %137, i32 0, i32 4
  %139 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %138, align 8
  %140 = icmp ne %struct.cfi_insn_data* %139, null
  br i1 %140, label %141, label %159

141:                                              ; preds = %134
  %142 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %143 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %142, i32 0, i32 4
  %144 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %143, align 8
  store %struct.cfi_insn_data* %144, %struct.cfi_insn_data** %6, align 8
  br label %145

145:                                              ; preds = %154, %141
  %146 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %147 = load %struct.cie_entry*, %struct.cie_entry** %2, align 8
  %148 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %147, i32 0, i32 3
  %149 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %148, align 8
  %150 = icmp ne %struct.cfi_insn_data* %146, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %145
  %152 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %153 = call i32 @output_cfi_insn(%struct.cfi_insn_data* %152)
  br label %154

154:                                              ; preds = %151
  %155 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %6, align 8
  %156 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %155, i32 0, i32 0
  %157 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %156, align 8
  store %struct.cfi_insn_data* %157, %struct.cfi_insn_data** %6, align 8
  br label %145

158:                                              ; preds = %145
  br label %159

159:                                              ; preds = %158, %134
  %160 = load i32, i32* @DW_CFA_nop, align 4
  %161 = call i32 @frag_align(i32 2, i32 %160, i32 0)
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @symbol_set_value_now(i32* %162)
  ret void
}

declare dso_local i8* @symbol_temp_new_now(...) #1

declare dso_local i32* @symbol_temp_make(...) #1

declare dso_local i32 @emit_expr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @symbol_set_value_now(i32*) #1

declare dso_local i32 @out_four(i32) #1

declare dso_local i32 @out_one(i32) #1

declare dso_local i32 @out_uleb128(i32) #1

declare dso_local i32 @out_sleb128(i32) #1

declare dso_local i32 @encoding_size(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @output_cfi_insn(%struct.cfi_insn_data*) #1

declare dso_local i32 @frag_align(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
