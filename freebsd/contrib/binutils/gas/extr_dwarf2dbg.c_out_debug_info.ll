; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_dwarf2dbg.c_out_debug_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32* }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32, i32*, i8*, i32* }

@O_subtract = common dso_local global i8* null, align 8
@dwarf2_format_32bit = common dso_local global i32 0, align 4
@dwarf2_format_64bit = common dso_local global i32 0, align 4
@dwarf2_format_64bit_irix = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"internal error: unknown dwarf2 format\00", align 1
@sizeof_address = common dso_local global i32 0, align 4
@all_segs = common dso_local global %struct.TYPE_7__* null, align 8
@O_symbol = common dso_local global i8* null, align 8
@files = common dso_local global %struct.TYPE_6__* null, align 8
@files_in_use = common dso_local global i32 0, align 4
@dirs = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"GNU AS %s\00", align 1
@VERSION = common dso_local global i8* null, align 8
@DW_LANG_Mips_Assembler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @out_debug_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @out_debug_info(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @subseg_set(i32 %18, i32 0)
  %20 = call i32* (...) @symbol_temp_new_now()
  store i32* %20, i32** %12, align 8
  %21 = call i32* (...) @symbol_temp_make()
  store i32* %21, i32** %13, align 8
  %22 = load i8*, i8** @O_subtract, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i32*, i32** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32* %24, i32** %25, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 3
  store i32* %26, i32** %27, align 8
  %28 = call i32 (...) @DWARF2_FORMAT()
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* @dwarf2_format_32bit, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 -4, i32* %33, align 8
  %34 = call i32 @emit_expr(%struct.TYPE_5__* %11, i32 4)
  store i32 4, i32* %17, align 4
  br label %55

35:                                               ; preds = %4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @dwarf2_format_64bit, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 -12, i32* %40, align 8
  %41 = call i32 @out_four(i32 -1)
  %42 = call i32 @emit_expr(%struct.TYPE_5__* %11, i32 8)
  store i32 8, i32* %17, align 4
  br label %54

43:                                               ; preds = %35
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @dwarf2_format_64bit_irix, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 -8, i32* %48, align 8
  %49 = call i32 @emit_expr(%struct.TYPE_5__* %11, i32 8)
  store i32 8, i32* %17, align 4
  br label %53

50:                                               ; preds = %43
  %51 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %52 = call i32 @as_fatal(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %39
  br label %55

55:                                               ; preds = %54, %32
  %56 = call i32 @out_two(i32 2)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @section_symbol(i32 %57)
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @TC_DWARF2_EMIT_OFFSET(i32 %58, i32 %59)
  %61 = load i32, i32* @sizeof_address, align 4
  %62 = call i32 @out_byte(i32 %61)
  %63 = call i32 @out_uleb128(i32 1)
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @section_symbol(i32 %64)
  %66 = call i32 @TC_DWARF2_EMIT_OFFSET(i32 %65, i32 4)
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_segs, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %90

71:                                               ; preds = %55
  %72 = load i8*, i8** @O_symbol, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i8* %72, i8** %73, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_segs, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32* %76, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* @sizeof_address, align 4
  %80 = call i32 @emit_expr(%struct.TYPE_5__* %11, i32 %79)
  %81 = load i8*, i8** @O_symbol, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i8* %81, i8** %82, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @all_segs, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32* %85, i32** %86, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load i32, i32* @sizeof_address, align 4
  %89 = call i32 @emit_expr(%struct.TYPE_5__* %11, i32 %88)
  br label %95

90:                                               ; preds = %55
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @section_symbol(i32 %91)
  %93 = load i32, i32* %17, align 4
  %94 = call i32 @TC_DWARF2_EMIT_OFFSET(i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %71
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** @files, align 8
  %97 = icmp ne %struct.TYPE_6__* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @files_in_use, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %103

101:                                              ; preds = %98, %95
  %102 = call i32 (...) @abort() #3
  unreachable

103:                                              ; preds = %98
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @files, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %136

109:                                              ; preds = %103
  %110 = load i8**, i8*** @dirs, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @files, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %110, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strlen(i8* %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  %121 = call i8* @frag_more(i32 %120)
  store i8* %121, i8** %14, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load i8**, i8*** @dirs, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** @files, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %123, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %15, align 4
  %132 = call i32 @memcpy(i8* %122, i8* %130, i32 %131)
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @INSERT_DIR_SEPARATOR(i8* %133, i32 %134)
  br label %136

136:                                              ; preds = %109, %103
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** @files, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strlen(i8* %140)
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %15, align 4
  %144 = call i8* @frag_more(i32 %143)
  store i8* %144, i8** %14, align 8
  %145 = load i8*, i8** %14, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** @files, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 @memcpy(i8* %145, i8* %149, i32 %150)
  %152 = call i8* (...) @getpwd()
  store i8* %152, i8** %10, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i32 @strlen(i8* %153)
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i8* @frag_more(i32 %156)
  store i8* %157, i8** %14, align 8
  %158 = load i8*, i8** %14, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load i32, i32* %15, align 4
  %161 = call i32 @memcpy(i8* %158, i8* %159, i32 %160)
  %162 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %163 = load i8*, i8** @VERSION, align 8
  %164 = call i32 @sprintf(i8* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %163)
  %165 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %166 = call i32 @strlen(i8* %165)
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = call i8* @frag_more(i32 %168)
  store i8* %169, i8** %14, align 8
  %170 = load i8*, i8** %14, align 8
  %171 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @memcpy(i8* %170, i8* %171, i32 %172)
  %174 = load i32, i32* @DW_LANG_Mips_Assembler, align 4
  %175 = call i32 @out_two(i32 %174)
  %176 = load i32*, i32** %13, align 8
  %177 = call i32 @symbol_set_value_now(i32* %176)
  ret void
}

declare dso_local i32 @subseg_set(i32, i32) #1

declare dso_local i32* @symbol_temp_new_now(...) #1

declare dso_local i32* @symbol_temp_make(...) #1

declare dso_local i32 @DWARF2_FORMAT(...) #1

declare dso_local i32 @emit_expr(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @out_four(i32) #1

declare dso_local i32 @as_fatal(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @out_two(i32) #1

declare dso_local i32 @TC_DWARF2_EMIT_OFFSET(i32, i32) #1

declare dso_local i32 @section_symbol(i32) #1

declare dso_local i32 @out_byte(i32) #1

declare dso_local i32 @out_uleb128(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @frag_more(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @INSERT_DIR_SEPARATOR(i8*, i32) #1

declare dso_local i8* @getpwd(...) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @symbol_set_value_now(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
