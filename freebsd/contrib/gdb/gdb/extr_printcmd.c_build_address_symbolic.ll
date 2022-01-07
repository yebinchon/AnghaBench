; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_build_address_symbolic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_build_address_symbolic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimal_symbol = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i8* }
%struct.symtab_and_line = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@overlay_debugging = common dso_local global i64 0, align 8
@asm_demangle = common dso_local global i64 0, align 8
@max_symbolic_offset = common dso_local global i64 0, align 8
@print_symbol_filename = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_address_symbolic(i64 %0, i32 %1, i8** %2, i32* %3, i8** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.minimal_symbol*, align 8
  %17 = alloca %struct.symbol*, align 8
  %18 = alloca %struct.symtab*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.symtab_and_line, align 8
  %23 = alloca %struct.symtab_and_line, align 8
  store i64 %0, i64* %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store %struct.symtab* null, %struct.symtab** %18, align 8
  store i64 0, i64* %19, align 8
  store i32* null, i32** %20, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %24 = load i32*, i32** %15, align 8
  store i32 0, i32* %24, align 4
  %25 = load i64, i64* @overlay_debugging, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %7
  %28 = load i64, i64* %9, align 8
  %29 = call i32* @find_pc_overlay(i64 %28)
  store i32* %29, i32** %20, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = call i64 @pc_in_unmapped_range(i64 %30, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %15, align 8
  store i32 1, i32* %35, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = call i64 @overlay_mapped_address(i64 %36, i32* %37)
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %34, %27
  br label %40

40:                                               ; preds = %39, %7
  %41 = load i64, i64* %9, align 8
  %42 = load i32*, i32** %20, align 8
  %43 = call %struct.symbol* @lookup_minimal_symbol_by_pc_section(i64 %41, i32* %42)
  %44 = bitcast %struct.symbol* %43 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %44, %struct.minimal_symbol** %16, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i32*, i32** %20, align 8
  %47 = call %struct.symbol* @find_pc_sect_function(i64 %45, i32* %46)
  store %struct.symbol* %47, %struct.symbol** %17, align 8
  %48 = load %struct.symbol*, %struct.symbol** %17, align 8
  %49 = icmp ne %struct.symbol* %48, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %40
  %51 = load %struct.symbol*, %struct.symbol** %17, align 8
  %52 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %51)
  %53 = call i64 @BLOCK_START(i32 %52)
  store i64 %53, i64* %19, align 8
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* @asm_demangle, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56, %50
  %60 = load %struct.symbol*, %struct.symbol** %17, align 8
  %61 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %60)
  store i8* %61, i8** %21, align 8
  br label %65

62:                                               ; preds = %56
  %63 = load %struct.symbol*, %struct.symbol** %17, align 8
  %64 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %63)
  store i8* %64, i8** %21, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %68 = icmp ne %struct.minimal_symbol* %67, null
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %71 = bitcast %struct.minimal_symbol* %70 to %struct.symbol*
  %72 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %71)
  %73 = load i64, i64* %19, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load %struct.symbol*, %struct.symbol** %17, align 8
  %77 = icmp eq %struct.symbol* %76, null
  br i1 %77, label %78, label %96

78:                                               ; preds = %75, %69
  store %struct.symbol* null, %struct.symbol** %17, align 8
  store %struct.symtab* null, %struct.symtab** %18, align 8
  %79 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %80 = bitcast %struct.minimal_symbol* %79 to %struct.symbol*
  %81 = call i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %80)
  store i64 %81, i64* %19, align 8
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %78
  %85 = load i64, i64* @asm_demangle, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84, %78
  %88 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %89 = bitcast %struct.minimal_symbol* %88 to %struct.symbol*
  %90 = call i8* @SYMBOL_PRINT_NAME(%struct.symbol* %89)
  store i8* %90, i8** %21, align 8
  br label %95

91:                                               ; preds = %84
  %92 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %93 = bitcast %struct.minimal_symbol* %92 to %struct.symbol*
  %94 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %93)
  store i8* %94, i8** %21, align 8
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %66
  %98 = load %struct.symbol*, %struct.symbol** %17, align 8
  %99 = icmp eq %struct.symbol* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load %struct.minimal_symbol*, %struct.minimal_symbol** %16, align 8
  %102 = icmp eq %struct.minimal_symbol* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* %8, align 4
  br label %187

104:                                              ; preds = %100, %97
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %19, align 8
  %107 = load i64, i64* @max_symbolic_offset, align 8
  %108 = add nsw i64 %106, %107
  %109 = icmp sgt i64 %105, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i64, i64* %19, align 8
  %112 = load i64, i64* @max_symbolic_offset, align 8
  %113 = add nsw i64 %111, %112
  %114 = load i64, i64* %19, align 8
  %115 = icmp sgt i64 %113, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 1, i32* %8, align 4
  br label %187

117:                                              ; preds = %110, %104
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* %19, align 8
  %120 = sub nsw i64 %118, %119
  %121 = trunc i64 %120 to i32
  %122 = load i32*, i32** %12, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i8*, i8** %21, align 8
  %124 = call i8* @xstrdup(i8* %123)
  %125 = load i8**, i8*** %11, align 8
  store i8* %124, i8** %125, align 8
  %126 = load i64, i64* @print_symbol_filename, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %186

128:                                              ; preds = %117
  %129 = load i64, i64* %9, align 8
  %130 = load i32*, i32** %20, align 8
  %131 = call { i32, %struct.TYPE_2__* } @find_pc_sect_line(i64 %129, i32* %130, i32 0)
  %132 = bitcast %struct.symtab_and_line* %23 to { i32, %struct.TYPE_2__* }*
  %133 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %132, i32 0, i32 0
  %134 = extractvalue { i32, %struct.TYPE_2__* } %131, 0
  store i32 %134, i32* %133, align 8
  %135 = getelementptr inbounds { i32, %struct.TYPE_2__* }, { i32, %struct.TYPE_2__* }* %132, i32 0, i32 1
  %136 = extractvalue { i32, %struct.TYPE_2__* } %131, 1
  store %struct.TYPE_2__* %136, %struct.TYPE_2__** %135, align 8
  %137 = bitcast %struct.symtab_and_line* %22 to i8*
  %138 = bitcast %struct.symtab_and_line* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 16, i1 false)
  %139 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = icmp ne %struct.TYPE_2__* %140, null
  br i1 %141, label %142, label %152

142:                                              ; preds = %128
  %143 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @xstrdup(i8* %146)
  %148 = load i8**, i8*** %13, align 8
  store i8* %147, i8** %148, align 8
  %149 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32*, i32** %14, align 8
  store i32 %150, i32* %151, align 4
  br label %185

152:                                              ; preds = %128
  %153 = load %struct.symtab*, %struct.symtab** %18, align 8
  %154 = icmp ne %struct.symtab* %153, null
  br i1 %154, label %155, label %173

155:                                              ; preds = %152
  %156 = load %struct.symbol*, %struct.symbol** %17, align 8
  %157 = icmp ne %struct.symbol* %156, null
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load %struct.symbol*, %struct.symbol** %17, align 8
  %160 = getelementptr inbounds %struct.symbol, %struct.symbol* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load %struct.symtab*, %struct.symtab** %18, align 8
  %165 = getelementptr inbounds %struct.symtab, %struct.symtab* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i8* @xstrdup(i8* %166)
  %168 = load i8**, i8*** %13, align 8
  store i8* %167, i8** %168, align 8
  %169 = load %struct.symbol*, %struct.symbol** %17, align 8
  %170 = getelementptr inbounds %struct.symbol, %struct.symbol* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** %14, align 8
  store i32 %171, i32* %172, align 4
  br label %184

173:                                              ; preds = %158, %155, %152
  %174 = load %struct.symtab*, %struct.symtab** %18, align 8
  %175 = icmp ne %struct.symtab* %174, null
  br i1 %175, label %176, label %183

176:                                              ; preds = %173
  %177 = load %struct.symtab*, %struct.symtab** %18, align 8
  %178 = getelementptr inbounds %struct.symtab, %struct.symtab* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = call i8* @xstrdup(i8* %179)
  %181 = load i8**, i8*** %13, align 8
  store i8* %180, i8** %181, align 8
  %182 = load i32*, i32** %14, align 8
  store i32 -1, i32* %182, align 4
  br label %183

183:                                              ; preds = %176, %173
  br label %184

184:                                              ; preds = %183, %163
  br label %185

185:                                              ; preds = %184, %142
  br label %186

186:                                              ; preds = %185, %117
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %186, %116, %103
  %188 = load i32, i32* %8, align 4
  ret i32 %188
}

declare dso_local i32* @find_pc_overlay(i64) #1

declare dso_local i64 @pc_in_unmapped_range(i64, i32*) #1

declare dso_local i64 @overlay_mapped_address(i64, i32*) #1

declare dso_local %struct.symbol* @lookup_minimal_symbol_by_pc_section(i64, i32*) #1

declare dso_local %struct.symbol* @find_pc_sect_function(i64, i32*) #1

declare dso_local i64 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

declare dso_local i8* @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local { i32, %struct.TYPE_2__* } @find_pc_sect_line(i64, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
