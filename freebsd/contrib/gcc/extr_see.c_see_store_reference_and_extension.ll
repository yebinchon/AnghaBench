; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_store_reference_and_extension.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_see.c_see_store_reference_and_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.see_ref_s = type { i32*, i32*, i32*, i32*, i32*, i32 }

@see_bb_splay_ar = common dso_local global i64* null, align 8
@last_bb = common dso_local global i32 0, align 4
@splay_tree_compare_ints = common dso_local global i32 0, align 4
@see_free_ref_s = common dso_local global i32 0, align 4
@df = common dso_local global i32 0, align 4
@hash_descriptor_extension = common dso_local global i32 0, align 4
@eq_descriptor_extension = common dso_local global i32 0, align 4
@INSERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @see_store_reference_and_extension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @see_store_reference_and_extension(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.see_ref_s*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  store i8* null, i8** %11, align 8
  store %struct.see_ref_s* null, %struct.see_ref_s** %12, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %3
  %19 = phi i1 [ false, %3 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i64*, i64** @see_bb_splay_ar, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %240

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @BLOCK_NUM(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @last_bb, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 0
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i64*, i64** @see_bb_splay_ar, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @splay_tree_compare_ints, align 4
  %46 = load i32, i32* @see_free_ref_s, align 4
  %47 = call i64 @splay_tree_new(i32 %45, i32* null, i32 %46)
  %48 = load i64*, i64** @see_bb_splay_ar, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %47, i64* %51, align 8
  br label %136

52:                                               ; preds = %34
  %53 = load i64*, i64** @see_bb_splay_ar, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @df, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @DF_INSN_LUID(i32 %58, i32* %59)
  %61 = call %struct.TYPE_3__* @splay_tree_lookup(i64 %57, i32 %60)
  store %struct.TYPE_3__* %61, %struct.TYPE_3__** %10, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %63 = icmp ne %struct.TYPE_3__* %62, null
  br i1 %63, label %64, label %135

64:                                               ; preds = %52
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %132 [
    i32 130, label %66
    i32 129, label %88
    i32 128, label %110
  ]

66:                                               ; preds = %64
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to %struct.see_ref_s*
  %71 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i8*
  store i8* %73, i8** %11, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @hash_descriptor_extension, align 4
  %78 = load i32, i32* @eq_descriptor_extension, align 4
  %79 = call i8* @htab_create(i32 10, i32 %77, i32 %78, i32* null)
  store i8* %79, i8** %11, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.see_ref_s*
  %86 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %85, i32 0, i32 1
  store i32* %81, i32** %86, align 8
  br label %87

87:                                               ; preds = %76, %66
  br label %134

88:                                               ; preds = %64
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.see_ref_s*
  %93 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = bitcast i32* %94 to i8*
  store i8* %95, i8** %11, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %109, label %98

98:                                               ; preds = %88
  %99 = load i32, i32* @hash_descriptor_extension, align 4
  %100 = load i32, i32* @eq_descriptor_extension, align 4
  %101 = call i8* @htab_create(i32 10, i32 %99, i32 %100, i32* null)
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = bitcast i8* %102 to i32*
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to %struct.see_ref_s*
  %108 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %107, i32 0, i32 0
  store i32* %103, i32** %108, align 8
  br label %109

109:                                              ; preds = %98, %88
  br label %134

110:                                              ; preds = %64
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = inttoptr i64 %113 to %struct.see_ref_s*
  %115 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = bitcast i32* %116 to i8*
  store i8* %117, i8** %11, align 8
  %118 = load i8*, i8** %11, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %131, label %120

120:                                              ; preds = %110
  %121 = load i32, i32* @hash_descriptor_extension, align 4
  %122 = load i32, i32* @eq_descriptor_extension, align 4
  %123 = call i8* @htab_create(i32 10, i32 %121, i32 %122, i32* null)
  store i8* %123, i8** %11, align 8
  %124 = load i8*, i8** %11, align 8
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.see_ref_s*
  %130 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %129, i32 0, i32 2
  store i32* %125, i32** %130, align 8
  br label %131

131:                                              ; preds = %120, %110
  br label %134

132:                                              ; preds = %64
  %133 = call i32 (...) @gcc_unreachable()
  br label %134

134:                                              ; preds = %132, %131, %109, %87
  br label %135

135:                                              ; preds = %134, %52
  br label %136

136:                                              ; preds = %135, %44
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %138 = icmp ne %struct.TYPE_3__* %137, null
  br i1 %138, label %200, label %139

139:                                              ; preds = %136
  %140 = call %struct.see_ref_s* @xmalloc(i32 48)
  store %struct.see_ref_s* %140, %struct.see_ref_s** %12, align 8
  %141 = load i32, i32* @df, align 4
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @DF_INSN_LUID(i32 %141, i32* %142)
  %144 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %145 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %144, i32 0, i32 5
  store i32 %143, i32* %145, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %148 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %147, i32 0, i32 4
  store i32* %146, i32** %148, align 8
  %149 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %150 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %149, i32 0, i32 3
  store i32* null, i32** %150, align 8
  %151 = load i32, i32* %7, align 4
  switch i32 %151, label %197 [
    i32 130, label %152
    i32 129, label %167
    i32 128, label %182
  ]

152:                                              ; preds = %139
  %153 = load i32, i32* @hash_descriptor_extension, align 4
  %154 = load i32, i32* @eq_descriptor_extension, align 4
  %155 = call i8* @htab_create(i32 10, i32 %153, i32 %154, i32* null)
  %156 = bitcast i8* %155 to i32*
  %157 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %158 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %157, i32 0, i32 1
  store i32* %156, i32** %158, align 8
  %159 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %160 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = bitcast i32* %161 to i8*
  store i8* %162, i8** %11, align 8
  %163 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %164 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %163, i32 0, i32 0
  store i32* null, i32** %164, align 8
  %165 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %166 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %165, i32 0, i32 2
  store i32* null, i32** %166, align 8
  br label %199

167:                                              ; preds = %139
  %168 = load i32, i32* @hash_descriptor_extension, align 4
  %169 = load i32, i32* @eq_descriptor_extension, align 4
  %170 = call i8* @htab_create(i32 10, i32 %168, i32 %169, i32* null)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %173 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %172, i32 0, i32 0
  store i32* %171, i32** %173, align 8
  %174 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %175 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = bitcast i32* %176 to i8*
  store i8* %177, i8** %11, align 8
  %178 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %179 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %178, i32 0, i32 1
  store i32* null, i32** %179, align 8
  %180 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %181 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %180, i32 0, i32 2
  store i32* null, i32** %181, align 8
  br label %199

182:                                              ; preds = %139
  %183 = load i32, i32* @hash_descriptor_extension, align 4
  %184 = load i32, i32* @eq_descriptor_extension, align 4
  %185 = call i8* @htab_create(i32 10, i32 %183, i32 %184, i32* null)
  %186 = bitcast i8* %185 to i32*
  %187 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %188 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %187, i32 0, i32 2
  store i32* %186, i32** %188, align 8
  %189 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %190 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = bitcast i32* %191 to i8*
  store i8* %192, i8** %11, align 8
  %193 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %194 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %193, i32 0, i32 1
  store i32* null, i32** %194, align 8
  %195 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %196 = getelementptr inbounds %struct.see_ref_s, %struct.see_ref_s* %195, i32 0, i32 0
  store i32* null, i32** %196, align 8
  br label %199

197:                                              ; preds = %139
  %198 = call i32 (...) @gcc_unreachable()
  br label %199

199:                                              ; preds = %197, %182, %167, %152
  br label %200

200:                                              ; preds = %199, %136
  %201 = load i8*, i8** %11, align 8
  %202 = load i32*, i32** %6, align 8
  %203 = load i32, i32* @INSERT, align 4
  %204 = call i64 @htab_find_slot(i8* %201, i32* %202, i32 %203)
  %205 = inttoptr i64 %204 to i32**
  store i32** %205, i32*** %8, align 8
  %206 = load i32**, i32*** %8, align 8
  %207 = load i32*, i32** %206, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %221

209:                                              ; preds = %200
  %210 = load i32, i32* %7, align 4
  %211 = icmp eq i32 %210, 128
  %212 = zext i1 %211 to i32
  %213 = call i32 @gcc_assert(i32 %212)
  %214 = load i32**, i32*** %8, align 8
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @PATTERN(i32* %215)
  %217 = load i32*, i32** %6, align 8
  %218 = call i32 @PATTERN(i32* %217)
  %219 = call i32 @rtx_equal_p(i32 %216, i32 %218)
  %220 = call i32 @gcc_assert(i32 %219)
  br label %224

221:                                              ; preds = %200
  %222 = load i32*, i32** %6, align 8
  %223 = load i32**, i32*** %8, align 8
  store i32* %222, i32** %223, align 8
  br label %224

224:                                              ; preds = %221, %209
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %226 = icmp ne %struct.TYPE_3__* %225, null
  br i1 %226, label %239, label %227

227:                                              ; preds = %224
  %228 = load i64*, i64** @see_bb_splay_ar, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = load i32, i32* @df, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = call i32 @DF_INSN_LUID(i32 %233, i32* %234)
  %236 = load %struct.see_ref_s*, %struct.see_ref_s** %12, align 8
  %237 = ptrtoint %struct.see_ref_s* %236 to i32
  %238 = call i32 @splay_tree_insert(i64 %232, i32 %235, i32 %237)
  br label %239

239:                                              ; preds = %227, %224
  store i32 1, i32* %4, align 4
  br label %240

240:                                              ; preds = %239, %24
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @BLOCK_NUM(i32*) #1

declare dso_local i64 @splay_tree_new(i32, i32*, i32) #1

declare dso_local %struct.TYPE_3__* @splay_tree_lookup(i64, i32) #1

declare dso_local i32 @DF_INSN_LUID(i32, i32*) #1

declare dso_local i8* @htab_create(i32, i32, i32, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local %struct.see_ref_s* @xmalloc(i32) #1

declare dso_local i64 @htab_find_slot(i8*, i32*, i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @PATTERN(i32*) #1

declare dso_local i32 @splay_tree_insert(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
