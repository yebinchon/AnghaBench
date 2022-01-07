; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffswap.h_coff_swap_aux_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffswap.h_coff_swap_aux_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_30__, %struct.TYPE_38__ }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_28__, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_38__ = type { i32*, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32 }
%union.internal_auxent = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_26__, i8*, %struct.TYPE_40__ }
%struct.TYPE_32__ = type { %struct.TYPE_31__, i8* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_43__, %struct.TYPE_42__ }
%struct.TYPE_43__ = type { i8** }
%struct.TYPE_42__ = type { %struct.TYPE_41__, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { i8* }
%struct.TYPE_37__ = type { i32, %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i8*, i32 }
%struct.TYPE_39__ = type { i32, i32, i32, i32, i32, i32 }

@FILNMLEN = common dso_local global i32 0, align 4
@T_NULL = common dso_local global i32 0, align 4
@C_BLOCK = common dso_local global i32 0, align 4
@C_FCN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i32, i32, i32, i8*)* @coff_swap_aux_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coff_swap_aux_in(i32* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_34__*, align 8
  %16 = alloca %union.internal_auxent*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %18, %struct.TYPE_34__** %15, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = bitcast i8* %19 to %union.internal_auxent*
  store %union.internal_auxent* %20, %union.internal_auxent** %16, align 8
  %21 = load i32, i32* %11, align 4
  switch i32 %21, label %113 [
    i32 131, label %22
    i32 128, label %80
    i32 129, label %80
    i32 130, label %80
  ]

22:                                               ; preds = %7
  %23 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %24 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %22
  %31 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %32 = bitcast %union.internal_auxent* %31 to %struct.TYPE_37__*
  %33 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @H_GET_32(i32* %35, i32 %40)
  %42 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %43 = bitcast %union.internal_auxent* %42 to %struct.TYPE_37__*
  %44 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 0
  store i8* %41, i8** %45, align 8
  br label %79

46:                                               ; preds = %22
  %47 = load i32, i32* %13, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %54 = bitcast %union.internal_auxent* %53 to %struct.TYPE_37__*
  %55 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = mul i64 %62, 40
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i32 %56, i32* %60, i32 %64)
  br label %66

66:                                               ; preds = %52, %49
  br label %78

67:                                               ; preds = %46
  %68 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %69 = bitcast %union.internal_auxent* %68 to %struct.TYPE_37__*
  %70 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @FILNMLEN, align 4
  %77 = call i32 @memcpy(i32 %71, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %67, %66
  br label %79

79:                                               ; preds = %78, %30
  br label %269

80:                                               ; preds = %7, %7, %7
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @T_NULL, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %112

84:                                               ; preds = %80
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %87 = call i32 @GET_SCN_SCNLEN(i32* %85, %struct.TYPE_34__* %86)
  %88 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %89 = bitcast %union.internal_auxent* %88 to %struct.TYPE_39__*
  %90 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %89, i32 0, i32 5
  store i32 %87, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  %92 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %93 = call i32 @GET_SCN_NRELOC(i32* %91, %struct.TYPE_34__* %92)
  %94 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %95 = bitcast %union.internal_auxent* %94 to %struct.TYPE_39__*
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %99 = call i32 @GET_SCN_NLINNO(i32* %97, %struct.TYPE_34__* %98)
  %100 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %101 = bitcast %union.internal_auxent* %100 to %struct.TYPE_39__*
  %102 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %104 = bitcast %union.internal_auxent* %103 to %struct.TYPE_39__*
  %105 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %107 = bitcast %union.internal_auxent* %106 to %struct.TYPE_39__*
  %108 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %110 = bitcast %union.internal_auxent* %109 to %struct.TYPE_39__*
  %111 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  br label %269

112:                                              ; preds = %80
  br label %113

113:                                              ; preds = %7, %112
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @H_GET_32(i32* %114, i32 %118)
  %120 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %121 = bitcast %union.internal_auxent* %120 to %struct.TYPE_33__*
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 3
  %123 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %122, i32 0, i32 0
  store i8* %119, i8** %123, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i8* @H_GET_16(i32* %124, i32 %128)
  %130 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %131 = bitcast %union.internal_auxent* %130 to %struct.TYPE_33__*
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 2
  store i8* %129, i8** %132, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @C_BLOCK, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %148, label %136

136:                                              ; preds = %113
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @C_FCN, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @ISFCN(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i32, i32* %11, align 4
  %146 = call i64 @ISTAG(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %144, %140, %136, %113
  %149 = load i32*, i32** %8, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %151 = call i32 @GET_FCN_LNNOPTR(i32* %149, %struct.TYPE_34__* %150)
  %152 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %153 = bitcast %union.internal_auxent* %152 to %struct.TYPE_33__*
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %155, i32 0, i32 1
  store i32 %151, i32* %156, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %159 = call i32 @GET_FCN_ENDNDX(i32* %157, %struct.TYPE_34__* %158)
  %160 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %161 = bitcast %union.internal_auxent* %160 to %struct.TYPE_33__*
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %164, i32 0, i32 0
  store i32 %159, i32* %165, align 8
  br label %235

166:                                              ; preds = %144
  %167 = load i32*, i32** %8, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @H_GET_16(i32* %167, i32 %175)
  %177 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %178 = bitcast %union.internal_auxent* %177 to %struct.TYPE_33__*
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %180, i32 0, i32 0
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  store i8* %176, i8** %183, align 8
  %184 = load i32*, i32** %8, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @H_GET_16(i32* %184, i32 %192)
  %194 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %195 = bitcast %union.internal_auxent* %194 to %struct.TYPE_33__*
  %196 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %197, i32 0, i32 0
  %199 = load i8**, i8*** %198, align 8
  %200 = getelementptr inbounds i8*, i8** %199, i64 1
  store i8* %193, i8** %200, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 2
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @H_GET_16(i32* %201, i32 %209)
  %211 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %212 = bitcast %union.internal_auxent* %211 to %struct.TYPE_33__*
  %213 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %214, i32 0, i32 0
  %216 = load i8**, i8*** %215, align 8
  %217 = getelementptr inbounds i8*, i8** %216, i64 2
  store i8* %210, i8** %217, align 8
  %218 = load i32*, i32** %8, align 8
  %219 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = call i8* @H_GET_16(i32* %218, i32 %226)
  %228 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %229 = bitcast %union.internal_auxent* %228 to %struct.TYPE_33__*
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %231, i32 0, i32 0
  %233 = load i8**, i8*** %232, align 8
  %234 = getelementptr inbounds i8*, i8** %233, i64 3
  store i8* %227, i8** %234, align 8
  br label %235

235:                                              ; preds = %166, %148
  %236 = load i32, i32* %10, align 4
  %237 = call i64 @ISFCN(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %235
  %240 = load i32*, i32** %8, align 8
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i8* @H_GET_32(i32* %240, i32 %245)
  %247 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %248 = bitcast %union.internal_auxent* %247 to %struct.TYPE_33__*
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 1
  store i8* %246, i8** %250, align 8
  br label %268

251:                                              ; preds = %235
  %252 = load i32*, i32** %8, align 8
  %253 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %254 = call i32 @GET_LNSZ_LNNO(i32* %252, %struct.TYPE_34__* %253)
  %255 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %256 = bitcast %union.internal_auxent* %255 to %struct.TYPE_33__*
  %257 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 1
  store i32 %254, i32* %259, align 4
  %260 = load i32*, i32** %8, align 8
  %261 = load %struct.TYPE_34__*, %struct.TYPE_34__** %15, align 8
  %262 = call i32 @GET_LNSZ_SIZE(i32* %260, %struct.TYPE_34__* %261)
  %263 = load %union.internal_auxent*, %union.internal_auxent** %16, align 8
  %264 = bitcast %union.internal_auxent* %263 to %struct.TYPE_33__*
  %265 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 0
  store i32 %262, i32* %267, align 8
  br label %268

268:                                              ; preds = %251, %239
  br label %269

269:                                              ; preds = %268, %84, %79
  ret void
}

declare dso_local i8* @H_GET_32(i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @GET_SCN_SCNLEN(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @GET_SCN_NRELOC(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @GET_SCN_NLINNO(i32*, %struct.TYPE_34__*) #1

declare dso_local i8* @H_GET_16(i32*, i32) #1

declare dso_local i64 @ISFCN(i32) #1

declare dso_local i64 @ISTAG(i32) #1

declare dso_local i32 @GET_FCN_LNNOPTR(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @GET_FCN_ENDNDX(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @GET_LNSZ_LNNO(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @GET_LNSZ_SIZE(i32*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
