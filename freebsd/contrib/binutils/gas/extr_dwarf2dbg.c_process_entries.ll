; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_process_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_process_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_entry = type { %struct.line_entry*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@DWARF2_LINE_DEFAULT_IS_STMT = common dso_local global i64 0, align 8
@DWARF2_FLAG_IS_STMT = common dso_local global i32 0, align 4
@DW_LNS_set_file = common dso_local global i32 0, align 4
@DW_LNS_set_column = common dso_local global i32 0, align 4
@DW_LNS_set_isa = common dso_local global i32 0, align 4
@DW_LNS_negate_stmt = common dso_local global i32 0, align 4
@DWARF2_FLAG_BASIC_BLOCK = common dso_local global i32 0, align 4
@DW_LNS_set_basic_block = common dso_local global i32 0, align 4
@DWARF2_FLAG_PROLOGUE_END = common dso_local global i32 0, align 4
@DW_LNS_set_prologue_end = common dso_local global i32 0, align 4
@DWARF2_FLAG_EPILOGUE_BEGIN = common dso_local global i32 0, align 4
@DW_LNS_set_epilogue_begin = common dso_local global i32 0, align 4
@DWARF2_USE_FIXED_ADVANCE_PC = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.line_entry*)* @process_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_entries(i32 %0, %struct.line_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.line_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.line_entry*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.line_entry* %1, %struct.line_entry** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i64, i64* @DWARF2_LINE_DEFAULT_IS_STMT, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @DWARF2_FLAG_IS_STMT, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %14, align 8
  br label %25

25:                                               ; preds = %183, %23
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %28 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %26, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %34 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @DW_LNS_set_file, align 4
  %38 = call i32 @out_opcode(i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @out_uleb128(i32 %39)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %44 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %41
  %49 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %50 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @DW_LNS_set_column, align 4
  %54 = call i32 @out_opcode(i32 %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @out_uleb128(i32 %55)
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %60 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %58, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %66 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @DW_LNS_set_isa, align 4
  %70 = call i32 @out_opcode(i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @out_uleb128(i32 %71)
  br label %73

73:                                               ; preds = %64, %57
  %74 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %75 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = xor i32 %77, %78
  %80 = load i32, i32* @DWARF2_FLAG_IS_STMT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %73
  %84 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %85 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @DW_LNS_negate_stmt, align 4
  %89 = call i32 @out_opcode(i32 %88)
  br label %90

90:                                               ; preds = %83, %73
  %91 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %92 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DWARF2_FLAG_BASIC_BLOCK, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* @DW_LNS_set_basic_block, align 4
  %100 = call i32 @out_opcode(i32 %99)
  br label %101

101:                                              ; preds = %98, %90
  %102 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %103 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DWARF2_FLAG_PROLOGUE_END, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i32, i32* @DW_LNS_set_prologue_end, align 4
  %111 = call i32 @out_opcode(i32 %110)
  br label %112

112:                                              ; preds = %109, %101
  %113 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %114 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DWARF2_FLAG_EPILOGUE_BEGIN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %112
  %121 = load i32, i32* @DW_LNS_set_epilogue_begin, align 4
  %122 = call i32 @out_opcode(i32 %121)
  br label %123

123:                                              ; preds = %120, %112
  %124 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %125 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sub i32 %127, %128
  store i32 %129, i32* %17, align 4
  %130 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %131 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %15, align 8
  %133 = load i32*, i32** %15, align 8
  %134 = call i32* @symbol_get_frag(i32* %133)
  store i32* %134, i32** %11, align 8
  %135 = load i32*, i32** %15, align 8
  %136 = call i64 @S_GET_VALUE(i32* %135)
  store i64 %136, i64* %13, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %123
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @out_set_addr(i32* %140)
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @out_inc_line_addr(i32 %142, i64 0)
  br label %169

144:                                              ; preds = %123
  %145 = load i64, i64* @DWARF2_USE_FIXED_ADVANCE_PC, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, i32* %17, align 4
  %149 = load i32*, i32** %15, align 8
  %150 = load i32*, i32** %14, align 8
  %151 = call i32 @out_fixed_inc_line_addr(i32 %148, i32* %149, i32* %150)
  br label %168

152:                                              ; preds = %144
  %153 = load i32*, i32** %11, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = icmp eq i32* %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load i32, i32* %17, align 4
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* %12, align 8
  %160 = sub nsw i64 %158, %159
  %161 = call i32 @out_inc_line_addr(i32 %157, i64 %160)
  br label %167

162:                                              ; preds = %152
  %163 = load i32, i32* %17, align 4
  %164 = load i32*, i32** %15, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = call i32 @relax_inc_line_addr(i32 %163, i32* %164, i32* %165)
  br label %167

167:                                              ; preds = %162, %156
  br label %168

168:                                              ; preds = %167, %147
  br label %169

169:                                              ; preds = %168, %139
  %170 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %171 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %6, align 4
  %174 = load i32*, i32** %15, align 8
  store i32* %174, i32** %14, align 8
  %175 = load i32*, i32** %11, align 8
  store i32* %175, i32** %10, align 8
  %176 = load i64, i64* %13, align 8
  store i64 %176, i64* %12, align 8
  %177 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %178 = getelementptr inbounds %struct.line_entry, %struct.line_entry* %177, i32 0, i32 0
  %179 = load %struct.line_entry*, %struct.line_entry** %178, align 8
  store %struct.line_entry* %179, %struct.line_entry** %16, align 8
  %180 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %181 = call i32 @free(%struct.line_entry* %180)
  %182 = load %struct.line_entry*, %struct.line_entry** %16, align 8
  store %struct.line_entry* %182, %struct.line_entry** %4, align 8
  br label %183

183:                                              ; preds = %169
  %184 = load %struct.line_entry*, %struct.line_entry** %4, align 8
  %185 = icmp ne %struct.line_entry* %184, null
  br i1 %185, label %25, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %3, align 4
  %188 = call i32* @last_frag_for_seg(i32 %187)
  store i32* %188, i32** %11, align 8
  %189 = load i32*, i32** %11, align 8
  %190 = load i32, i32* %3, align 4
  %191 = call i64 @get_frag_fix(i32* %189, i32 %190)
  store i64 %191, i64* %13, align 8
  %192 = load i64, i64* @DWARF2_USE_FIXED_ADVANCE_PC, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %186
  %195 = load i32, i32* %3, align 4
  %196 = load i64, i64* %13, align 8
  %197 = load i32*, i32** %11, align 8
  %198 = call i32* @symbol_temp_new(i32 %195, i64 %196, i32* %197)
  store i32* %198, i32** %15, align 8
  %199 = load i32, i32* @INT_MAX, align 4
  %200 = load i32*, i32** %15, align 8
  %201 = load i32*, i32** %14, align 8
  %202 = call i32 @out_fixed_inc_line_addr(i32 %199, i32* %200, i32* %201)
  br label %223

203:                                              ; preds = %186
  %204 = load i32*, i32** %11, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = icmp eq i32* %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load i32, i32* @INT_MAX, align 4
  %209 = load i64, i64* %13, align 8
  %210 = load i64, i64* %12, align 8
  %211 = sub nsw i64 %209, %210
  %212 = call i32 @out_inc_line_addr(i32 %208, i64 %211)
  br label %222

213:                                              ; preds = %203
  %214 = load i32, i32* %3, align 4
  %215 = load i64, i64* %13, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = call i32* @symbol_temp_new(i32 %214, i64 %215, i32* %216)
  store i32* %217, i32** %15, align 8
  %218 = load i32, i32* @INT_MAX, align 4
  %219 = load i32*, i32** %15, align 8
  %220 = load i32*, i32** %14, align 8
  %221 = call i32 @relax_inc_line_addr(i32 %218, i32* %219, i32* %220)
  br label %222

222:                                              ; preds = %213, %207
  br label %223

223:                                              ; preds = %222, %194
  ret void
}

declare dso_local i32 @out_opcode(i32) #1

declare dso_local i32 @out_uleb128(i32) #1

declare dso_local i32* @symbol_get_frag(i32*) #1

declare dso_local i64 @S_GET_VALUE(i32*) #1

declare dso_local i32 @out_set_addr(i32*) #1

declare dso_local i32 @out_inc_line_addr(i32, i64) #1

declare dso_local i32 @out_fixed_inc_line_addr(i32, i32*, i32*) #1

declare dso_local i32 @relax_inc_line_addr(i32, i32*, i32*) #1

declare dso_local i32 @free(%struct.line_entry*) #1

declare dso_local i32* @last_frag_for_seg(i32) #1

declare dso_local i64 @get_frag_fix(i32*, i32) #1

declare dso_local i32* @symbol_temp_new(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
