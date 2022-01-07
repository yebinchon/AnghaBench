; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_output_fde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dw2gencfi.c_output_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fde_entry = type { i32, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { i32*, i8*, i32*, i64 }
%struct.cie_entry = type { i32* }
%struct.cfi_insn_data = type { %struct.cfi_insn_data* }

@O_subtract = common dso_local global i8* null, align 8
@O_symbol = common dso_local global i8* null, align 8
@DW_EH_PE_omit = common dso_local global i32 0, align 4
@DW_EH_PE_pcrel = common dso_local global i32 0, align 4
@DW_CFA_nop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fde_entry*, %struct.cie_entry*, %struct.cfi_insn_data*, i32)* @output_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_fde(%struct.fde_entry* %0, %struct.cie_entry* %1, %struct.cfi_insn_data* %2, i32 %3) #0 {
  %5 = alloca %struct.fde_entry*, align 8
  %6 = alloca %struct.cie_entry*, align 8
  %7 = alloca %struct.cfi_insn_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__, align 8
  %12 = alloca i32, align 4
  store %struct.fde_entry* %0, %struct.fde_entry** %5, align 8
  store %struct.cie_entry* %1, %struct.cie_entry** %6, align 8
  store %struct.cfi_insn_data* %2, %struct.cfi_insn_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = call i32* (...) @symbol_temp_make()
  store i32* %13, i32** %9, align 8
  %14 = call i32* (...) @symbol_temp_make()
  store i32* %14, i32** %10, align 8
  %15 = load i8*, i8** @O_subtract, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32* %17, i32** %18, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %19, i32** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = call i32 @emit_expr(%struct.TYPE_4__* %11, i32 4)
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @symbol_set_value_now(i32* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32* %25, i32** %26, align 8
  %27 = load %struct.cie_entry*, %struct.cie_entry** %6, align 8
  %28 = getelementptr inbounds %struct.cie_entry, %struct.cie_entry* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = call i32 @emit_expr(%struct.TYPE_4__* %11, i32 4)
  %32 = load i8*, i8** @O_symbol, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %32, i8** %33, align 8
  %34 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %35 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32* %36, i32** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = call i32 @emit_expr(%struct.TYPE_4__* %11, i32 4)
  %40 = load i8*, i8** @O_subtract, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  store i8* %40, i8** %41, align 8
  %42 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %43 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  store i32* %44, i32** %45, align 8
  %46 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %47 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32* %48, i32** %49, align 8
  %50 = call i32 @emit_expr(%struct.TYPE_4__* %11, i32 4)
  %51 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %52 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @encoding_size(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @out_uleb128(i32 %55)
  %57 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %58 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DW_EH_PE_omit, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %4
  %63 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %64 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %63, i32 0, i32 1
  %65 = bitcast %struct.TYPE_4__* %11 to i8*
  %66 = bitcast %struct.TYPE_4__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 32, i1 false)
  %67 = load %struct.fde_entry*, %struct.fde_entry** %5, align 8
  %68 = getelementptr inbounds %struct.fde_entry, %struct.fde_entry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 112
  %71 = load i32, i32* @DW_EH_PE_pcrel, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = call i32 (...) @abort() #4
  unreachable

75:                                               ; preds = %62
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @emit_expr(%struct.TYPE_4__* %11, i32 %76)
  br label %78

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78, %4
  br label %80

80:                                               ; preds = %86, %79
  %81 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %82 = icmp ne %struct.cfi_insn_data* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %85 = call i32 @output_cfi_insn(%struct.cfi_insn_data* %84)
  br label %86

86:                                               ; preds = %83
  %87 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %7, align 8
  %88 = getelementptr inbounds %struct.cfi_insn_data, %struct.cfi_insn_data* %87, i32 0, i32 0
  %89 = load %struct.cfi_insn_data*, %struct.cfi_insn_data** %88, align 8
  store %struct.cfi_insn_data* %89, %struct.cfi_insn_data** %7, align 8
  br label %80

90:                                               ; preds = %80
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @DW_CFA_nop, align 4
  %93 = call i32 @frag_align(i32 %91, i32 %92, i32 0)
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @symbol_set_value_now(i32* %94)
  ret void
}

declare dso_local i32* @symbol_temp_make(...) #1

declare dso_local i32 @emit_expr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @symbol_set_value_now(i32*) #1

declare dso_local i32 @encoding_size(i32) #1

declare dso_local i32 @out_uleb128(i32) #1

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
