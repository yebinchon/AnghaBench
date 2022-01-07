; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_common_init_builtins.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_common_init_builtins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.builtin_description = type { i64, i64, i32, i32 }

@V4SF_type_node = common dso_local global i32 0, align 4
@V16QI_type_node = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@V4SI_type_node = common dso_local global i32 0, align 4
@V8HI_type_node = common dso_local global i32 0, align 4
@integer_type_node = common dso_local global i32 0, align 4
@opaque_V2SI_type_node = common dso_local global i32 0, align 4
@opaque_V2SF_type_node = common dso_local global i32 0, align 4
@opaque_V4SI_type_node = common dso_local global i32 0, align 4
@char_type_node = common dso_local global i32 0, align 4
@bdesc_3arg = common dso_local global i64 0, align 8
@ALTIVEC_BUILTIN_OVERLOADED_FIRST = common dso_local global i32 0, align 4
@ALTIVEC_BUILTIN_OVERLOADED_LAST = common dso_local global i32 0, align 4
@CODE_FOR_nothing = common dso_local global i64 0, align 8
@insn_data = common dso_local global %struct.TYPE_4__* null, align 8
@QImode = common dso_local global i32 0, align 4
@bdesc_2arg = common dso_local global i64 0, align 8
@bdesc_1arg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rs6000_common_init_builtins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs6000_common_init_builtins() #0 {
  %1 = alloca %struct.builtin_description*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = load i32, i32* @V4SF_type_node, align 4
  %74 = load i32, i32* @V4SF_type_node, align 4
  %75 = load i32, i32* @V4SF_type_node, align 4
  %76 = load i32, i32* @V16QI_type_node, align 4
  %77 = load i32, i32* @NULL_TREE, align 4
  %78 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* @V4SI_type_node, align 4
  %80 = load i32, i32* @V4SI_type_node, align 4
  %81 = load i32, i32* @V4SI_type_node, align 4
  %82 = load i32, i32* @V16QI_type_node, align 4
  %83 = load i32, i32* @NULL_TREE, align 4
  %84 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @V8HI_type_node, align 4
  %86 = load i32, i32* @V8HI_type_node, align 4
  %87 = load i32, i32* @V8HI_type_node, align 4
  %88 = load i32, i32* @V16QI_type_node, align 4
  %89 = load i32, i32* @NULL_TREE, align 4
  %90 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %85, i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @V16QI_type_node, align 4
  %92 = load i32, i32* @V16QI_type_node, align 4
  %93 = load i32, i32* @V16QI_type_node, align 4
  %94 = load i32, i32* @V16QI_type_node, align 4
  %95 = load i32, i32* @NULL_TREE, align 4
  %96 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* @V4SI_type_node, align 4
  %98 = load i32, i32* @integer_type_node, align 4
  %99 = load i32, i32* @NULL_TREE, align 4
  %100 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %97, i32 %98, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @V8HI_type_node, align 4
  %102 = load i32, i32* @integer_type_node, align 4
  %103 = load i32, i32* @NULL_TREE, align 4
  %104 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @V16QI_type_node, align 4
  %106 = load i32, i32* @integer_type_node, align 4
  %107 = load i32, i32* @NULL_TREE, align 4
  %108 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* @V8HI_type_node, align 4
  %110 = load i32, i32* @V16QI_type_node, align 4
  %111 = load i32, i32* @NULL_TREE, align 4
  %112 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* @V4SF_type_node, align 4
  %114 = load i32, i32* @V4SF_type_node, align 4
  %115 = load i32, i32* @NULL_TREE, align 4
  %116 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* @opaque_V2SI_type_node, align 4
  %118 = load i32, i32* @opaque_V2SI_type_node, align 4
  %119 = load i32, i32* @opaque_V2SI_type_node, align 4
  %120 = load i32, i32* @NULL_TREE, align 4
  %121 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* @opaque_V2SF_type_node, align 4
  %123 = load i32, i32* @opaque_V2SF_type_node, align 4
  %124 = load i32, i32* @opaque_V2SF_type_node, align 4
  %125 = load i32, i32* @NULL_TREE, align 4
  %126 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %122, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* @opaque_V2SI_type_node, align 4
  %128 = load i32, i32* @integer_type_node, align 4
  %129 = load i32, i32* @integer_type_node, align 4
  %130 = load i32, i32* @NULL_TREE, align 4
  %131 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %127, i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* @opaque_V4SI_type_node, align 4
  %133 = load i32, i32* @opaque_V4SI_type_node, align 4
  %134 = load i32, i32* @NULL_TREE, align 4
  %135 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %132, i32 %133, i32 %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* @opaque_V2SI_type_node, align 4
  %137 = load i32, i32* @opaque_V2SI_type_node, align 4
  %138 = load i32, i32* @NULL_TREE, align 4
  %139 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %136, i32 %137, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* @opaque_V2SF_type_node, align 4
  %141 = load i32, i32* @opaque_V2SF_type_node, align 4
  %142 = load i32, i32* @NULL_TREE, align 4
  %143 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %140, i32 %141, i32 %142)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* @opaque_V2SF_type_node, align 4
  %145 = load i32, i32* @opaque_V2SI_type_node, align 4
  %146 = load i32, i32* @NULL_TREE, align 4
  %147 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* @opaque_V2SI_type_node, align 4
  %149 = load i32, i32* @opaque_V2SF_type_node, align 4
  %150 = load i32, i32* @NULL_TREE, align 4
  %151 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %148, i32 %149, i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* @opaque_V2SI_type_node, align 4
  %153 = load i32, i32* @opaque_V2SI_type_node, align 4
  %154 = load i32, i32* @char_type_node, align 4
  %155 = load i32, i32* @NULL_TREE, align 4
  %156 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %152, i32 %153, i32 %154, i32 %155)
  store i32 %156, i32* %20, align 4
  %157 = load i32, i32* @opaque_V2SI_type_node, align 4
  %158 = load i32, i32* @integer_type_node, align 4
  %159 = load i32, i32* @char_type_node, align 4
  %160 = load i32, i32* @NULL_TREE, align 4
  %161 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %21, align 4
  %162 = load i32, i32* @opaque_V2SI_type_node, align 4
  %163 = load i32, i32* @char_type_node, align 4
  %164 = load i32, i32* @NULL_TREE, align 4
  %165 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* @integer_type_node, align 4
  %167 = load i32, i32* @integer_type_node, align 4
  %168 = load i32, i32* @integer_type_node, align 4
  %169 = load i32, i32* @NULL_TREE, align 4
  %170 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* @opaque_V4SI_type_node, align 4
  %172 = load i32, i32* @opaque_V4SI_type_node, align 4
  %173 = load i32, i32* @opaque_V4SI_type_node, align 4
  %174 = load i32, i32* @NULL_TREE, align 4
  %175 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %171, i32 %172, i32 %173, i32 %174)
  store i32 %175, i32* %24, align 4
  %176 = load i32, i32* @V4SI_type_node, align 4
  %177 = load i32, i32* @V4SI_type_node, align 4
  %178 = load i32, i32* @V4SI_type_node, align 4
  %179 = load i32, i32* @NULL_TREE, align 4
  %180 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %25, align 4
  %181 = load i32, i32* @V4SF_type_node, align 4
  %182 = load i32, i32* @V4SI_type_node, align 4
  %183 = load i32, i32* @integer_type_node, align 4
  %184 = load i32, i32* @NULL_TREE, align 4
  %185 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %181, i32 %182, i32 %183, i32 %184)
  store i32 %185, i32* %26, align 4
  %186 = load i32, i32* @V4SI_type_node, align 4
  %187 = load i32, i32* @V4SF_type_node, align 4
  %188 = load i32, i32* @integer_type_node, align 4
  %189 = load i32, i32* @NULL_TREE, align 4
  %190 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %186, i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %27, align 4
  %191 = load i32, i32* @V4SI_type_node, align 4
  %192 = load i32, i32* @V4SI_type_node, align 4
  %193 = load i32, i32* @integer_type_node, align 4
  %194 = load i32, i32* @NULL_TREE, align 4
  %195 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %191, i32 %192, i32 %193, i32 %194)
  store i32 %195, i32* %28, align 4
  %196 = load i32, i32* @V8HI_type_node, align 4
  %197 = load i32, i32* @V8HI_type_node, align 4
  %198 = load i32, i32* @integer_type_node, align 4
  %199 = load i32, i32* @NULL_TREE, align 4
  %200 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %196, i32 %197, i32 %198, i32 %199)
  store i32 %200, i32* %29, align 4
  %201 = load i32, i32* @V16QI_type_node, align 4
  %202 = load i32, i32* @V16QI_type_node, align 4
  %203 = load i32, i32* @integer_type_node, align 4
  %204 = load i32, i32* @NULL_TREE, align 4
  %205 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %201, i32 %202, i32 %203, i32 %204)
  store i32 %205, i32* %30, align 4
  %206 = load i32, i32* @V16QI_type_node, align 4
  %207 = load i32, i32* @V16QI_type_node, align 4
  %208 = load i32, i32* @V16QI_type_node, align 4
  %209 = load i32, i32* @integer_type_node, align 4
  %210 = load i32, i32* @NULL_TREE, align 4
  %211 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %206, i32 %207, i32 %208, i32 %209, i32 %210)
  store i32 %211, i32* %31, align 4
  %212 = load i32, i32* @V8HI_type_node, align 4
  %213 = load i32, i32* @V8HI_type_node, align 4
  %214 = load i32, i32* @V8HI_type_node, align 4
  %215 = load i32, i32* @integer_type_node, align 4
  %216 = load i32, i32* @NULL_TREE, align 4
  %217 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %212, i32 %213, i32 %214, i32 %215, i32 %216)
  store i32 %217, i32* %32, align 4
  %218 = load i32, i32* @V4SI_type_node, align 4
  %219 = load i32, i32* @V4SI_type_node, align 4
  %220 = load i32, i32* @V4SI_type_node, align 4
  %221 = load i32, i32* @integer_type_node, align 4
  %222 = load i32, i32* @NULL_TREE, align 4
  %223 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %218, i32 %219, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %33, align 4
  %224 = load i32, i32* @V4SF_type_node, align 4
  %225 = load i32, i32* @V4SF_type_node, align 4
  %226 = load i32, i32* @V4SF_type_node, align 4
  %227 = load i32, i32* @integer_type_node, align 4
  %228 = load i32, i32* @NULL_TREE, align 4
  %229 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %224, i32 %225, i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %34, align 4
  %230 = load i32, i32* @V4SF_type_node, align 4
  %231 = load i32, i32* @V4SF_type_node, align 4
  %232 = load i32, i32* @V4SF_type_node, align 4
  %233 = load i32, i32* @NULL_TREE, align 4
  %234 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %230, i32 %231, i32 %232, i32 %233)
  store i32 %234, i32* %35, align 4
  %235 = load i32, i32* @opaque_V4SI_type_node, align 4
  %236 = load i32, i32* @opaque_V4SI_type_node, align 4
  %237 = load i32, i32* @opaque_V4SI_type_node, align 4
  %238 = load i32, i32* @opaque_V4SI_type_node, align 4
  %239 = load i32, i32* @NULL_TREE, align 4
  %240 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %235, i32 %236, i32 %237, i32 %238, i32 %239)
  store i32 %240, i32* %36, align 4
  %241 = load i32, i32* @V4SF_type_node, align 4
  %242 = load i32, i32* @V4SF_type_node, align 4
  %243 = load i32, i32* @V4SF_type_node, align 4
  %244 = load i32, i32* @V4SI_type_node, align 4
  %245 = load i32, i32* @NULL_TREE, align 4
  %246 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %241, i32 %242, i32 %243, i32 %244, i32 %245)
  store i32 %246, i32* %37, align 4
  %247 = load i32, i32* @V4SF_type_node, align 4
  %248 = load i32, i32* @V4SF_type_node, align 4
  %249 = load i32, i32* @V4SF_type_node, align 4
  %250 = load i32, i32* @V4SF_type_node, align 4
  %251 = load i32, i32* @NULL_TREE, align 4
  %252 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %247, i32 %248, i32 %249, i32 %250, i32 %251)
  store i32 %252, i32* %38, align 4
  %253 = load i32, i32* @V4SI_type_node, align 4
  %254 = load i32, i32* @V4SI_type_node, align 4
  %255 = load i32, i32* @V4SI_type_node, align 4
  %256 = load i32, i32* @V4SI_type_node, align 4
  %257 = load i32, i32* @NULL_TREE, align 4
  %258 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %253, i32 %254, i32 %255, i32 %256, i32 %257)
  store i32 %258, i32* %39, align 4
  %259 = load i32, i32* @V8HI_type_node, align 4
  %260 = load i32, i32* @V8HI_type_node, align 4
  %261 = load i32, i32* @V8HI_type_node, align 4
  %262 = load i32, i32* @NULL_TREE, align 4
  %263 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %259, i32 %260, i32 %261, i32 %262)
  store i32 %263, i32* %40, align 4
  %264 = load i32, i32* @V8HI_type_node, align 4
  %265 = load i32, i32* @V8HI_type_node, align 4
  %266 = load i32, i32* @V8HI_type_node, align 4
  %267 = load i32, i32* @V8HI_type_node, align 4
  %268 = load i32, i32* @NULL_TREE, align 4
  %269 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %264, i32 %265, i32 %266, i32 %267, i32 %268)
  store i32 %269, i32* %41, align 4
  %270 = load i32, i32* @V4SI_type_node, align 4
  %271 = load i32, i32* @V8HI_type_node, align 4
  %272 = load i32, i32* @V8HI_type_node, align 4
  %273 = load i32, i32* @V4SI_type_node, align 4
  %274 = load i32, i32* @NULL_TREE, align 4
  %275 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %270, i32 %271, i32 %272, i32 %273, i32 %274)
  store i32 %275, i32* %42, align 4
  %276 = load i32, i32* @V4SI_type_node, align 4
  %277 = load i32, i32* @V16QI_type_node, align 4
  %278 = load i32, i32* @V16QI_type_node, align 4
  %279 = load i32, i32* @V4SI_type_node, align 4
  %280 = load i32, i32* @NULL_TREE, align 4
  %281 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %276, i32 %277, i32 %278, i32 %279, i32 %280)
  store i32 %281, i32* %43, align 4
  %282 = load i32, i32* @V16QI_type_node, align 4
  %283 = load i32, i32* @V16QI_type_node, align 4
  %284 = load i32, i32* @V16QI_type_node, align 4
  %285 = load i32, i32* @NULL_TREE, align 4
  %286 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %282, i32 %283, i32 %284, i32 %285)
  store i32 %286, i32* %44, align 4
  %287 = load i32, i32* @V4SI_type_node, align 4
  %288 = load i32, i32* @V4SF_type_node, align 4
  %289 = load i32, i32* @V4SF_type_node, align 4
  %290 = load i32, i32* @NULL_TREE, align 4
  %291 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %287, i32 %288, i32 %289, i32 %290)
  store i32 %291, i32* %45, align 4
  %292 = load i32, i32* @V8HI_type_node, align 4
  %293 = load i32, i32* @V16QI_type_node, align 4
  %294 = load i32, i32* @V16QI_type_node, align 4
  %295 = load i32, i32* @NULL_TREE, align 4
  %296 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %292, i32 %293, i32 %294, i32 %295)
  store i32 %296, i32* %46, align 4
  %297 = load i32, i32* @V4SI_type_node, align 4
  %298 = load i32, i32* @V8HI_type_node, align 4
  %299 = load i32, i32* @V8HI_type_node, align 4
  %300 = load i32, i32* @NULL_TREE, align 4
  %301 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %297, i32 %298, i32 %299, i32 %300)
  store i32 %301, i32* %47, align 4
  %302 = load i32, i32* @V8HI_type_node, align 4
  %303 = load i32, i32* @V4SI_type_node, align 4
  %304 = load i32, i32* @V4SI_type_node, align 4
  %305 = load i32, i32* @NULL_TREE, align 4
  %306 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %302, i32 %303, i32 %304, i32 %305)
  store i32 %306, i32* %48, align 4
  %307 = load i32, i32* @V16QI_type_node, align 4
  %308 = load i32, i32* @V8HI_type_node, align 4
  %309 = load i32, i32* @V8HI_type_node, align 4
  %310 = load i32, i32* @NULL_TREE, align 4
  %311 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %307, i32 %308, i32 %309, i32 %310)
  store i32 %311, i32* %49, align 4
  %312 = load i32, i32* @V4SI_type_node, align 4
  %313 = load i32, i32* @V16QI_type_node, align 4
  %314 = load i32, i32* @V4SI_type_node, align 4
  %315 = load i32, i32* @NULL_TREE, align 4
  %316 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %312, i32 %313, i32 %314, i32 %315)
  store i32 %316, i32* %50, align 4
  %317 = load i32, i32* @V4SI_type_node, align 4
  %318 = load i32, i32* @V16QI_type_node, align 4
  %319 = load i32, i32* @V16QI_type_node, align 4
  %320 = load i32, i32* @NULL_TREE, align 4
  %321 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %317, i32 %318, i32 %319, i32 %320)
  store i32 %321, i32* %51, align 4
  %322 = load i32, i32* @V4SI_type_node, align 4
  %323 = load i32, i32* @V8HI_type_node, align 4
  %324 = load i32, i32* @V4SI_type_node, align 4
  %325 = load i32, i32* @NULL_TREE, align 4
  %326 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %322, i32 %323, i32 %324, i32 %325)
  store i32 %326, i32* %52, align 4
  %327 = load i32, i32* @V4SI_type_node, align 4
  %328 = load i32, i32* @V8HI_type_node, align 4
  %329 = load i32, i32* @NULL_TREE, align 4
  %330 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %327, i32 %328, i32 %329)
  store i32 %330, i32* %53, align 4
  %331 = load i32, i32* @integer_type_node, align 4
  %332 = load i32, i32* @V4SI_type_node, align 4
  %333 = load i32, i32* @V4SI_type_node, align 4
  %334 = load i32, i32* @NULL_TREE, align 4
  %335 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %331, i32 %332, i32 %333, i32 %334)
  store i32 %335, i32* %54, align 4
  %336 = load i32, i32* @integer_type_node, align 4
  %337 = load i32, i32* @V4SF_type_node, align 4
  %338 = load i32, i32* @V4SF_type_node, align 4
  %339 = load i32, i32* @NULL_TREE, align 4
  %340 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %336, i32 %337, i32 %338, i32 %339)
  store i32 %340, i32* %55, align 4
  %341 = load i32, i32* @integer_type_node, align 4
  %342 = load i32, i32* @V16QI_type_node, align 4
  %343 = load i32, i32* @V16QI_type_node, align 4
  %344 = load i32, i32* @NULL_TREE, align 4
  %345 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %341, i32 %342, i32 %343, i32 %344)
  store i32 %345, i32* %56, align 4
  %346 = load i32, i32* @integer_type_node, align 4
  %347 = load i32, i32* @V8HI_type_node, align 4
  %348 = load i32, i32* @V8HI_type_node, align 4
  %349 = load i32, i32* @NULL_TREE, align 4
  %350 = call i32 (i32, i32, i32, ...) @build_function_type_list(i32 %346, i32 %347, i32 %348, i32 %349)
  store i32 %350, i32* %57, align 4
  %351 = load i64, i64* @bdesc_3arg, align 8
  %352 = inttoptr i64 %351 to %struct.builtin_description*
  store %struct.builtin_description* %352, %struct.builtin_description** %1, align 8
  store i64 0, i64* %2, align 8
  br label %353

353:                                              ; preds = %612, %0
  %354 = load i64, i64* %2, align 8
  %355 = load i64, i64* @bdesc_3arg, align 8
  %356 = call i64 @ARRAY_SIZE(i64 %355)
  %357 = icmp ult i64 %354, %356
  br i1 %357, label %358, label %617

358:                                              ; preds = %353
  %359 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %360 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_FIRST, align 4
  %363 = icmp sge i32 %361, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %358
  %365 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %366 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_LAST, align 4
  %369 = icmp sle i32 %367, %368
  br label %370

370:                                              ; preds = %364, %358
  %371 = phi i1 [ false, %358 ], [ %369, %364 ]
  %372 = zext i1 %371 to i32
  store i32 %372, i32* %63, align 4
  %373 = load i32, i32* %63, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  store i32 128, i32* %58, align 4
  store i32 128, i32* %59, align 4
  store i32 128, i32* %60, align 4
  store i32 128, i32* %61, align 4
  br label %429

376:                                              ; preds = %370
  %377 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %378 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %376
  %382 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %383 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %382, i32 0, i32 1
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @CODE_FOR_nothing, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %388

387:                                              ; preds = %381, %376
  br label %612

388:                                              ; preds = %381
  %389 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %390 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %391 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %393, i32 0, i32 0
  %395 = load %struct.TYPE_3__*, %struct.TYPE_3__** %394, align 8
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i64 0
  %397 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  store i32 %398, i32* %58, align 4
  %399 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %400 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %401 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %403, i32 0, i32 0
  %405 = load %struct.TYPE_3__*, %struct.TYPE_3__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i64 1
  %407 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 4
  store i32 %408, i32* %59, align 4
  %409 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %410 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %411 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %409, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i64 2
  %417 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  store i32 %418, i32* %60, align 4
  %419 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %420 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %421 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %420, i32 0, i32 1
  %422 = load i64, i64* %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i64 %422
  %424 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %423, i32 0, i32 0
  %425 = load %struct.TYPE_3__*, %struct.TYPE_3__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %425, i64 3
  %427 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  store i32 %428, i32* %61, align 4
  br label %429

429:                                              ; preds = %388, %375
  %430 = load i32, i32* %58, align 4
  %431 = load i32, i32* %59, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %456

433:                                              ; preds = %429
  %434 = load i32, i32* %59, align 4
  %435 = load i32, i32* %60, align 4
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %456

437:                                              ; preds = %433
  %438 = load i32, i32* %60, align 4
  %439 = load i32, i32* %61, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %456

441:                                              ; preds = %437
  %442 = load i32, i32* %58, align 4
  switch i32 %442, label %453 [
    i32 128, label %443
    i32 130, label %445
    i32 131, label %447
    i32 129, label %449
    i32 134, label %451
  ]

443:                                              ; preds = %441
  %444 = load i32, i32* %36, align 4
  store i32 %444, i32* %62, align 4
  br label %455

445:                                              ; preds = %441
  %446 = load i32, i32* %39, align 4
  store i32 %446, i32* %62, align 4
  br label %455

447:                                              ; preds = %441
  %448 = load i32, i32* %38, align 4
  store i32 %448, i32* %62, align 4
  br label %455

449:                                              ; preds = %441
  %450 = load i32, i32* %41, align 4
  store i32 %450, i32* %62, align 4
  br label %455

451:                                              ; preds = %441
  %452 = load i32, i32* %6, align 4
  store i32 %452, i32* %62, align 4
  br label %455

453:                                              ; preds = %441
  %454 = call i32 (...) @gcc_unreachable()
  br label %455

455:                                              ; preds = %453, %451, %449, %447, %445, %443
  br label %600

456:                                              ; preds = %437, %433, %429
  %457 = load i32, i32* %58, align 4
  %458 = load i32, i32* %59, align 4
  %459 = icmp eq i32 %457, %458
  br i1 %459, label %460, label %480

460:                                              ; preds = %456
  %461 = load i32, i32* %59, align 4
  %462 = load i32, i32* %60, align 4
  %463 = icmp eq i32 %461, %462
  br i1 %463, label %464, label %480

464:                                              ; preds = %460
  %465 = load i32, i32* %61, align 4
  %466 = icmp eq i32 %465, 134
  br i1 %466, label %467, label %480

467:                                              ; preds = %464
  %468 = load i32, i32* %58, align 4
  switch i32 %468, label %477 [
    i32 130, label %469
    i32 131, label %471
    i32 129, label %473
    i32 134, label %475
  ]

469:                                              ; preds = %467
  %470 = load i32, i32* %4, align 4
  store i32 %470, i32* %62, align 4
  br label %479

471:                                              ; preds = %467
  %472 = load i32, i32* %3, align 4
  store i32 %472, i32* %62, align 4
  br label %479

473:                                              ; preds = %467
  %474 = load i32, i32* %5, align 4
  store i32 %474, i32* %62, align 4
  br label %479

475:                                              ; preds = %467
  %476 = load i32, i32* %6, align 4
  store i32 %476, i32* %62, align 4
  br label %479

477:                                              ; preds = %467
  %478 = call i32 (...) @gcc_unreachable()
  br label %479

479:                                              ; preds = %477, %475, %473, %471, %469
  br label %599

480:                                              ; preds = %464, %460, %456
  %481 = load i32, i32* %58, align 4
  %482 = icmp eq i32 %481, 130
  br i1 %482, label %483, label %494

483:                                              ; preds = %480
  %484 = load i32, i32* %59, align 4
  %485 = icmp eq i32 %484, 134
  br i1 %485, label %486, label %494

486:                                              ; preds = %483
  %487 = load i32, i32* %60, align 4
  %488 = icmp eq i32 %487, 134
  br i1 %488, label %489, label %494

489:                                              ; preds = %486
  %490 = load i32, i32* %61, align 4
  %491 = icmp eq i32 %490, 130
  br i1 %491, label %492, label %494

492:                                              ; preds = %489
  %493 = load i32, i32* %43, align 4
  store i32 %493, i32* %62, align 4
  br label %598

494:                                              ; preds = %489, %486, %483, %480
  %495 = load i32, i32* %58, align 4
  %496 = icmp eq i32 %495, 130
  br i1 %496, label %497, label %508

497:                                              ; preds = %494
  %498 = load i32, i32* %59, align 4
  %499 = icmp eq i32 %498, 129
  br i1 %499, label %500, label %508

500:                                              ; preds = %497
  %501 = load i32, i32* %60, align 4
  %502 = icmp eq i32 %501, 129
  br i1 %502, label %503, label %508

503:                                              ; preds = %500
  %504 = load i32, i32* %61, align 4
  %505 = icmp eq i32 %504, 130
  br i1 %505, label %506, label %508

506:                                              ; preds = %503
  %507 = load i32, i32* %42, align 4
  store i32 %507, i32* %62, align 4
  br label %597

508:                                              ; preds = %503, %500, %497, %494
  %509 = load i32, i32* %58, align 4
  %510 = icmp eq i32 %509, 131
  br i1 %510, label %511, label %522

511:                                              ; preds = %508
  %512 = load i32, i32* %59, align 4
  %513 = icmp eq i32 %512, 131
  br i1 %513, label %514, label %522

514:                                              ; preds = %511
  %515 = load i32, i32* %60, align 4
  %516 = icmp eq i32 %515, 131
  br i1 %516, label %517, label %522

517:                                              ; preds = %514
  %518 = load i32, i32* %61, align 4
  %519 = icmp eq i32 %518, 130
  br i1 %519, label %520, label %522

520:                                              ; preds = %517
  %521 = load i32, i32* %37, align 4
  store i32 %521, i32* %62, align 4
  br label %596

522:                                              ; preds = %517, %514, %511, %508
  %523 = load i32, i32* %58, align 4
  %524 = icmp eq i32 %523, 134
  br i1 %524, label %525, label %539

525:                                              ; preds = %522
  %526 = load i32, i32* %59, align 4
  %527 = load i32, i32* %58, align 4
  %528 = icmp eq i32 %526, %527
  br i1 %528, label %529, label %539

529:                                              ; preds = %525
  %530 = load i32, i32* %60, align 4
  %531 = load i32, i32* %58, align 4
  %532 = icmp eq i32 %530, %531
  br i1 %532, label %533, label %539

533:                                              ; preds = %529
  %534 = load i32, i32* %61, align 4
  %535 = load i32, i32* @QImode, align 4
  %536 = icmp eq i32 %534, %535
  br i1 %536, label %537, label %539

537:                                              ; preds = %533
  %538 = load i32, i32* %31, align 4
  store i32 %538, i32* %62, align 4
  br label %595

539:                                              ; preds = %533, %529, %525, %522
  %540 = load i32, i32* %58, align 4
  %541 = icmp eq i32 %540, 129
  br i1 %541, label %542, label %556

542:                                              ; preds = %539
  %543 = load i32, i32* %59, align 4
  %544 = load i32, i32* %58, align 4
  %545 = icmp eq i32 %543, %544
  br i1 %545, label %546, label %556

546:                                              ; preds = %542
  %547 = load i32, i32* %60, align 4
  %548 = load i32, i32* %58, align 4
  %549 = icmp eq i32 %547, %548
  br i1 %549, label %550, label %556

550:                                              ; preds = %546
  %551 = load i32, i32* %61, align 4
  %552 = load i32, i32* @QImode, align 4
  %553 = icmp eq i32 %551, %552
  br i1 %553, label %554, label %556

554:                                              ; preds = %550
  %555 = load i32, i32* %32, align 4
  store i32 %555, i32* %62, align 4
  br label %594

556:                                              ; preds = %550, %546, %542, %539
  %557 = load i32, i32* %58, align 4
  %558 = icmp eq i32 %557, 130
  br i1 %558, label %559, label %573

559:                                              ; preds = %556
  %560 = load i32, i32* %59, align 4
  %561 = load i32, i32* %58, align 4
  %562 = icmp eq i32 %560, %561
  br i1 %562, label %563, label %573

563:                                              ; preds = %559
  %564 = load i32, i32* %60, align 4
  %565 = load i32, i32* %58, align 4
  %566 = icmp eq i32 %564, %565
  br i1 %566, label %567, label %573

567:                                              ; preds = %563
  %568 = load i32, i32* %61, align 4
  %569 = load i32, i32* @QImode, align 4
  %570 = icmp eq i32 %568, %569
  br i1 %570, label %571, label %573

571:                                              ; preds = %567
  %572 = load i32, i32* %33, align 4
  store i32 %572, i32* %62, align 4
  br label %593

573:                                              ; preds = %567, %563, %559, %556
  %574 = load i32, i32* %58, align 4
  %575 = icmp eq i32 %574, 131
  br i1 %575, label %576, label %590

576:                                              ; preds = %573
  %577 = load i32, i32* %59, align 4
  %578 = load i32, i32* %58, align 4
  %579 = icmp eq i32 %577, %578
  br i1 %579, label %580, label %590

580:                                              ; preds = %576
  %581 = load i32, i32* %60, align 4
  %582 = load i32, i32* %58, align 4
  %583 = icmp eq i32 %581, %582
  br i1 %583, label %584, label %590

584:                                              ; preds = %580
  %585 = load i32, i32* %61, align 4
  %586 = load i32, i32* @QImode, align 4
  %587 = icmp eq i32 %585, %586
  br i1 %587, label %588, label %590

588:                                              ; preds = %584
  %589 = load i32, i32* %34, align 4
  store i32 %589, i32* %62, align 4
  br label %592

590:                                              ; preds = %584, %580, %576, %573
  %591 = call i32 (...) @gcc_unreachable()
  br label %592

592:                                              ; preds = %590, %588
  br label %593

593:                                              ; preds = %592, %571
  br label %594

594:                                              ; preds = %593, %554
  br label %595

595:                                              ; preds = %594, %537
  br label %596

596:                                              ; preds = %595, %520
  br label %597

597:                                              ; preds = %596, %506
  br label %598

598:                                              ; preds = %597, %492
  br label %599

599:                                              ; preds = %598, %479
  br label %600

600:                                              ; preds = %599, %455
  %601 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %602 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %601, i32 0, i32 3
  %603 = load i32, i32* %602, align 4
  %604 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %605 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %604, i32 0, i32 0
  %606 = load i64, i64* %605, align 8
  %607 = load i32, i32* %62, align 4
  %608 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %609 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %608, i32 0, i32 2
  %610 = load i32, i32* %609, align 8
  %611 = call i32 @def_builtin(i32 %603, i64 %606, i32 %607, i32 %610)
  br label %612

612:                                              ; preds = %600, %387
  %613 = load i64, i64* %2, align 8
  %614 = add i64 %613, 1
  store i64 %614, i64* %2, align 8
  %615 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %616 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %615, i32 1
  store %struct.builtin_description* %616, %struct.builtin_description** %1, align 8
  br label %353

617:                                              ; preds = %353
  %618 = load i64, i64* @bdesc_2arg, align 8
  %619 = inttoptr i64 %618 to %struct.builtin_description*
  store %struct.builtin_description* %619, %struct.builtin_description** %1, align 8
  store i64 0, i64* %2, align 8
  br label %620

620:                                              ; preds = %943, %617
  %621 = load i64, i64* %2, align 8
  %622 = load i64, i64* @bdesc_2arg, align 8
  %623 = call i64 @ARRAY_SIZE(i64 %622)
  %624 = icmp ult i64 %621, %623
  br i1 %624, label %625, label %948

625:                                              ; preds = %620
  %626 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %627 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %626, i32 0, i32 2
  %628 = load i32, i32* %627, align 8
  %629 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_FIRST, align 4
  %630 = icmp sge i32 %628, %629
  br i1 %630, label %631, label %637

631:                                              ; preds = %625
  %632 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %633 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %632, i32 0, i32 2
  %634 = load i32, i32* %633, align 8
  %635 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_LAST, align 4
  %636 = icmp sle i32 %634, %635
  br label %637

637:                                              ; preds = %631, %625
  %638 = phi i1 [ false, %625 ], [ %636, %631 ]
  %639 = zext i1 %638 to i32
  store i32 %639, i32* %68, align 4
  %640 = load i32, i32* %68, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %637
  store i32 128, i32* %64, align 4
  store i32 128, i32* %65, align 4
  store i32 128, i32* %66, align 4
  br label %686

643:                                              ; preds = %637
  %644 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %645 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %644, i32 0, i32 0
  %646 = load i64, i64* %645, align 8
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %654, label %648

648:                                              ; preds = %643
  %649 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %650 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %649, i32 0, i32 1
  %651 = load i64, i64* %650, align 8
  %652 = load i64, i64* @CODE_FOR_nothing, align 8
  %653 = icmp eq i64 %651, %652
  br i1 %653, label %654, label %655

654:                                              ; preds = %648, %643
  br label %943

655:                                              ; preds = %648
  %656 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %657 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %658 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %657, i32 0, i32 1
  %659 = load i64, i64* %658, align 8
  %660 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %656, i64 %659
  %661 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %660, i32 0, i32 0
  %662 = load %struct.TYPE_3__*, %struct.TYPE_3__** %661, align 8
  %663 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %662, i64 0
  %664 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %663, i32 0, i32 0
  %665 = load i32, i32* %664, align 4
  store i32 %665, i32* %64, align 4
  %666 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %667 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %668 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %667, i32 0, i32 1
  %669 = load i64, i64* %668, align 8
  %670 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %666, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %670, i32 0, i32 0
  %672 = load %struct.TYPE_3__*, %struct.TYPE_3__** %671, align 8
  %673 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %672, i64 1
  %674 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  store i32 %675, i32* %65, align 4
  %676 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %677 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %678 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %677, i32 0, i32 1
  %679 = load i64, i64* %678, align 8
  %680 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %676, i64 %679
  %681 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %680, i32 0, i32 0
  %682 = load %struct.TYPE_3__*, %struct.TYPE_3__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %682, i64 2
  %684 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 4
  store i32 %685, i32* %66, align 4
  br label %686

686:                                              ; preds = %655, %642
  %687 = load i32, i32* %64, align 4
  %688 = load i32, i32* %65, align 4
  %689 = icmp eq i32 %687, %688
  br i1 %689, label %690, label %715

690:                                              ; preds = %686
  %691 = load i32, i32* %65, align 4
  %692 = load i32, i32* %66, align 4
  %693 = icmp eq i32 %691, %692
  br i1 %693, label %694, label %715

694:                                              ; preds = %690
  %695 = load i32, i32* %64, align 4
  switch i32 %695, label %712 [
    i32 128, label %696
    i32 131, label %698
    i32 130, label %700
    i32 134, label %702
    i32 129, label %704
    i32 132, label %706
    i32 133, label %708
    i32 135, label %710
  ]

696:                                              ; preds = %694
  %697 = load i32, i32* %24, align 4
  store i32 %697, i32* %67, align 4
  br label %714

698:                                              ; preds = %694
  %699 = load i32, i32* %35, align 4
  store i32 %699, i32* %67, align 4
  br label %714

700:                                              ; preds = %694
  %701 = load i32, i32* %25, align 4
  store i32 %701, i32* %67, align 4
  br label %714

702:                                              ; preds = %694
  %703 = load i32, i32* %44, align 4
  store i32 %703, i32* %67, align 4
  br label %714

704:                                              ; preds = %694
  %705 = load i32, i32* %40, align 4
  store i32 %705, i32* %67, align 4
  br label %714

706:                                              ; preds = %694
  %707 = load i32, i32* %12, align 4
  store i32 %707, i32* %67, align 4
  br label %714

708:                                              ; preds = %694
  %709 = load i32, i32* %13, align 4
  store i32 %709, i32* %67, align 4
  br label %714

710:                                              ; preds = %694
  %711 = load i32, i32* %23, align 4
  store i32 %711, i32* %67, align 4
  br label %714

712:                                              ; preds = %694
  %713 = call i32 (...) @gcc_unreachable()
  br label %714

714:                                              ; preds = %712, %710, %708, %706, %704, %702, %700, %698, %696
  br label %931

715:                                              ; preds = %690, %686
  %716 = load i32, i32* %64, align 4
  %717 = icmp eq i32 %716, 130
  br i1 %717, label %718, label %726

718:                                              ; preds = %715
  %719 = load i32, i32* %65, align 4
  %720 = icmp eq i32 %719, 131
  br i1 %720, label %721, label %726

721:                                              ; preds = %718
  %722 = load i32, i32* %66, align 4
  %723 = icmp eq i32 %722, 131
  br i1 %723, label %724, label %726

724:                                              ; preds = %721
  %725 = load i32, i32* %45, align 4
  store i32 %725, i32* %67, align 4
  br label %930

726:                                              ; preds = %721, %718, %715
  %727 = load i32, i32* %64, align 4
  %728 = icmp eq i32 %727, 129
  br i1 %728, label %729, label %737

729:                                              ; preds = %726
  %730 = load i32, i32* %65, align 4
  %731 = icmp eq i32 %730, 134
  br i1 %731, label %732, label %737

732:                                              ; preds = %729
  %733 = load i32, i32* %66, align 4
  %734 = icmp eq i32 %733, 134
  br i1 %734, label %735, label %737

735:                                              ; preds = %732
  %736 = load i32, i32* %46, align 4
  store i32 %736, i32* %67, align 4
  br label %929

737:                                              ; preds = %732, %729, %726
  %738 = load i32, i32* %64, align 4
  %739 = icmp eq i32 %738, 130
  br i1 %739, label %740, label %748

740:                                              ; preds = %737
  %741 = load i32, i32* %65, align 4
  %742 = icmp eq i32 %741, 129
  br i1 %742, label %743, label %748

743:                                              ; preds = %740
  %744 = load i32, i32* %66, align 4
  %745 = icmp eq i32 %744, 129
  br i1 %745, label %746, label %748

746:                                              ; preds = %743
  %747 = load i32, i32* %47, align 4
  store i32 %747, i32* %67, align 4
  br label %928

748:                                              ; preds = %743, %740, %737
  %749 = load i32, i32* %64, align 4
  %750 = icmp eq i32 %749, 129
  br i1 %750, label %751, label %759

751:                                              ; preds = %748
  %752 = load i32, i32* %65, align 4
  %753 = icmp eq i32 %752, 130
  br i1 %753, label %754, label %759

754:                                              ; preds = %751
  %755 = load i32, i32* %66, align 4
  %756 = icmp eq i32 %755, 130
  br i1 %756, label %757, label %759

757:                                              ; preds = %754
  %758 = load i32, i32* %48, align 4
  store i32 %758, i32* %67, align 4
  br label %927

759:                                              ; preds = %754, %751, %748
  %760 = load i32, i32* %64, align 4
  %761 = icmp eq i32 %760, 134
  br i1 %761, label %762, label %770

762:                                              ; preds = %759
  %763 = load i32, i32* %65, align 4
  %764 = icmp eq i32 %763, 129
  br i1 %764, label %765, label %770

765:                                              ; preds = %762
  %766 = load i32, i32* %66, align 4
  %767 = icmp eq i32 %766, 129
  br i1 %767, label %768, label %770

768:                                              ; preds = %765
  %769 = load i32, i32* %49, align 4
  store i32 %769, i32* %67, align 4
  br label %926

770:                                              ; preds = %765, %762, %759
  %771 = load i32, i32* %64, align 4
  %772 = icmp eq i32 %771, 130
  br i1 %772, label %773, label %781

773:                                              ; preds = %770
  %774 = load i32, i32* %65, align 4
  %775 = icmp eq i32 %774, 134
  br i1 %775, label %776, label %781

776:                                              ; preds = %773
  %777 = load i32, i32* %66, align 4
  %778 = icmp eq i32 %777, 130
  br i1 %778, label %779, label %781

779:                                              ; preds = %776
  %780 = load i32, i32* %50, align 4
  store i32 %780, i32* %67, align 4
  br label %925

781:                                              ; preds = %776, %773, %770
  %782 = load i32, i32* %64, align 4
  %783 = icmp eq i32 %782, 130
  br i1 %783, label %784, label %792

784:                                              ; preds = %781
  %785 = load i32, i32* %65, align 4
  %786 = icmp eq i32 %785, 134
  br i1 %786, label %787, label %792

787:                                              ; preds = %784
  %788 = load i32, i32* %66, align 4
  %789 = icmp eq i32 %788, 134
  br i1 %789, label %790, label %792

790:                                              ; preds = %787
  %791 = load i32, i32* %51, align 4
  store i32 %791, i32* %67, align 4
  br label %924

792:                                              ; preds = %787, %784, %781
  %793 = load i32, i32* %64, align 4
  %794 = icmp eq i32 %793, 130
  br i1 %794, label %795, label %803

795:                                              ; preds = %792
  %796 = load i32, i32* %65, align 4
  %797 = icmp eq i32 %796, 129
  br i1 %797, label %798, label %803

798:                                              ; preds = %795
  %799 = load i32, i32* %66, align 4
  %800 = icmp eq i32 %799, 130
  br i1 %800, label %801, label %803

801:                                              ; preds = %798
  %802 = load i32, i32* %52, align 4
  store i32 %802, i32* %67, align 4
  br label %923

803:                                              ; preds = %798, %795, %792
  %804 = load i32, i32* %64, align 4
  %805 = icmp eq i32 %804, 130
  br i1 %805, label %806, label %815

806:                                              ; preds = %803
  %807 = load i32, i32* %65, align 4
  %808 = icmp eq i32 %807, 130
  br i1 %808, label %809, label %815

809:                                              ; preds = %806
  %810 = load i32, i32* %66, align 4
  %811 = load i32, i32* @QImode, align 4
  %812 = icmp eq i32 %810, %811
  br i1 %812, label %813, label %815

813:                                              ; preds = %809
  %814 = load i32, i32* %28, align 4
  store i32 %814, i32* %67, align 4
  br label %922

815:                                              ; preds = %809, %806, %803
  %816 = load i32, i32* %64, align 4
  %817 = icmp eq i32 %816, 129
  br i1 %817, label %818, label %827

818:                                              ; preds = %815
  %819 = load i32, i32* %65, align 4
  %820 = icmp eq i32 %819, 129
  br i1 %820, label %821, label %827

821:                                              ; preds = %818
  %822 = load i32, i32* %66, align 4
  %823 = load i32, i32* @QImode, align 4
  %824 = icmp eq i32 %822, %823
  br i1 %824, label %825, label %827

825:                                              ; preds = %821
  %826 = load i32, i32* %29, align 4
  store i32 %826, i32* %67, align 4
  br label %921

827:                                              ; preds = %821, %818, %815
  %828 = load i32, i32* %64, align 4
  %829 = icmp eq i32 %828, 134
  br i1 %829, label %830, label %839

830:                                              ; preds = %827
  %831 = load i32, i32* %65, align 4
  %832 = icmp eq i32 %831, 134
  br i1 %832, label %833, label %839

833:                                              ; preds = %830
  %834 = load i32, i32* %66, align 4
  %835 = load i32, i32* @QImode, align 4
  %836 = icmp eq i32 %834, %835
  br i1 %836, label %837, label %839

837:                                              ; preds = %833
  %838 = load i32, i32* %30, align 4
  store i32 %838, i32* %67, align 4
  br label %920

839:                                              ; preds = %833, %830, %827
  %840 = load i32, i32* %64, align 4
  %841 = icmp eq i32 %840, 131
  br i1 %841, label %842, label %851

842:                                              ; preds = %839
  %843 = load i32, i32* %65, align 4
  %844 = icmp eq i32 %843, 130
  br i1 %844, label %845, label %851

845:                                              ; preds = %842
  %846 = load i32, i32* %66, align 4
  %847 = load i32, i32* @QImode, align 4
  %848 = icmp eq i32 %846, %847
  br i1 %848, label %849, label %851

849:                                              ; preds = %845
  %850 = load i32, i32* %26, align 4
  store i32 %850, i32* %67, align 4
  br label %919

851:                                              ; preds = %845, %842, %839
  %852 = load i32, i32* %64, align 4
  %853 = icmp eq i32 %852, 130
  br i1 %853, label %854, label %863

854:                                              ; preds = %851
  %855 = load i32, i32* %65, align 4
  %856 = icmp eq i32 %855, 131
  br i1 %856, label %857, label %863

857:                                              ; preds = %854
  %858 = load i32, i32* %66, align 4
  %859 = load i32, i32* @QImode, align 4
  %860 = icmp eq i32 %858, %859
  br i1 %860, label %861, label %863

861:                                              ; preds = %857
  %862 = load i32, i32* %27, align 4
  store i32 %862, i32* %67, align 4
  br label %918

863:                                              ; preds = %857, %854, %851
  %864 = load i32, i32* %64, align 4
  %865 = icmp eq i32 %864, 132
  br i1 %865, label %866, label %874

866:                                              ; preds = %863
  %867 = load i32, i32* %65, align 4
  %868 = icmp eq i32 %867, 135
  br i1 %868, label %869, label %874

869:                                              ; preds = %866
  %870 = load i32, i32* %66, align 4
  %871 = icmp eq i32 %870, 135
  br i1 %871, label %872, label %874

872:                                              ; preds = %869
  %873 = load i32, i32* %14, align 4
  store i32 %873, i32* %67, align 4
  br label %917

874:                                              ; preds = %869, %866, %863
  %875 = load i32, i32* %64, align 4
  %876 = icmp eq i32 %875, 132
  br i1 %876, label %877, label %886

877:                                              ; preds = %874
  %878 = load i32, i32* %65, align 4
  %879 = icmp eq i32 %878, 132
  br i1 %879, label %880, label %886

880:                                              ; preds = %877
  %881 = load i32, i32* %66, align 4
  %882 = load i32, i32* @QImode, align 4
  %883 = icmp eq i32 %881, %882
  br i1 %883, label %884, label %886

884:                                              ; preds = %880
  %885 = load i32, i32* %20, align 4
  store i32 %885, i32* %67, align 4
  br label %916

886:                                              ; preds = %880, %877, %874
  %887 = load i32, i32* %64, align 4
  %888 = icmp eq i32 %887, 132
  br i1 %888, label %889, label %898

889:                                              ; preds = %886
  %890 = load i32, i32* %65, align 4
  %891 = icmp eq i32 %890, 135
  br i1 %891, label %892, label %898

892:                                              ; preds = %889
  %893 = load i32, i32* %66, align 4
  %894 = load i32, i32* @QImode, align 4
  %895 = icmp eq i32 %893, %894
  br i1 %895, label %896, label %898

896:                                              ; preds = %892
  %897 = load i32, i32* %21, align 4
  store i32 %897, i32* %67, align 4
  br label %915

898:                                              ; preds = %892, %889, %886
  %899 = load i32, i32* %64, align 4
  %900 = icmp eq i32 %899, 135
  %901 = zext i1 %900 to i32
  %902 = call i32 @gcc_assert(i32 %901)
  %903 = load i32, i32* %65, align 4
  switch i32 %903, label %912 [
    i32 130, label %904
    i32 131, label %906
    i32 134, label %908
    i32 129, label %910
  ]

904:                                              ; preds = %898
  %905 = load i32, i32* %54, align 4
  store i32 %905, i32* %67, align 4
  br label %914

906:                                              ; preds = %898
  %907 = load i32, i32* %55, align 4
  store i32 %907, i32* %67, align 4
  br label %914

908:                                              ; preds = %898
  %909 = load i32, i32* %56, align 4
  store i32 %909, i32* %67, align 4
  br label %914

910:                                              ; preds = %898
  %911 = load i32, i32* %57, align 4
  store i32 %911, i32* %67, align 4
  br label %914

912:                                              ; preds = %898
  %913 = call i32 (...) @gcc_unreachable()
  br label %914

914:                                              ; preds = %912, %910, %908, %906, %904
  br label %915

915:                                              ; preds = %914, %896
  br label %916

916:                                              ; preds = %915, %884
  br label %917

917:                                              ; preds = %916, %872
  br label %918

918:                                              ; preds = %917, %861
  br label %919

919:                                              ; preds = %918, %849
  br label %920

920:                                              ; preds = %919, %837
  br label %921

921:                                              ; preds = %920, %825
  br label %922

922:                                              ; preds = %921, %813
  br label %923

923:                                              ; preds = %922, %801
  br label %924

924:                                              ; preds = %923, %790
  br label %925

925:                                              ; preds = %924, %779
  br label %926

926:                                              ; preds = %925, %768
  br label %927

927:                                              ; preds = %926, %757
  br label %928

928:                                              ; preds = %927, %746
  br label %929

929:                                              ; preds = %928, %735
  br label %930

930:                                              ; preds = %929, %724
  br label %931

931:                                              ; preds = %930, %714
  %932 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %933 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %932, i32 0, i32 3
  %934 = load i32, i32* %933, align 4
  %935 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %936 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %935, i32 0, i32 0
  %937 = load i64, i64* %936, align 8
  %938 = load i32, i32* %67, align 4
  %939 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %940 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %939, i32 0, i32 2
  %941 = load i32, i32* %940, align 8
  %942 = call i32 @def_builtin(i32 %934, i64 %937, i32 %938, i32 %941)
  br label %943

943:                                              ; preds = %931, %654
  %944 = load i64, i64* %2, align 8
  %945 = add i64 %944, 1
  store i64 %945, i64* %2, align 8
  %946 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %947 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %946, i32 1
  store %struct.builtin_description* %947, %struct.builtin_description** %1, align 8
  br label %620

948:                                              ; preds = %620
  %949 = load i64, i64* @bdesc_1arg, align 8
  %950 = inttoptr i64 %949 to %struct.builtin_description*
  store %struct.builtin_description* %950, %struct.builtin_description** %1, align 8
  store i64 0, i64* %2, align 8
  br label %951

951:                                              ; preds = %1132, %948
  %952 = load i64, i64* %2, align 8
  %953 = load i64, i64* @bdesc_1arg, align 8
  %954 = call i64 @ARRAY_SIZE(i64 %953)
  %955 = icmp ult i64 %952, %954
  br i1 %955, label %956, label %1137

956:                                              ; preds = %951
  %957 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %958 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %957, i32 0, i32 2
  %959 = load i32, i32* %958, align 8
  %960 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_FIRST, align 4
  %961 = icmp sge i32 %959, %960
  br i1 %961, label %962, label %968

962:                                              ; preds = %956
  %963 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %964 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %963, i32 0, i32 2
  %965 = load i32, i32* %964, align 8
  %966 = load i32, i32* @ALTIVEC_BUILTIN_OVERLOADED_LAST, align 4
  %967 = icmp sle i32 %965, %966
  br label %968

968:                                              ; preds = %962, %956
  %969 = phi i1 [ false, %956 ], [ %967, %962 ]
  %970 = zext i1 %969 to i32
  store i32 %970, i32* %72, align 4
  %971 = load i32, i32* %72, align 4
  %972 = icmp ne i32 %971, 0
  br i1 %972, label %973, label %974

973:                                              ; preds = %968
  store i32 128, i32* %69, align 4
  store i32 128, i32* %70, align 4
  br label %1007

974:                                              ; preds = %968
  %975 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %976 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %975, i32 0, i32 0
  %977 = load i64, i64* %976, align 8
  %978 = icmp eq i64 %977, 0
  br i1 %978, label %985, label %979

979:                                              ; preds = %974
  %980 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %981 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %980, i32 0, i32 1
  %982 = load i64, i64* %981, align 8
  %983 = load i64, i64* @CODE_FOR_nothing, align 8
  %984 = icmp eq i64 %982, %983
  br i1 %984, label %985, label %986

985:                                              ; preds = %979, %974
  br label %1132

986:                                              ; preds = %979
  %987 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %988 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %989 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %988, i32 0, i32 1
  %990 = load i64, i64* %989, align 8
  %991 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %987, i64 %990
  %992 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %991, i32 0, i32 0
  %993 = load %struct.TYPE_3__*, %struct.TYPE_3__** %992, align 8
  %994 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %993, i64 0
  %995 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %994, i32 0, i32 0
  %996 = load i32, i32* %995, align 4
  store i32 %996, i32* %69, align 4
  %997 = load %struct.TYPE_4__*, %struct.TYPE_4__** @insn_data, align 8
  %998 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %999 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %998, i32 0, i32 1
  %1000 = load i64, i64* %999, align 8
  %1001 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %997, i64 %1000
  %1002 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1001, i32 0, i32 0
  %1003 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1002, align 8
  %1004 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1003, i64 1
  %1005 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1004, i32 0, i32 0
  %1006 = load i32, i32* %1005, align 4
  store i32 %1006, i32* %70, align 4
  br label %1007

1007:                                             ; preds = %986, %973
  %1008 = load i32, i32* %69, align 4
  %1009 = icmp eq i32 %1008, 130
  br i1 %1009, label %1010, label %1016

1010:                                             ; preds = %1007
  %1011 = load i32, i32* %70, align 4
  %1012 = load i32, i32* @QImode, align 4
  %1013 = icmp eq i32 %1011, %1012
  br i1 %1013, label %1014, label %1016

1014:                                             ; preds = %1010
  %1015 = load i32, i32* %7, align 4
  store i32 %1015, i32* %71, align 4
  br label %1120

1016:                                             ; preds = %1010, %1007
  %1017 = load i32, i32* %69, align 4
  %1018 = icmp eq i32 %1017, 129
  br i1 %1018, label %1019, label %1025

1019:                                             ; preds = %1016
  %1020 = load i32, i32* %70, align 4
  %1021 = load i32, i32* @QImode, align 4
  %1022 = icmp eq i32 %1020, %1021
  br i1 %1022, label %1023, label %1025

1023:                                             ; preds = %1019
  %1024 = load i32, i32* %8, align 4
  store i32 %1024, i32* %71, align 4
  br label %1119

1025:                                             ; preds = %1019, %1016
  %1026 = load i32, i32* %69, align 4
  %1027 = icmp eq i32 %1026, 134
  br i1 %1027, label %1028, label %1034

1028:                                             ; preds = %1025
  %1029 = load i32, i32* %70, align 4
  %1030 = load i32, i32* @QImode, align 4
  %1031 = icmp eq i32 %1029, %1030
  br i1 %1031, label %1032, label %1034

1032:                                             ; preds = %1028
  %1033 = load i32, i32* %9, align 4
  store i32 %1033, i32* %71, align 4
  br label %1118

1034:                                             ; preds = %1028, %1025
  %1035 = load i32, i32* %69, align 4
  %1036 = icmp eq i32 %1035, 128
  br i1 %1036, label %1037, label %1042

1037:                                             ; preds = %1034
  %1038 = load i32, i32* %70, align 4
  %1039 = icmp eq i32 %1038, 128
  br i1 %1039, label %1040, label %1042

1040:                                             ; preds = %1037
  %1041 = load i32, i32* %15, align 4
  store i32 %1041, i32* %71, align 4
  br label %1117

1042:                                             ; preds = %1037, %1034
  %1043 = load i32, i32* %69, align 4
  %1044 = icmp eq i32 %1043, 131
  br i1 %1044, label %1045, label %1050

1045:                                             ; preds = %1042
  %1046 = load i32, i32* %70, align 4
  %1047 = icmp eq i32 %1046, 131
  br i1 %1047, label %1048, label %1050

1048:                                             ; preds = %1045
  %1049 = load i32, i32* %11, align 4
  store i32 %1049, i32* %71, align 4
  br label %1116

1050:                                             ; preds = %1045, %1042
  %1051 = load i32, i32* %69, align 4
  %1052 = icmp eq i32 %1051, 129
  br i1 %1052, label %1053, label %1058

1053:                                             ; preds = %1050
  %1054 = load i32, i32* %70, align 4
  %1055 = icmp eq i32 %1054, 134
  br i1 %1055, label %1056, label %1058

1056:                                             ; preds = %1053
  %1057 = load i32, i32* %10, align 4
  store i32 %1057, i32* %71, align 4
  br label %1115

1058:                                             ; preds = %1053, %1050
  %1059 = load i32, i32* %69, align 4
  %1060 = icmp eq i32 %1059, 130
  br i1 %1060, label %1061, label %1066

1061:                                             ; preds = %1058
  %1062 = load i32, i32* %70, align 4
  %1063 = icmp eq i32 %1062, 129
  br i1 %1063, label %1064, label %1066

1064:                                             ; preds = %1061
  %1065 = load i32, i32* %53, align 4
  store i32 %1065, i32* %71, align 4
  br label %1114

1066:                                             ; preds = %1061, %1058
  %1067 = load i32, i32* %69, align 4
  %1068 = icmp eq i32 %1067, 132
  br i1 %1068, label %1069, label %1074

1069:                                             ; preds = %1066
  %1070 = load i32, i32* %70, align 4
  %1071 = icmp eq i32 %1070, 132
  br i1 %1071, label %1072, label %1074

1072:                                             ; preds = %1069
  %1073 = load i32, i32* %16, align 4
  store i32 %1073, i32* %71, align 4
  br label %1113

1074:                                             ; preds = %1069, %1066
  %1075 = load i32, i32* %69, align 4
  %1076 = icmp eq i32 %1075, 133
  br i1 %1076, label %1077, label %1082

1077:                                             ; preds = %1074
  %1078 = load i32, i32* %70, align 4
  %1079 = icmp eq i32 %1078, 133
  br i1 %1079, label %1080, label %1082

1080:                                             ; preds = %1077
  %1081 = load i32, i32* %17, align 4
  store i32 %1081, i32* %71, align 4
  br label %1112

1082:                                             ; preds = %1077, %1074
  %1083 = load i32, i32* %69, align 4
  %1084 = icmp eq i32 %1083, 133
  br i1 %1084, label %1085, label %1090

1085:                                             ; preds = %1082
  %1086 = load i32, i32* %70, align 4
  %1087 = icmp eq i32 %1086, 132
  br i1 %1087, label %1088, label %1090

1088:                                             ; preds = %1085
  %1089 = load i32, i32* %18, align 4
  store i32 %1089, i32* %71, align 4
  br label %1111

1090:                                             ; preds = %1085, %1082
  %1091 = load i32, i32* %69, align 4
  %1092 = icmp eq i32 %1091, 132
  br i1 %1092, label %1093, label %1098

1093:                                             ; preds = %1090
  %1094 = load i32, i32* %70, align 4
  %1095 = icmp eq i32 %1094, 133
  br i1 %1095, label %1096, label %1098

1096:                                             ; preds = %1093
  %1097 = load i32, i32* %19, align 4
  store i32 %1097, i32* %71, align 4
  br label %1110

1098:                                             ; preds = %1093, %1090
  %1099 = load i32, i32* %69, align 4
  %1100 = icmp eq i32 %1099, 132
  br i1 %1100, label %1101, label %1107

1101:                                             ; preds = %1098
  %1102 = load i32, i32* %70, align 4
  %1103 = load i32, i32* @QImode, align 4
  %1104 = icmp eq i32 %1102, %1103
  br i1 %1104, label %1105, label %1107

1105:                                             ; preds = %1101
  %1106 = load i32, i32* %22, align 4
  store i32 %1106, i32* %71, align 4
  br label %1109

1107:                                             ; preds = %1101, %1098
  %1108 = call i32 (...) @gcc_unreachable()
  br label %1109

1109:                                             ; preds = %1107, %1105
  br label %1110

1110:                                             ; preds = %1109, %1096
  br label %1111

1111:                                             ; preds = %1110, %1088
  br label %1112

1112:                                             ; preds = %1111, %1080
  br label %1113

1113:                                             ; preds = %1112, %1072
  br label %1114

1114:                                             ; preds = %1113, %1064
  br label %1115

1115:                                             ; preds = %1114, %1056
  br label %1116

1116:                                             ; preds = %1115, %1048
  br label %1117

1117:                                             ; preds = %1116, %1040
  br label %1118

1118:                                             ; preds = %1117, %1032
  br label %1119

1119:                                             ; preds = %1118, %1023
  br label %1120

1120:                                             ; preds = %1119, %1014
  %1121 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %1122 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %1121, i32 0, i32 3
  %1123 = load i32, i32* %1122, align 4
  %1124 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %1125 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %1124, i32 0, i32 0
  %1126 = load i64, i64* %1125, align 8
  %1127 = load i32, i32* %71, align 4
  %1128 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %1129 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %1128, i32 0, i32 2
  %1130 = load i32, i32* %1129, align 8
  %1131 = call i32 @def_builtin(i32 %1123, i64 %1126, i32 %1127, i32 %1130)
  br label %1132

1132:                                             ; preds = %1120, %985
  %1133 = load i64, i64* %2, align 8
  %1134 = add i64 %1133, 1
  store i64 %1134, i64* %2, align 8
  %1135 = load %struct.builtin_description*, %struct.builtin_description** %1, align 8
  %1136 = getelementptr inbounds %struct.builtin_description, %struct.builtin_description* %1135, i32 1
  store %struct.builtin_description* %1136, %struct.builtin_description** %1, align 8
  br label %951

1137:                                             ; preds = %951
  ret void
}

declare dso_local i32 @build_function_type_list(i32, i32, i32, ...) #1

declare dso_local i64 @ARRAY_SIZE(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @def_builtin(i32, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
