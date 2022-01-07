; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_address_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_address_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type opaque
%struct.TYPE_7__ = type { i32 }
%struct.symtab = type { i32 }
%struct.TYPE_9__ = type { i32 (%struct.symbol*, i32)* }

@.str = private unnamed_addr constant [19 x i8] c"Argument required.\00", align 1
@VAR_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Symbol \22\00", align 1
@gdb_stdout = common dso_local global i32 0, align 4
@current_language = common dso_local global %struct.TYPE_8__* null, align 8
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"\22 is a field of the local class variable \00", align 1
@language_objc = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"`self'\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"`this'\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\22 is at \00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" in a file compiled without debugging\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c",\0A -- loaded at \00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" in overlay section %s\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"No symbol \22%s\22 in current context.\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"\22 is \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"a label at address \00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"a variable in register %s\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"static storage at address \00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"external global (indirect addressing), at address *(\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"an argument in register %s\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"address of an argument in register %s\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"an argument at offset %ld\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"an argument at frame offset %ld\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"a local variable at frame offset %ld\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"a reference argument at offset %ld\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"a variable at offset %ld from register %s\00", align 1
@.str.25 = private unnamed_addr constant [43 x i8] c"an argument at offset %ld from register %s\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"a typedef\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"a function at address \00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"unresolved\00", align 1
@.str.29 = private unnamed_addr constant [71 x i8] c"a thread-local variable at offset %ld from the thread base register %s\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"optimized out\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"of unknown (botched) type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @address_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @address_info(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.minimal_symbol*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.minimal_symbol*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @get_selected_block(i32 0)
  %20 = load i32, i32* @VAR_DOMAIN, align 4
  %21 = call %struct.symbol* @lookup_symbol(i8* %18, i32 %19, i32 %20, i32* %11, %struct.symtab** null)
  store %struct.symbol* %21, %struct.symbol** %5, align 8
  %22 = load %struct.symbol*, %struct.symbol** %5, align 8
  %23 = icmp eq %struct.symbol* %22, null
  br i1 %23, label %24, label %94

24:                                               ; preds = %17
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @gdb_stdout, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_language, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @DMGL_ANSI, align 4
  %35 = call i32 @fprintf_symbol_filtered(i32 %29, i8* %30, i64 %33, i32 %34)
  %36 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_language, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @language_objc, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %46

44:                                               ; preds = %27
  %45 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %42
  br label %296

47:                                               ; preds = %24
  %48 = load i8*, i8** %3, align 8
  %49 = call %struct.symbol* @lookup_minimal_symbol(i8* %48, i32* null, i32* null)
  %50 = bitcast %struct.symbol* %49 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %50, %struct.minimal_symbol** %6, align 8
  %51 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %52 = icmp ne %struct.minimal_symbol* %51, null
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %55 = bitcast %struct.minimal_symbol* %54 to %struct.symbol*
  %56 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %55)
  store i32 %56, i32* %10, align 4
  %57 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @gdb_stdout, align 4
  %59 = load i8*, i8** %3, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_language, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @DMGL_ANSI, align 4
  %64 = call i32 @fprintf_symbol_filtered(i32 %58, i8* %59, i64 %62, i32 %63)
  %65 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @gdb_stdout, align 4
  %68 = call i32 @print_address_numeric(i32 %66, i32 1, i32 %67)
  %69 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %70 = load %struct.minimal_symbol*, %struct.minimal_symbol** %6, align 8
  %71 = bitcast %struct.minimal_symbol* %70 to %struct.symbol*
  %72 = call %struct.TYPE_7__* @SYMBOL_BFD_SECTION(%struct.symbol* %71)
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %9, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %74 = call i64 @section_is_overlay(%struct.TYPE_7__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %53
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %79 = call i32 @overlay_unmapped_address(i32 %77, %struct.TYPE_7__* %78)
  store i32 %79, i32* %10, align 4
  %80 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @gdb_stdout, align 4
  %83 = call i32 @print_address_numeric(i32 %81, i32 1, i32 %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %76, %53
  %89 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %93

90:                                               ; preds = %47
  %91 = load i8*, i8** %3, align 8
  %92 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %91)
  br label %93

93:                                               ; preds = %90, %88
  br label %296

94:                                               ; preds = %17
  %95 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @gdb_stdout, align 4
  %97 = load %struct.symbol*, %struct.symbol** %5, align 8
  %98 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_language, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @DMGL_ANSI, align 4
  %103 = call i32 @fprintf_symbol_filtered(i32 %96, i8* %98, i64 %101, i32 %102)
  %104 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %105 = load %struct.symbol*, %struct.symbol** %5, align 8
  %106 = call i64 @SYMBOL_VALUE(%struct.symbol* %105)
  store i64 %106, i64* %7, align 8
  %107 = load %struct.symbol*, %struct.symbol** %5, align 8
  %108 = call i64 @SYMBOL_BASEREG(%struct.symbol* %107)
  store i64 %108, i64* %8, align 8
  %109 = load %struct.symbol*, %struct.symbol** %5, align 8
  %110 = call %struct.TYPE_7__* @SYMBOL_BFD_SECTION(%struct.symbol* %109)
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %9, align 8
  %111 = load %struct.symbol*, %struct.symbol** %5, align 8
  %112 = call i32 @SYMBOL_CLASS(%struct.symbol* %111)
  switch i32 %112, label %292 [
    i32 142, label %113
    i32 141, label %113
    i32 138, label %115
    i32 144, label %137
    i32 143, label %137
    i32 133, label %145
    i32 130, label %149
    i32 139, label %171
    i32 132, label %194
    i32 131, label %198
    i32 148, label %202
    i32 136, label %205
    i32 137, label %208
    i32 134, label %211
    i32 147, label %214
    i32 146, label %219
    i32 129, label %224
    i32 145, label %226
    i32 128, label %249
    i32 140, label %285
    i32 135, label %290
  ]

113:                                              ; preds = %94, %94
  %114 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %294

115:                                              ; preds = %94
  %116 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %117 = load %struct.symbol*, %struct.symbol** %5, align 8
  %118 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* @gdb_stdout, align 4
  %120 = call i32 @print_address_numeric(i32 %118, i32 1, i32 %119)
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = call i64 @section_is_overlay(%struct.TYPE_7__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %115
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %127 = call i32 @overlay_unmapped_address(i32 %125, %struct.TYPE_7__* %126)
  store i32 %127, i32* %10, align 4
  %128 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @gdb_stdout, align 4
  %131 = call i32 @print_address_numeric(i32 %129, i32 1, i32 %130)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %124, %115
  br label %294

137:                                              ; preds = %94, %94
  %138 = load %struct.symbol*, %struct.symbol** %5, align 8
  %139 = call %struct.TYPE_9__* @SYMBOL_OPS(%struct.symbol* %138)
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32 (%struct.symbol*, i32)*, i32 (%struct.symbol*, i32)** %140, align 8
  %142 = load %struct.symbol*, %struct.symbol** %5, align 8
  %143 = load i32, i32* @gdb_stdout, align 4
  %144 = call i32 %141(%struct.symbol* %142, i32 %143)
  br label %294

145:                                              ; preds = %94
  %146 = load i64, i64* %7, align 8
  %147 = call i32 @REGISTER_NAME(i64 %146)
  %148 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %147)
  br label %294

149:                                              ; preds = %94
  %150 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %151 = load %struct.symbol*, %struct.symbol** %5, align 8
  %152 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* @gdb_stdout, align 4
  %154 = call i32 @print_address_numeric(i32 %152, i32 1, i32 %153)
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %156 = call i64 @section_is_overlay(%struct.TYPE_7__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %149
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %161 = call i32 @overlay_unmapped_address(i32 %159, %struct.TYPE_7__* %160)
  store i32 %161, i32* %10, align 4
  %162 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @gdb_stdout, align 4
  %165 = call i32 @print_address_numeric(i32 %163, i32 1, i32 %164)
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %158, %149
  br label %294

171:                                              ; preds = %94
  %172 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0))
  %173 = load %struct.symbol*, %struct.symbol** %5, align 8
  %174 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %173)
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* @gdb_stdout, align 4
  %176 = call i32 @print_address_numeric(i32 %174, i32 1, i32 %175)
  %177 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %179 = call i64 @section_is_overlay(%struct.TYPE_7__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %171
  %182 = load i32, i32* %10, align 4
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %184 = call i32 @overlay_unmapped_address(i32 %182, %struct.TYPE_7__* %183)
  store i32 %184, i32* %10, align 4
  %185 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @gdb_stdout, align 4
  %188 = call i32 @print_address_numeric(i32 %186, i32 1, i32 %187)
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %181, %171
  br label %294

194:                                              ; preds = %94
  %195 = load i64, i64* %7, align 8
  %196 = call i32 @REGISTER_NAME(i64 %195)
  %197 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %196)
  br label %294

198:                                              ; preds = %94
  %199 = load i64, i64* %7, align 8
  %200 = call i32 @REGISTER_NAME(i64 %199)
  %201 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %200)
  br label %294

202:                                              ; preds = %94
  %203 = load i64, i64* %7, align 8
  %204 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), i64 %203)
  br label %294

205:                                              ; preds = %94
  %206 = load i64, i64* %7, align 8
  %207 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i64 %206)
  br label %294

208:                                              ; preds = %94
  %209 = load i64, i64* %7, align 8
  %210 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), i64 %209)
  br label %294

211:                                              ; preds = %94
  %212 = load i64, i64* %7, align 8
  %213 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i64 %212)
  br label %294

214:                                              ; preds = %94
  %215 = load i64, i64* %7, align 8
  %216 = load i64, i64* %8, align 8
  %217 = call i32 @REGISTER_NAME(i64 %216)
  %218 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i64 %215, i32 %217)
  br label %294

219:                                              ; preds = %94
  %220 = load i64, i64* %7, align 8
  %221 = load i64, i64* %8, align 8
  %222 = call i32 @REGISTER_NAME(i64 %221)
  %223 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.25, i64 0, i64 0), i64 %220, i32 %222)
  br label %294

224:                                              ; preds = %94
  %225 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i64 0, i64 0))
  br label %294

226:                                              ; preds = %94
  %227 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  %228 = load %struct.symbol*, %struct.symbol** %5, align 8
  %229 = call i32 @SYMBOL_BLOCK_VALUE(%struct.symbol* %228)
  %230 = call i32 @BLOCK_START(i32 %229)
  store i32 %230, i32* %10, align 4
  %231 = load i32, i32* @gdb_stdout, align 4
  %232 = call i32 @print_address_numeric(i32 %230, i32 1, i32 %231)
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %234 = call i64 @section_is_overlay(%struct.TYPE_7__* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %226
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %239 = call i32 @overlay_unmapped_address(i32 %237, %struct.TYPE_7__* %238)
  store i32 %239, i32* %10, align 4
  %240 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %241 = load i32, i32* %10, align 4
  %242 = load i32, i32* @gdb_stdout, align 4
  %243 = call i32 @print_address_numeric(i32 %241, i32 1, i32 %242)
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %236, %226
  br label %294

249:                                              ; preds = %94
  %250 = load %struct.symbol*, %struct.symbol** %5, align 8
  %251 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol* %250)
  %252 = call %struct.symbol* @lookup_minimal_symbol(i8* %251, i32* null, i32* null)
  %253 = bitcast %struct.symbol* %252 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %253, %struct.minimal_symbol** %12, align 8
  %254 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %255 = icmp eq %struct.minimal_symbol* %254, null
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  br label %284

258:                                              ; preds = %249
  %259 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %260 = bitcast %struct.minimal_symbol* %259 to %struct.symbol*
  %261 = call %struct.TYPE_7__* @SYMBOL_BFD_SECTION(%struct.symbol* %260)
  store %struct.TYPE_7__* %261, %struct.TYPE_7__** %9, align 8
  %262 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %263 = load %struct.minimal_symbol*, %struct.minimal_symbol** %12, align 8
  %264 = bitcast %struct.minimal_symbol* %263 to %struct.symbol*
  %265 = call i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol* %264)
  store i32 %265, i32* %10, align 4
  %266 = load i32, i32* @gdb_stdout, align 4
  %267 = call i32 @print_address_numeric(i32 %265, i32 1, i32 %266)
  %268 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %269 = call i64 @section_is_overlay(%struct.TYPE_7__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %258
  %272 = load i32, i32* %10, align 4
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %274 = call i32 @overlay_unmapped_address(i32 %272, %struct.TYPE_7__* %273)
  store i32 %274, i32* %10, align 4
  %275 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* @gdb_stdout, align 4
  %278 = call i32 @print_address_numeric(i32 %276, i32 1, i32 %277)
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %271, %258
  br label %284

284:                                              ; preds = %283, %256
  br label %294

285:                                              ; preds = %94
  %286 = load i64, i64* %7, align 8
  %287 = load i64, i64* %8, align 8
  %288 = call i32 @REGISTER_NAME(i64 %287)
  %289 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.29, i64 0, i64 0), i64 %286, i32 %288)
  br label %294

290:                                              ; preds = %94
  %291 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  br label %294

292:                                              ; preds = %94
  %293 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %290, %285, %284, %248, %224, %219, %214, %211, %208, %205, %202, %198, %194, %193, %170, %145, %137, %136, %113
  %295 = call i32 (i8*, ...) @printf_filtered(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %296

296:                                              ; preds = %294, %93, %46
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32, i32, i32*, %struct.symtab**) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local i32 @printf_filtered(i8*, ...) #1

declare dso_local i32 @fprintf_symbol_filtered(i32, i8*, i64, i32) #1

declare dso_local %struct.symbol* @lookup_minimal_symbol(i8*, i32*, i32*) #1

declare dso_local i32 @SYMBOL_VALUE_ADDRESS(%struct.symbol*) #1

declare dso_local i32 @print_address_numeric(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @SYMBOL_BFD_SECTION(%struct.symbol*) #1

declare dso_local i64 @section_is_overlay(%struct.TYPE_7__*) #1

declare dso_local i32 @overlay_unmapped_address(i32, %struct.TYPE_7__*) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_VALUE(%struct.symbol*) #1

declare dso_local i64 @SYMBOL_BASEREG(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local %struct.TYPE_9__* @SYMBOL_OPS(%struct.symbol*) #1

declare dso_local i32 @REGISTER_NAME(i64) #1

declare dso_local i32 @BLOCK_START(i32) #1

declare dso_local i32 @SYMBOL_BLOCK_VALUE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
