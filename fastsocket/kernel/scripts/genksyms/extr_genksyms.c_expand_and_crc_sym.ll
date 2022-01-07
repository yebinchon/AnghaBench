; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_expand_and_crc_sym.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_expand_and_crc_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { %struct.symbol*, i8*, %struct.string_list* }
%struct.string_list = type { i32, i8*, %struct.string_list* }

@flag_dump_defs = common dso_local global i32 0, align 4
@debugfile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@expansion_trail = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"expand undefined %s %s\00", align 1
@symbol_type_name = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s %s \00", align 1
@expand_and_crc_sym.end = internal global %struct.symbol** @visited_symbols, align 8
@visited_symbols = common dso_local global %struct.symbol* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.symbol*, i64)* @expand_and_crc_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_and_crc_sym(%struct.symbol* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.symbol*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.string_list*, align 8
  %7 = alloca %struct.string_list**, align 8
  %8 = alloca %struct.string_list**, align 8
  %9 = alloca %struct.string_list*, align 8
  %10 = alloca %struct.string_list**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.string_list*, align 8
  %13 = alloca %struct.symbol*, align 8
  %14 = alloca %struct.string_list*, align 8
  %15 = alloca %struct.string_list*, align 8
  store %struct.symbol* %0, %struct.symbol** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load %struct.symbol*, %struct.symbol** %4, align 8
  %17 = getelementptr inbounds %struct.symbol, %struct.symbol* %16, i32 0, i32 2
  %18 = load %struct.string_list*, %struct.string_list** %17, align 8
  store %struct.string_list* %18, %struct.string_list** %6, align 8
  store i32 1, i32* %11, align 4
  %19 = load %struct.string_list*, %struct.string_list** %6, align 8
  %20 = icmp ne %struct.string_list* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %3, align 8
  br label %280

23:                                               ; preds = %2
  %24 = load %struct.string_list*, %struct.string_list** %6, align 8
  store %struct.string_list* %24, %struct.string_list** %9, align 8
  br label %25

25:                                               ; preds = %30, %23
  %26 = load %struct.string_list*, %struct.string_list** %9, align 8
  %27 = getelementptr inbounds %struct.string_list, %struct.string_list* %26, i32 0, i32 2
  %28 = load %struct.string_list*, %struct.string_list** %27, align 8
  store %struct.string_list* %28, %struct.string_list** %9, align 8
  %29 = icmp ne %struct.string_list* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 8
  %37 = trunc i64 %36 to i32
  %38 = call %struct.string_list** @alloca(i32 %37)
  store %struct.string_list** %38, %struct.string_list*** %8, align 8
  %39 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.string_list*, %struct.string_list** %39, i64 %41
  store %struct.string_list** %42, %struct.string_list*** %7, align 8
  %43 = load %struct.string_list**, %struct.string_list*** %7, align 8
  %44 = getelementptr inbounds %struct.string_list*, %struct.string_list** %43, i64 -1
  store %struct.string_list** %44, %struct.string_list*** %10, align 8
  %45 = load %struct.string_list*, %struct.string_list** %6, align 8
  %46 = load %struct.string_list**, %struct.string_list*** %10, align 8
  %47 = getelementptr inbounds %struct.string_list*, %struct.string_list** %46, i32 -1
  store %struct.string_list** %47, %struct.string_list*** %10, align 8
  store %struct.string_list* %45, %struct.string_list** %46, align 8
  br label %48

48:                                               ; preds = %53, %33
  %49 = load %struct.string_list*, %struct.string_list** %6, align 8
  %50 = getelementptr inbounds %struct.string_list, %struct.string_list* %49, i32 0, i32 2
  %51 = load %struct.string_list*, %struct.string_list** %50, align 8
  store %struct.string_list* %51, %struct.string_list** %6, align 8
  %52 = icmp ne %struct.string_list* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.string_list*, %struct.string_list** %6, align 8
  %55 = load %struct.string_list**, %struct.string_list*** %10, align 8
  %56 = getelementptr inbounds %struct.string_list*, %struct.string_list** %55, i32 -1
  store %struct.string_list** %56, %struct.string_list*** %10, align 8
  store %struct.string_list* %54, %struct.string_list** %55, align 8
  br label %48

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %265, %57
  %59 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %60 = load %struct.string_list**, %struct.string_list*** %7, align 8
  %61 = icmp ne %struct.string_list** %59, %60
  br i1 %61, label %62, label %266

62:                                               ; preds = %58
  %63 = load %struct.string_list**, %struct.string_list*** %8, align 8
  %64 = getelementptr inbounds %struct.string_list*, %struct.string_list** %63, i32 1
  store %struct.string_list** %64, %struct.string_list*** %8, align 8
  %65 = load %struct.string_list*, %struct.string_list** %63, align 8
  store %struct.string_list* %65, %struct.string_list** %12, align 8
  %66 = load %struct.string_list*, %struct.string_list** %12, align 8
  %67 = getelementptr inbounds %struct.string_list, %struct.string_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %265 [
    i32 131, label %69
    i32 129, label %86
    i32 130, label %125
    i32 128, label %125
    i32 132, label %125
  ]

69:                                               ; preds = %62
  %70 = load i32, i32* @flag_dump_defs, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i32, i32* @debugfile, align 4
  %74 = load %struct.string_list*, %struct.string_list** %12, align 8
  %75 = getelementptr inbounds %struct.string_list, %struct.string_list* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.string_list*, %struct.string_list** %12, align 8
  %80 = getelementptr inbounds %struct.string_list, %struct.string_list* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i64 @partial_crc32(i8* %81, i64 %82)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call i64 @partial_crc32_one(i8 signext 32, i64 %84)
  store i64 %85, i64* %5, align 8
  br label %265

86:                                               ; preds = %62
  %87 = load %struct.string_list*, %struct.string_list** %12, align 8
  %88 = getelementptr inbounds %struct.string_list, %struct.string_list* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.string_list*, %struct.string_list** %12, align 8
  %91 = getelementptr inbounds %struct.string_list, %struct.string_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call %struct.symbol* @find_symbol(i8* %89, i32 %92)
  store %struct.symbol* %93, %struct.symbol** %13, align 8
  %94 = load %struct.symbol*, %struct.symbol** %13, align 8
  %95 = getelementptr inbounds %struct.symbol, %struct.symbol* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %115

98:                                               ; preds = %86
  %99 = load i32, i32* @flag_dump_defs, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* @debugfile, align 4
  %103 = load %struct.string_list*, %struct.string_list** %12, align 8
  %104 = getelementptr inbounds %struct.string_list, %struct.string_list* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %105)
  br label %107

107:                                              ; preds = %101, %98
  %108 = load %struct.string_list*, %struct.string_list** %12, align 8
  %109 = getelementptr inbounds %struct.string_list, %struct.string_list* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i64, i64* %5, align 8
  %112 = call i64 @partial_crc32(i8* %110, i64 %111)
  store i64 %112, i64* %5, align 8
  %113 = load i64, i64* %5, align 8
  %114 = call i64 @partial_crc32_one(i8 signext 32, i64 %113)
  store i64 %114, i64* %5, align 8
  br label %124

115:                                              ; preds = %86
  %116 = load i8*, i8** @expansion_trail, align 8
  %117 = load %struct.symbol*, %struct.symbol** %13, align 8
  %118 = getelementptr inbounds %struct.symbol, %struct.symbol* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.symbol*, %struct.symbol** %13, align 8
  %120 = bitcast %struct.symbol* %119 to i8*
  store i8* %120, i8** @expansion_trail, align 8
  %121 = load %struct.symbol*, %struct.symbol** %13, align 8
  %122 = load i64, i64* %5, align 8
  %123 = call i64 @expand_and_crc_sym(%struct.symbol* %121, i64 %122)
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %115, %107
  br label %265

125:                                              ; preds = %62, %62, %62
  %126 = load %struct.string_list*, %struct.string_list** %12, align 8
  %127 = getelementptr inbounds %struct.string_list, %struct.string_list* %126, i32 0, i32 1
  %128 = load i8*, i8** %127, align 8
  %129 = load %struct.string_list*, %struct.string_list** %12, align 8
  %130 = getelementptr inbounds %struct.string_list, %struct.string_list* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call %struct.symbol* @find_symbol(i8* %128, i32 %131)
  store %struct.symbol* %132, %struct.symbol** %13, align 8
  %133 = load %struct.symbol*, %struct.symbol** %13, align 8
  %134 = icmp ne %struct.symbol* %133, null
  br i1 %134, label %215, label %135

135:                                              ; preds = %125
  store %struct.string_list* null, %struct.string_list** %15, align 8
  %136 = load i8**, i8*** @symbol_type_name, align 8
  %137 = load %struct.string_list*, %struct.string_list** %12, align 8
  %138 = getelementptr inbounds %struct.string_list, %struct.string_list* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %136, i64 %140
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.string_list*, %struct.string_list** %12, align 8
  %144 = getelementptr inbounds %struct.string_list, %struct.string_list* %143, i32 0, i32 1
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @error_with_pos(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %142, i8* %145)
  %147 = call %struct.string_list* @xmalloc(i32 24)
  store %struct.string_list* %147, %struct.string_list** %14, align 8
  %148 = load i8**, i8*** @symbol_type_name, align 8
  %149 = load %struct.string_list*, %struct.string_list** %12, align 8
  %150 = getelementptr inbounds %struct.string_list, %struct.string_list* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %148, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i8* @xstrdup(i8* %154)
  %156 = load %struct.string_list*, %struct.string_list** %14, align 8
  %157 = getelementptr inbounds %struct.string_list, %struct.string_list* %156, i32 0, i32 1
  store i8* %155, i8** %157, align 8
  %158 = load %struct.string_list*, %struct.string_list** %14, align 8
  %159 = getelementptr inbounds %struct.string_list, %struct.string_list* %158, i32 0, i32 0
  store i32 131, i32* %159, align 8
  %160 = load %struct.string_list*, %struct.string_list** %15, align 8
  %161 = load %struct.string_list*, %struct.string_list** %14, align 8
  %162 = getelementptr inbounds %struct.string_list, %struct.string_list* %161, i32 0, i32 2
  store %struct.string_list* %160, %struct.string_list** %162, align 8
  %163 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %163, %struct.string_list** %15, align 8
  %164 = call %struct.string_list* @xmalloc(i32 24)
  store %struct.string_list* %164, %struct.string_list** %14, align 8
  %165 = load %struct.string_list*, %struct.string_list** %12, align 8
  %166 = getelementptr inbounds %struct.string_list, %struct.string_list* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @xstrdup(i8* %167)
  %169 = load %struct.string_list*, %struct.string_list** %14, align 8
  %170 = getelementptr inbounds %struct.string_list, %struct.string_list* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load %struct.string_list*, %struct.string_list** %14, align 8
  %172 = getelementptr inbounds %struct.string_list, %struct.string_list* %171, i32 0, i32 0
  store i32 131, i32* %172, align 8
  %173 = load %struct.string_list*, %struct.string_list** %15, align 8
  %174 = load %struct.string_list*, %struct.string_list** %14, align 8
  %175 = getelementptr inbounds %struct.string_list, %struct.string_list* %174, i32 0, i32 2
  store %struct.string_list* %173, %struct.string_list** %175, align 8
  %176 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %176, %struct.string_list** %15, align 8
  %177 = call %struct.string_list* @xmalloc(i32 24)
  store %struct.string_list* %177, %struct.string_list** %14, align 8
  %178 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %179 = load %struct.string_list*, %struct.string_list** %14, align 8
  %180 = getelementptr inbounds %struct.string_list, %struct.string_list* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load %struct.string_list*, %struct.string_list** %14, align 8
  %182 = getelementptr inbounds %struct.string_list, %struct.string_list* %181, i32 0, i32 0
  store i32 131, i32* %182, align 8
  %183 = load %struct.string_list*, %struct.string_list** %15, align 8
  %184 = load %struct.string_list*, %struct.string_list** %14, align 8
  %185 = getelementptr inbounds %struct.string_list, %struct.string_list* %184, i32 0, i32 2
  store %struct.string_list* %183, %struct.string_list** %185, align 8
  %186 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %186, %struct.string_list** %15, align 8
  %187 = call %struct.string_list* @xmalloc(i32 24)
  store %struct.string_list* %187, %struct.string_list** %14, align 8
  %188 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %189 = load %struct.string_list*, %struct.string_list** %14, align 8
  %190 = getelementptr inbounds %struct.string_list, %struct.string_list* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  %191 = load %struct.string_list*, %struct.string_list** %14, align 8
  %192 = getelementptr inbounds %struct.string_list, %struct.string_list* %191, i32 0, i32 0
  store i32 131, i32* %192, align 8
  %193 = load %struct.string_list*, %struct.string_list** %15, align 8
  %194 = load %struct.string_list*, %struct.string_list** %14, align 8
  %195 = getelementptr inbounds %struct.string_list, %struct.string_list* %194, i32 0, i32 2
  store %struct.string_list* %193, %struct.string_list** %195, align 8
  %196 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %196, %struct.string_list** %15, align 8
  %197 = call %struct.string_list* @xmalloc(i32 24)
  store %struct.string_list* %197, %struct.string_list** %14, align 8
  %198 = call i8* @xstrdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %199 = load %struct.string_list*, %struct.string_list** %14, align 8
  %200 = getelementptr inbounds %struct.string_list, %struct.string_list* %199, i32 0, i32 1
  store i8* %198, i8** %200, align 8
  %201 = load %struct.string_list*, %struct.string_list** %14, align 8
  %202 = getelementptr inbounds %struct.string_list, %struct.string_list* %201, i32 0, i32 0
  store i32 131, i32* %202, align 8
  %203 = load %struct.string_list*, %struct.string_list** %15, align 8
  %204 = load %struct.string_list*, %struct.string_list** %14, align 8
  %205 = getelementptr inbounds %struct.string_list, %struct.string_list* %204, i32 0, i32 2
  store %struct.string_list* %203, %struct.string_list** %205, align 8
  %206 = load %struct.string_list*, %struct.string_list** %14, align 8
  store %struct.string_list* %206, %struct.string_list** %15, align 8
  %207 = load %struct.string_list*, %struct.string_list** %12, align 8
  %208 = getelementptr inbounds %struct.string_list, %struct.string_list* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.string_list*, %struct.string_list** %12, align 8
  %211 = getelementptr inbounds %struct.string_list, %struct.string_list* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.string_list*, %struct.string_list** %14, align 8
  %214 = call %struct.symbol* @add_symbol(i8* %209, i32 %212, %struct.string_list* %213, i32 0)
  store %struct.symbol* %214, %struct.symbol** %13, align 8
  br label %215

215:                                              ; preds = %135, %125
  %216 = load %struct.symbol*, %struct.symbol** %13, align 8
  %217 = getelementptr inbounds %struct.symbol, %struct.symbol* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %255

220:                                              ; preds = %215
  %221 = load i32, i32* @flag_dump_defs, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %220
  %224 = load i32, i32* @debugfile, align 4
  %225 = load i8**, i8*** @symbol_type_name, align 8
  %226 = load %struct.string_list*, %struct.string_list** %12, align 8
  %227 = getelementptr inbounds %struct.string_list, %struct.string_list* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %225, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.string_list*, %struct.string_list** %12, align 8
  %233 = getelementptr inbounds %struct.string_list, %struct.string_list* %232, i32 0, i32 1
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %231, i8* %234)
  br label %236

236:                                              ; preds = %223, %220
  %237 = load i8**, i8*** @symbol_type_name, align 8
  %238 = load %struct.string_list*, %struct.string_list** %12, align 8
  %239 = getelementptr inbounds %struct.string_list, %struct.string_list* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8*, i8** %237, i64 %241
  %243 = load i8*, i8** %242, align 8
  %244 = load i64, i64* %5, align 8
  %245 = call i64 @partial_crc32(i8* %243, i64 %244)
  store i64 %245, i64* %5, align 8
  %246 = load i64, i64* %5, align 8
  %247 = call i64 @partial_crc32_one(i8 signext 32, i64 %246)
  store i64 %247, i64* %5, align 8
  %248 = load %struct.string_list*, %struct.string_list** %12, align 8
  %249 = getelementptr inbounds %struct.string_list, %struct.string_list* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i64, i64* %5, align 8
  %252 = call i64 @partial_crc32(i8* %250, i64 %251)
  store i64 %252, i64* %5, align 8
  %253 = load i64, i64* %5, align 8
  %254 = call i64 @partial_crc32_one(i8 signext 32, i64 %253)
  store i64 %254, i64* %5, align 8
  br label %264

255:                                              ; preds = %215
  %256 = load i8*, i8** @expansion_trail, align 8
  %257 = load %struct.symbol*, %struct.symbol** %13, align 8
  %258 = getelementptr inbounds %struct.symbol, %struct.symbol* %257, i32 0, i32 1
  store i8* %256, i8** %258, align 8
  %259 = load %struct.symbol*, %struct.symbol** %13, align 8
  %260 = bitcast %struct.symbol* %259 to i8*
  store i8* %260, i8** @expansion_trail, align 8
  %261 = load %struct.symbol*, %struct.symbol** %13, align 8
  %262 = load i64, i64* %5, align 8
  %263 = call i64 @expand_and_crc_sym(%struct.symbol* %261, i64 %262)
  store i64 %263, i64* %5, align 8
  br label %264

264:                                              ; preds = %255, %236
  br label %265

265:                                              ; preds = %62, %264, %124, %78
  br label %58

266:                                              ; preds = %58
  %267 = load %struct.symbol*, %struct.symbol** %4, align 8
  %268 = getelementptr inbounds %struct.symbol, %struct.symbol* %267, i32 0, i32 0
  %269 = load %struct.symbol*, %struct.symbol** %268, align 8
  %270 = icmp ne %struct.symbol* %269, null
  br i1 %270, label %278, label %271

271:                                              ; preds = %266
  %272 = load %struct.symbol*, %struct.symbol** %4, align 8
  %273 = load %struct.symbol**, %struct.symbol*** @expand_and_crc_sym.end, align 8
  store %struct.symbol* %272, %struct.symbol** %273, align 8
  %274 = load %struct.symbol*, %struct.symbol** %4, align 8
  %275 = getelementptr inbounds %struct.symbol, %struct.symbol* %274, i32 0, i32 0
  store %struct.symbol** %275, %struct.symbol*** @expand_and_crc_sym.end, align 8
  %276 = load %struct.symbol*, %struct.symbol** %4, align 8
  %277 = getelementptr inbounds %struct.symbol, %struct.symbol* %276, i32 0, i32 0
  store %struct.symbol* inttoptr (i64 -1 to %struct.symbol*), %struct.symbol** %277, align 8
  br label %278

278:                                              ; preds = %271, %266
  %279 = load i64, i64* %5, align 8
  store i64 %279, i64* %3, align 8
  br label %280

280:                                              ; preds = %278, %21
  %281 = load i64, i64* %3, align 8
  ret i64 %281
}

declare dso_local %struct.string_list** @alloca(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i64 @partial_crc32(i8*, i64) #1

declare dso_local i64 @partial_crc32_one(i8 signext, i64) #1

declare dso_local %struct.symbol* @find_symbol(i8*, i32) #1

declare dso_local i32 @error_with_pos(i8*, i8*, i8*) #1

declare dso_local %struct.string_list* @xmalloc(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.symbol* @add_symbol(i8*, i32, %struct.string_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
