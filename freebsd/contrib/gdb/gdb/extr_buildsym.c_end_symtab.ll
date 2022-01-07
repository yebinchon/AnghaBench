; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_end_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_buildsym.c_end_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pending_block = type { %struct.pending_block*, %struct.block* }
%struct.block = type { i32 }
%struct.subfile = type { %struct.subfile*, i32*, %struct.linetable*, i32*, i32*, i32 }
%struct.linetable = type { i32, i32 }
%struct.symtab = type { i32, i8*, i32, i32, i32, i32*, i32, %struct.linetable*, i32*, %struct.blockvector* }
%struct.blockvector = type { i32 }
%struct.objfile = type { i32, i32 }
%struct.context_stack = type { i32, i32, i32 }

@context_stack_depth = common dso_local global i64 0, align 8
@local_symbols = common dso_local global i32* null, align 8
@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Context stack not empty in end_symtab\00", align 1
@OBJF_REORDERED = common dso_local global i32 0, align 4
@pending_blocks = common dso_local global %struct.pending_block* null, align 8
@file_symbols = common dso_local global i32* null, align 8
@global_symbols = common dso_local global i32* null, align 8
@have_line_numbers = common dso_local global i64 0, align 8
@pending_macros = common dso_local global i32* null, align 8
@last_source_start_addr = common dso_local global i32 0, align 4
@STATIC_BLOCK = common dso_local global i32 0, align 4
@subfiles = common dso_local global %struct.subfile* null, align 8
@compare_line_numbers = common dso_local global i32 0, align 4
@free_linetable = common dso_local global i32 0, align 4
@last_source_file = common dso_local global i32* null, align 8
@current_subfile = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.symtab* @end_symtab(i32 %0, %struct.objfile* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.objfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.symtab*, align 8
  %8 = alloca %struct.blockvector*, align 8
  %9 = alloca %struct.subfile*, align 8
  %10 = alloca %struct.context_stack*, align 8
  %11 = alloca %struct.subfile*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pending_block*, align 8
  %14 = alloca %struct.pending_block*, align 8
  %15 = alloca %struct.block*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.objfile* %1, %struct.objfile** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.symtab* null, %struct.symtab** %7, align 8
  %17 = load i64, i64* @context_stack_depth, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = call %struct.context_stack* (...) @pop_context()
  store %struct.context_stack* %20, %struct.context_stack** %10, align 8
  %21 = load %struct.context_stack*, %struct.context_stack** %10, align 8
  %22 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.context_stack*, %struct.context_stack** %10, align 8
  %25 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.context_stack*, %struct.context_stack** %10, align 8
  %28 = getelementptr inbounds %struct.context_stack, %struct.context_stack* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.objfile*, %struct.objfile** %5, align 8
  %32 = call i32 @finish_block(i32 %23, i32** @local_symbols, i32 %26, i32 %29, i32 %30, %struct.objfile* %31)
  %33 = load i64, i64* @context_stack_depth, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %19
  %36 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @context_stack_depth, align 8
  br label %37

37:                                               ; preds = %35, %19
  br label %38

38:                                               ; preds = %37, %3
  %39 = load %struct.objfile*, %struct.objfile** %5, align 8
  %40 = getelementptr inbounds %struct.objfile, %struct.objfile* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @OBJF_REORDERED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %89

45:                                               ; preds = %38
  %46 = load %struct.pending_block*, %struct.pending_block** @pending_blocks, align 8
  %47 = icmp ne %struct.pending_block* %46, null
  br i1 %47, label %48, label %89

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %85, %48
  %50 = load %struct.pending_block*, %struct.pending_block** @pending_blocks, align 8
  store %struct.pending_block* %50, %struct.pending_block** %13, align 8
  %51 = load %struct.pending_block*, %struct.pending_block** %13, align 8
  %52 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %51, i32 0, i32 0
  %53 = load %struct.pending_block*, %struct.pending_block** %52, align 8
  store %struct.pending_block* %53, %struct.pending_block** %14, align 8
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %79, %49
  %55 = load %struct.pending_block*, %struct.pending_block** %14, align 8
  %56 = icmp ne %struct.pending_block* %55, null
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = load %struct.pending_block*, %struct.pending_block** %13, align 8
  %59 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %58, i32 0, i32 1
  %60 = load %struct.block*, %struct.block** %59, align 8
  %61 = call i64 @BLOCK_START(%struct.block* %60)
  %62 = load %struct.pending_block*, %struct.pending_block** %14, align 8
  %63 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %62, i32 0, i32 1
  %64 = load %struct.block*, %struct.block** %63, align 8
  %65 = call i64 @BLOCK_START(%struct.block* %64)
  %66 = icmp slt i64 %61, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %57
  %68 = load %struct.pending_block*, %struct.pending_block** %13, align 8
  %69 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %68, i32 0, i32 1
  %70 = load %struct.block*, %struct.block** %69, align 8
  store %struct.block* %70, %struct.block** %15, align 8
  %71 = load %struct.pending_block*, %struct.pending_block** %14, align 8
  %72 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %71, i32 0, i32 1
  %73 = load %struct.block*, %struct.block** %72, align 8
  %74 = load %struct.pending_block*, %struct.pending_block** %13, align 8
  %75 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %74, i32 0, i32 1
  store %struct.block* %73, %struct.block** %75, align 8
  %76 = load %struct.block*, %struct.block** %15, align 8
  %77 = load %struct.pending_block*, %struct.pending_block** %14, align 8
  %78 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %77, i32 0, i32 1
  store %struct.block* %76, %struct.block** %78, align 8
  store i32 1, i32* %12, align 4
  br label %79

79:                                               ; preds = %67, %57
  %80 = load %struct.pending_block*, %struct.pending_block** %14, align 8
  store %struct.pending_block* %80, %struct.pending_block** %13, align 8
  %81 = load %struct.pending_block*, %struct.pending_block** %14, align 8
  %82 = getelementptr inbounds %struct.pending_block, %struct.pending_block* %81, i32 0, i32 0
  %83 = load %struct.pending_block*, %struct.pending_block** %82, align 8
  store %struct.pending_block* %83, %struct.pending_block** %14, align 8
  br label %54

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %49, label %88

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88, %45, %38
  %90 = call i32 (...) @cleanup_undefined_types()
  %91 = load %struct.objfile*, %struct.objfile** %5, align 8
  %92 = call i32 @finish_global_stabs(%struct.objfile* %91)
  %93 = load %struct.pending_block*, %struct.pending_block** @pending_blocks, align 8
  %94 = icmp eq %struct.pending_block* %93, null
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load i32*, i32** @file_symbols, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32*, i32** @global_symbols, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i64, i64* @have_line_numbers, align 8
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32*, i32** @pending_macros, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store %struct.blockvector* null, %struct.blockvector** %8, align 8
  br label %125

108:                                              ; preds = %104, %101, %98, %95, %89
  %109 = load i32, i32* @last_source_start_addr, align 4
  %110 = load i32, i32* %4, align 4
  %111 = load %struct.objfile*, %struct.objfile** %5, align 8
  %112 = call i32 @finish_block(i32 0, i32** @file_symbols, i32 0, i32 %109, i32 %110, %struct.objfile* %111)
  %113 = load i32, i32* @last_source_start_addr, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.objfile*, %struct.objfile** %5, align 8
  %116 = call i32 @finish_block(i32 0, i32** @global_symbols, i32 0, i32 %113, i32 %114, %struct.objfile* %115)
  %117 = load %struct.objfile*, %struct.objfile** %5, align 8
  %118 = call %struct.blockvector* @make_blockvector(%struct.objfile* %117)
  store %struct.blockvector* %118, %struct.blockvector** %8, align 8
  %119 = load %struct.blockvector*, %struct.blockvector** %8, align 8
  %120 = load i32, i32* @STATIC_BLOCK, align 4
  %121 = call i32 @BLOCKVECTOR_BLOCK(%struct.blockvector* %119, i32 %120)
  %122 = load %struct.objfile*, %struct.objfile** %5, align 8
  %123 = getelementptr inbounds %struct.objfile, %struct.objfile* %122, i32 0, i32 1
  %124 = call i32 @cp_finalize_namespace(i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %108, %107
  %126 = load %struct.subfile*, %struct.subfile** @subfiles, align 8
  store %struct.subfile* %126, %struct.subfile** %9, align 8
  br label %127

127:                                              ; preds = %315, %125
  %128 = load %struct.subfile*, %struct.subfile** %9, align 8
  %129 = icmp ne %struct.subfile* %128, null
  br i1 %129, label %130, label %317

130:                                              ; preds = %127
  store i32 0, i32* %16, align 4
  store %struct.symtab* null, %struct.symtab** %7, align 8
  %131 = load %struct.blockvector*, %struct.blockvector** %8, align 8
  %132 = icmp ne %struct.blockvector* %131, null
  br i1 %132, label %133, label %264

133:                                              ; preds = %130
  %134 = load %struct.subfile*, %struct.subfile** %9, align 8
  %135 = getelementptr inbounds %struct.subfile, %struct.subfile* %134, i32 0, i32 2
  %136 = load %struct.linetable*, %struct.linetable** %135, align 8
  %137 = icmp ne %struct.linetable* %136, null
  br i1 %137, label %138, label %168

138:                                              ; preds = %133
  %139 = load %struct.subfile*, %struct.subfile** %9, align 8
  %140 = getelementptr inbounds %struct.subfile, %struct.subfile* %139, i32 0, i32 2
  %141 = load %struct.linetable*, %struct.linetable** %140, align 8
  %142 = getelementptr inbounds %struct.linetable, %struct.linetable* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = mul i64 %144, 4
  %146 = add i64 8, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %16, align 4
  %148 = load %struct.objfile*, %struct.objfile** %5, align 8
  %149 = getelementptr inbounds %struct.objfile, %struct.objfile* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @OBJF_REORDERED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %138
  %155 = load %struct.subfile*, %struct.subfile** %9, align 8
  %156 = getelementptr inbounds %struct.subfile, %struct.subfile* %155, i32 0, i32 2
  %157 = load %struct.linetable*, %struct.linetable** %156, align 8
  %158 = getelementptr inbounds %struct.linetable, %struct.linetable* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.subfile*, %struct.subfile** %9, align 8
  %161 = getelementptr inbounds %struct.subfile, %struct.subfile* %160, i32 0, i32 2
  %162 = load %struct.linetable*, %struct.linetable** %161, align 8
  %163 = getelementptr inbounds %struct.linetable, %struct.linetable* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @compare_line_numbers, align 4
  %166 = call i32 @qsort(i32 %159, i32 %164, i32 4, i32 %165)
  br label %167

167:                                              ; preds = %154, %138
  br label %168

168:                                              ; preds = %167, %133
  %169 = load %struct.subfile*, %struct.subfile** %9, align 8
  %170 = getelementptr inbounds %struct.subfile, %struct.subfile* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.objfile*, %struct.objfile** %5, align 8
  %173 = call %struct.symtab* @allocate_symtab(i32* %171, %struct.objfile* %172)
  store %struct.symtab* %173, %struct.symtab** %7, align 8
  %174 = load %struct.blockvector*, %struct.blockvector** %8, align 8
  %175 = load %struct.symtab*, %struct.symtab** %7, align 8
  %176 = getelementptr inbounds %struct.symtab, %struct.symtab* %175, i32 0, i32 9
  store %struct.blockvector* %174, %struct.blockvector** %176, align 8
  %177 = load i32*, i32** @pending_macros, align 8
  %178 = load %struct.symtab*, %struct.symtab** %7, align 8
  %179 = getelementptr inbounds %struct.symtab, %struct.symtab* %178, i32 0, i32 8
  store i32* %177, i32** %179, align 8
  %180 = load %struct.subfile*, %struct.subfile** %9, align 8
  %181 = getelementptr inbounds %struct.subfile, %struct.subfile* %180, i32 0, i32 2
  %182 = load %struct.linetable*, %struct.linetable** %181, align 8
  %183 = icmp ne %struct.linetable* %182, null
  br i1 %183, label %184, label %200

184:                                              ; preds = %168
  %185 = load %struct.objfile*, %struct.objfile** %5, align 8
  %186 = getelementptr inbounds %struct.objfile, %struct.objfile* %185, i32 0, i32 1
  %187 = load i32, i32* %16, align 4
  %188 = call i64 @obstack_alloc(i32* %186, i32 %187)
  %189 = inttoptr i64 %188 to %struct.linetable*
  %190 = load %struct.symtab*, %struct.symtab** %7, align 8
  %191 = getelementptr inbounds %struct.symtab, %struct.symtab* %190, i32 0, i32 7
  store %struct.linetable* %189, %struct.linetable** %191, align 8
  %192 = load %struct.symtab*, %struct.symtab** %7, align 8
  %193 = getelementptr inbounds %struct.symtab, %struct.symtab* %192, i32 0, i32 7
  %194 = load %struct.linetable*, %struct.linetable** %193, align 8
  %195 = load %struct.subfile*, %struct.subfile** %9, align 8
  %196 = getelementptr inbounds %struct.subfile, %struct.subfile* %195, i32 0, i32 2
  %197 = load %struct.linetable*, %struct.linetable** %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = call i32 @memcpy(%struct.linetable* %194, %struct.linetable* %197, i32 %198)
  br label %203

200:                                              ; preds = %168
  %201 = load %struct.symtab*, %struct.symtab** %7, align 8
  %202 = getelementptr inbounds %struct.symtab, %struct.symtab* %201, i32 0, i32 7
  store %struct.linetable* null, %struct.linetable** %202, align 8
  br label %203

203:                                              ; preds = %200, %184
  %204 = load i32, i32* %6, align 4
  %205 = load %struct.symtab*, %struct.symtab** %7, align 8
  %206 = getelementptr inbounds %struct.symtab, %struct.symtab* %205, i32 0, i32 0
  store i32 %204, i32* %206, align 8
  %207 = load %struct.subfile*, %struct.subfile** %9, align 8
  %208 = getelementptr inbounds %struct.subfile, %struct.subfile* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %230

211:                                              ; preds = %203
  %212 = load %struct.objfile*, %struct.objfile** %5, align 8
  %213 = getelementptr inbounds %struct.objfile, %struct.objfile* %212, i32 0, i32 1
  %214 = load %struct.subfile*, %struct.subfile** %9, align 8
  %215 = getelementptr inbounds %struct.subfile, %struct.subfile* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @strlen(i32* %216)
  %218 = add nsw i32 %217, 1
  %219 = call i64 @obstack_alloc(i32* %213, i32 %218)
  %220 = inttoptr i64 %219 to i8*
  %221 = load %struct.symtab*, %struct.symtab** %7, align 8
  %222 = getelementptr inbounds %struct.symtab, %struct.symtab* %221, i32 0, i32 1
  store i8* %220, i8** %222, align 8
  %223 = load %struct.symtab*, %struct.symtab** %7, align 8
  %224 = getelementptr inbounds %struct.symtab, %struct.symtab* %223, i32 0, i32 1
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.subfile*, %struct.subfile** %9, align 8
  %227 = getelementptr inbounds %struct.subfile, %struct.subfile* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @strcpy(i8* %225, i32* %228)
  br label %233

230:                                              ; preds = %203
  %231 = load %struct.symtab*, %struct.symtab** %7, align 8
  %232 = getelementptr inbounds %struct.symtab, %struct.symtab* %231, i32 0, i32 1
  store i8* null, i8** %232, align 8
  br label %233

233:                                              ; preds = %230, %211
  %234 = load i32, i32* @free_linetable, align 4
  %235 = load %struct.symtab*, %struct.symtab** %7, align 8
  %236 = getelementptr inbounds %struct.symtab, %struct.symtab* %235, i32 0, i32 6
  store i32 %234, i32* %236, align 8
  %237 = load %struct.symtab*, %struct.symtab** %7, align 8
  %238 = getelementptr inbounds %struct.symtab, %struct.symtab* %237, i32 0, i32 5
  store i32* null, i32** %238, align 8
  %239 = load %struct.subfile*, %struct.subfile** %9, align 8
  %240 = getelementptr inbounds %struct.subfile, %struct.subfile* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.symtab*, %struct.symtab** %7, align 8
  %243 = getelementptr inbounds %struct.symtab, %struct.symtab* %242, i32 0, i32 4
  store i32 %241, i32* %243, align 8
  %244 = load %struct.subfile*, %struct.subfile** %9, align 8
  %245 = getelementptr inbounds %struct.subfile, %struct.subfile* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %261

248:                                              ; preds = %233
  %249 = load %struct.subfile*, %struct.subfile** %9, align 8
  %250 = getelementptr inbounds %struct.subfile, %struct.subfile* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = load %struct.subfile*, %struct.subfile** %9, align 8
  %253 = getelementptr inbounds %struct.subfile, %struct.subfile* %252, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = call i32 @strlen(i32* %254)
  %256 = load %struct.objfile*, %struct.objfile** %5, align 8
  %257 = getelementptr inbounds %struct.objfile, %struct.objfile* %256, i32 0, i32 1
  %258 = call i32 @obsavestring(i32* %251, i32 %255, i32* %257)
  %259 = load %struct.symtab*, %struct.symtab** %7, align 8
  %260 = getelementptr inbounds %struct.symtab, %struct.symtab* %259, i32 0, i32 3
  store i32 %258, i32* %260, align 4
  br label %261

261:                                              ; preds = %248, %233
  %262 = load %struct.symtab*, %struct.symtab** %7, align 8
  %263 = getelementptr inbounds %struct.symtab, %struct.symtab* %262, i32 0, i32 2
  store i32 0, i32* %263, align 8
  br label %264

264:                                              ; preds = %261, %130
  %265 = load %struct.subfile*, %struct.subfile** %9, align 8
  %266 = getelementptr inbounds %struct.subfile, %struct.subfile* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %275

269:                                              ; preds = %264
  %270 = load %struct.subfile*, %struct.subfile** %9, align 8
  %271 = getelementptr inbounds %struct.subfile, %struct.subfile* %270, i32 0, i32 4
  %272 = load i32*, i32** %271, align 8
  %273 = bitcast i32* %272 to i8*
  %274 = call i32 @xfree(i8* %273)
  br label %275

275:                                              ; preds = %269, %264
  %276 = load %struct.subfile*, %struct.subfile** %9, align 8
  %277 = getelementptr inbounds %struct.subfile, %struct.subfile* %276, i32 0, i32 3
  %278 = load i32*, i32** %277, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %286

280:                                              ; preds = %275
  %281 = load %struct.subfile*, %struct.subfile** %9, align 8
  %282 = getelementptr inbounds %struct.subfile, %struct.subfile* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = bitcast i32* %283 to i8*
  %285 = call i32 @xfree(i8* %284)
  br label %286

286:                                              ; preds = %280, %275
  %287 = load %struct.subfile*, %struct.subfile** %9, align 8
  %288 = getelementptr inbounds %struct.subfile, %struct.subfile* %287, i32 0, i32 2
  %289 = load %struct.linetable*, %struct.linetable** %288, align 8
  %290 = icmp ne %struct.linetable* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %286
  %292 = load %struct.subfile*, %struct.subfile** %9, align 8
  %293 = getelementptr inbounds %struct.subfile, %struct.subfile* %292, i32 0, i32 2
  %294 = load %struct.linetable*, %struct.linetable** %293, align 8
  %295 = bitcast %struct.linetable* %294 to i8*
  %296 = call i32 @xfree(i8* %295)
  br label %297

297:                                              ; preds = %291, %286
  %298 = load %struct.subfile*, %struct.subfile** %9, align 8
  %299 = getelementptr inbounds %struct.subfile, %struct.subfile* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %308

302:                                              ; preds = %297
  %303 = load %struct.subfile*, %struct.subfile** %9, align 8
  %304 = getelementptr inbounds %struct.subfile, %struct.subfile* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = bitcast i32* %305 to i8*
  %307 = call i32 @xfree(i8* %306)
  br label %308

308:                                              ; preds = %302, %297
  %309 = load %struct.subfile*, %struct.subfile** %9, align 8
  %310 = getelementptr inbounds %struct.subfile, %struct.subfile* %309, i32 0, i32 0
  %311 = load %struct.subfile*, %struct.subfile** %310, align 8
  store %struct.subfile* %311, %struct.subfile** %11, align 8
  %312 = load %struct.subfile*, %struct.subfile** %9, align 8
  %313 = bitcast %struct.subfile* %312 to i8*
  %314 = call i32 @xfree(i8* %313)
  br label %315

315:                                              ; preds = %308
  %316 = load %struct.subfile*, %struct.subfile** %11, align 8
  store %struct.subfile* %316, %struct.subfile** %9, align 8
  br label %127

317:                                              ; preds = %127
  %318 = load %struct.symtab*, %struct.symtab** %7, align 8
  %319 = icmp ne %struct.symtab* %318, null
  br i1 %319, label %320, label %323

320:                                              ; preds = %317
  %321 = load %struct.symtab*, %struct.symtab** %7, align 8
  %322 = getelementptr inbounds %struct.symtab, %struct.symtab* %321, i32 0, i32 2
  store i32 1, i32* %322, align 8
  br label %323

323:                                              ; preds = %320, %317
  store i32* null, i32** @last_source_file, align 8
  store i32* null, i32** @current_subfile, align 8
  store i32* null, i32** @pending_macros, align 8
  %324 = load %struct.symtab*, %struct.symtab** %7, align 8
  ret %struct.symtab* %324
}

declare dso_local %struct.context_stack* @pop_context(...) #1

declare dso_local i32 @finish_block(i32, i32**, i32, i32, i32, %struct.objfile*) #1

declare dso_local i32 @complaint(i32*, i8*) #1

declare dso_local i64 @BLOCK_START(%struct.block*) #1

declare dso_local i32 @cleanup_undefined_types(...) #1

declare dso_local i32 @finish_global_stabs(%struct.objfile*) #1

declare dso_local %struct.blockvector* @make_blockvector(%struct.objfile*) #1

declare dso_local i32 @cp_finalize_namespace(i32, i32*) #1

declare dso_local i32 @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

declare dso_local %struct.symtab* @allocate_symtab(i32*, %struct.objfile*) #1

declare dso_local i64 @obstack_alloc(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.linetable*, %struct.linetable*, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @strcpy(i8*, i32*) #1

declare dso_local i32 @obsavestring(i32*, i32, i32*) #1

declare dso_local i32 @xfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
