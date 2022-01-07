; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %union.internal_auxent, %struct.internal_syment }
%union.internal_auxent = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { %struct.TYPE_37__, %struct.TYPE_34__, %struct.TYPE_26__ }
%struct.TYPE_37__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.internal_syment = type { i32, %struct.TYPE_40__, i32, i32 }
%struct.TYPE_40__ = type { i32* }
%struct.coff_type = type { i32, %struct.TYPE_31__, i8* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_41__ = type { i32, i32, i8*, %struct.coff_type* }
%struct.TYPE_39__ = type { %struct.coff_type* }
%struct.TYPE_38__ = type { i32, %struct.coff_type* }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_44__* }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i8* }
%struct.TYPE_43__ = type { i32 }

@rawsyms = common dso_local global %struct.TYPE_36__* null, align 8
@coff_basic_type = common dso_local global i8* null, align 8
@C_STAT = common dso_local global i32 0, align 4
@coff_secdef_type = common dso_local global i8* null, align 8
@INT_SIZE = common dso_local global i8* null, align 8
@SHORT_SIZE = common dso_local global i32 0, align 4
@LONG_SIZE = common dso_local global i32 0, align 4
@FLOAT_SIZE = common dso_local global i32 0, align 4
@DOUBLE_SIZE = common dso_local global i32 0, align 4
@coff_structref_type = common dso_local global i8* null, align 8
@tindex = common dso_local global i8** null, align 8
@last_struct = common dso_local global %struct.coff_type* null, align 8
@coff_structdef_type = common dso_local global i8* null, align 8
@coff_enumref_type = common dso_local global i8* null, align 8
@last_enum = common dso_local global %struct.coff_type* null, align 8
@coff_enumdef_type = common dso_local global i8* null, align 8
@DIMNUM = common dso_local global i32 0, align 4
@coff_array_type = common dso_local global i8* null, align 8
@PTR_SIZE = common dso_local global i32 0, align 4
@coff_pointer_type = common dso_local global i8* null, align 8
@coff_function_type = common dso_local global i8* null, align 8
@last_function_type = common dso_local global %struct.coff_type* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.coff_type* (i32)* @do_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.coff_type* @do_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.internal_syment*, align 8
  %4 = alloca %union.internal_auxent*, align 8
  %5 = alloca %struct.coff_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.coff_type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.coff_type*, align 8
  %12 = alloca %struct.coff_type*, align 8
  store i32 %0, i32* %2, align 4
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** @rawsyms, align 8
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %17, i32 0, i32 1
  store %struct.internal_syment* %18, %struct.internal_syment** %3, align 8
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** @rawsyms, align 8
  %20 = load i32, i32* %2, align 4
  %21 = add nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %24, i32 0, i32 0
  store %union.internal_auxent* %25, %union.internal_auxent** %4, align 8
  %26 = call i64 @xmalloc(i32 112)
  %27 = inttoptr i64 %26 to %struct.coff_type*
  store %struct.coff_type* %27, %struct.coff_type** %5, align 8
  %28 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %29 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %31 = load i8*, i8** @coff_basic_type, align 8
  %32 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %33 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 15
  %36 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %37 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 15
  switch i32 %40, label %251 [
    i32 136, label %41
    i32 128, label %41
    i32 133, label %78
    i32 143, label %78
    i32 129, label %81
    i32 135, label %81
    i32 132, label %85
    i32 139, label %85
    i32 131, label %90
    i32 138, label %90
    i32 140, label %94
    i32 142, label %98
    i32 134, label %102
    i32 130, label %102
    i32 141, label %195
    i32 137, label %250
  ]

41:                                               ; preds = %1, %1
  %42 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %43 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %48 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @C_STAT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load i8*, i8** @coff_secdef_type, align 8
  %54 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %55 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %57 = bitcast %union.internal_auxent* %56 to %struct.TYPE_43__*
  %58 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %61 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  br label %77

62:                                               ; preds = %46, %41
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = load i8*, i8** @INT_SIZE, align 8
  %67 = ptrtoint i8* %66 to i32
  %68 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %69 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %71 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %71, i32 0, i32 0
  store i32 132, i32* %72, align 8
  br label %76

73:                                               ; preds = %62
  %74 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %75 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %65
  br label %77

77:                                               ; preds = %76, %52
  br label %251

78:                                               ; preds = %1, %1
  %79 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %80 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %251

81:                                               ; preds = %1, %1
  %82 = load i32, i32* @SHORT_SIZE, align 4
  %83 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %84 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %251

85:                                               ; preds = %1, %1
  %86 = load i8*, i8** @INT_SIZE, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %89 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %251

90:                                               ; preds = %1, %1
  %91 = load i32, i32* @LONG_SIZE, align 4
  %92 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %93 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %251

94:                                               ; preds = %1
  %95 = load i32, i32* @FLOAT_SIZE, align 4
  %96 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %97 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  br label %251

98:                                               ; preds = %1
  %99 = load i32, i32* @DOUBLE_SIZE, align 4
  %100 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %101 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %251

102:                                              ; preds = %1, %1
  %103 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %104 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %184

107:                                              ; preds = %102
  %108 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %109 = bitcast %union.internal_auxent* %108 to %struct.TYPE_35__*
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %153

114:                                              ; preds = %107
  %115 = load i8*, i8** @coff_structref_type, align 8
  %116 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %117 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  %118 = load i8**, i8*** @tindex, align 8
  %119 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %120 = bitcast %union.internal_auxent* %119 to %struct.TYPE_35__*
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @INDEXOF(i32 %123)
  %125 = getelementptr inbounds i8*, i8** %118, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_25__*
  %128 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %129 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 6
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  store %struct.TYPE_25__* %127, %struct.TYPE_25__** %131, align 8
  %132 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %133 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  %137 = icmp ne %struct.TYPE_25__* %136, null
  br i1 %137, label %138, label %148

138:                                              ; preds = %114
  %139 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %140 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 6
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_44__*, %struct.TYPE_44__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  br label %149

148:                                              ; preds = %114
  br label %149

149:                                              ; preds = %148, %138
  %150 = phi i32 [ %147, %138 ], [ 0, %148 ]
  %151 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %152 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  br label %183

153:                                              ; preds = %107
  %154 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  store %struct.coff_type* %154, %struct.coff_type** @last_struct, align 8
  %155 = load i8*, i8** @coff_structdef_type, align 8
  %156 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %157 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = call i8* (...) @empty_scope()
  %159 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %160 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %161, i32 0, i32 2
  store i8* %158, i8** %162, align 8
  %163 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %164 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 1
  store i32 0, i32* %166, align 4
  %167 = load i32, i32* %6, align 4
  %168 = and i32 %167, 15
  %169 = icmp eq i32 %168, 134
  %170 = zext i1 %169 to i32
  %171 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %172 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 0
  store i32 %170, i32* %174, align 8
  %175 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %176 = bitcast %union.internal_auxent* %175 to %struct.TYPE_35__*
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %182 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %181, i32 0, i32 0
  store i32 %180, i32* %182, align 8
  br label %183

183:                                              ; preds = %153, %149
  br label %194

184:                                              ; preds = %102
  %185 = load i8*, i8** @coff_structref_type, align 8
  %186 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %187 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %186, i32 0, i32 2
  store i8* %185, i8** %187, align 8
  %188 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %189 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %190, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %191, align 8
  %192 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %193 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %192, i32 0, i32 0
  store i32 0, i32* %193, align 8
  br label %194

194:                                              ; preds = %184, %183
  br label %251

195:                                              ; preds = %1
  %196 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %197 = bitcast %union.internal_auxent* %196 to %struct.TYPE_35__*
  %198 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %231

202:                                              ; preds = %195
  %203 = load i8*, i8** @coff_enumref_type, align 8
  %204 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %205 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %204, i32 0, i32 2
  store i8* %203, i8** %205, align 8
  %206 = load i8**, i8*** @tindex, align 8
  %207 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %208 = bitcast %union.internal_auxent* %207 to %struct.TYPE_35__*
  %209 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @INDEXOF(i32 %211)
  %213 = getelementptr inbounds i8*, i8** %206, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = bitcast i8* %214 to %struct.TYPE_28__*
  %216 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %217 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %217, i32 0, i32 5
  %219 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %218, i32 0, i32 0
  store %struct.TYPE_28__* %215, %struct.TYPE_28__** %219, align 8
  %220 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %221 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %230 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %229, i32 0, i32 0
  store i32 %228, i32* %230, align 8
  br label %249

231:                                              ; preds = %195
  %232 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  store %struct.coff_type* %232, %struct.coff_type** @last_enum, align 8
  %233 = load i8*, i8** @coff_enumdef_type, align 8
  %234 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %235 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %234, i32 0, i32 2
  store i8* %233, i8** %235, align 8
  %236 = call i8* (...) @empty_scope()
  %237 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %238 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %239, i32 0, i32 0
  store i8* %236, i8** %240, align 8
  %241 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %242 = bitcast %union.internal_auxent* %241 to %struct.TYPE_35__*
  %243 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %248 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %247, i32 0, i32 0
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %231, %202
  br label %251

250:                                              ; preds = %1
  br label %251

251:                                              ; preds = %1, %250, %249, %194, %98, %94, %90, %85, %81, %78, %77
  store i32 5, i32* %7, align 4
  br label %252

252:                                              ; preds = %358, %251
  %253 = load i32, i32* %7, align 4
  %254 = icmp sge i32 %253, 0
  br i1 %254, label %255, label %361

255:                                              ; preds = %252
  %256 = load i32, i32* %6, align 4
  %257 = load i32, i32* %7, align 4
  %258 = mul nsw i32 %257, 2
  %259 = add nsw i32 %258, 4
  %260 = ashr i32 %256, %259
  %261 = and i32 %260, 3
  switch i32 %261, label %357 [
    i32 0, label %262
    i32 146, label %263
    i32 144, label %306
    i32 145, label %321
  ]

262:                                              ; preds = %255
  br label %357

263:                                              ; preds = %255
  %264 = call i64 @xmalloc(i32 112)
  %265 = inttoptr i64 %264 to %struct.coff_type*
  store %struct.coff_type* %265, %struct.coff_type** %9, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load i32, i32* @DIMNUM, align 4
  %268 = icmp slt i32 %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %263
  %270 = load %union.internal_auxent*, %union.internal_auxent** %4, align 8
  %271 = bitcast %union.internal_auxent* %270 to %struct.TYPE_35__*
  %272 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  br label %281

280:                                              ; preds = %263
  br label %281

281:                                              ; preds = %280, %269
  %282 = phi i32 [ %279, %269 ], [ 0, %280 ]
  store i32 %282, i32* %10, align 4
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %8, align 4
  %285 = load i8*, i8** @coff_array_type, align 8
  %286 = load %struct.coff_type*, %struct.coff_type** %9, align 8
  %287 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %286, i32 0, i32 2
  store i8* %285, i8** %287, align 8
  %288 = load i32, i32* %10, align 4
  %289 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %290 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = mul nsw i32 %288, %291
  %293 = load %struct.coff_type*, %struct.coff_type** %9, align 8
  %294 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 8
  %295 = load i32, i32* %10, align 4
  %296 = load %struct.coff_type*, %struct.coff_type** %9, align 8
  %297 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %298, i32 0, i32 0
  store i32 %295, i32* %299, align 8
  %300 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %301 = load %struct.coff_type*, %struct.coff_type** %9, align 8
  %302 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %303, i32 0, i32 1
  store %struct.coff_type* %300, %struct.coff_type** %304, align 8
  %305 = load %struct.coff_type*, %struct.coff_type** %9, align 8
  store %struct.coff_type* %305, %struct.coff_type** %5, align 8
  br label %357

306:                                              ; preds = %255
  %307 = call i64 @xmalloc(i32 112)
  %308 = inttoptr i64 %307 to %struct.coff_type*
  store %struct.coff_type* %308, %struct.coff_type** %11, align 8
  %309 = load i32, i32* @PTR_SIZE, align 4
  %310 = load %struct.coff_type*, %struct.coff_type** %11, align 8
  %311 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %310, i32 0, i32 0
  store i32 %309, i32* %311, align 8
  %312 = load i8*, i8** @coff_pointer_type, align 8
  %313 = load %struct.coff_type*, %struct.coff_type** %11, align 8
  %314 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %313, i32 0, i32 2
  store i8* %312, i8** %314, align 8
  %315 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %316 = load %struct.coff_type*, %struct.coff_type** %11, align 8
  %317 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %317, i32 0, i32 2
  %319 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %318, i32 0, i32 0
  store %struct.coff_type* %315, %struct.coff_type** %319, align 8
  %320 = load %struct.coff_type*, %struct.coff_type** %11, align 8
  store %struct.coff_type* %320, %struct.coff_type** %5, align 8
  br label %357

321:                                              ; preds = %255
  %322 = call i64 @xmalloc(i32 112)
  %323 = inttoptr i64 %322 to %struct.coff_type*
  store %struct.coff_type* %323, %struct.coff_type** %12, align 8
  %324 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  %325 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %324, i32 0, i32 0
  store i32 0, i32* %325, align 8
  %326 = load i8*, i8** @coff_function_type, align 8
  %327 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  %328 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %327, i32 0, i32 2
  store i8* %326, i8** %328, align 8
  %329 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  %330 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  %331 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %332, i32 0, i32 3
  store %struct.coff_type* %329, %struct.coff_type** %333, align 8
  %334 = call i8* (...) @empty_scope()
  %335 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  %336 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %337, i32 0, i32 2
  store i8* %334, i8** %338, align 8
  %339 = load i32, i32* %2, align 4
  %340 = load %struct.internal_syment*, %struct.internal_syment** %3, align 8
  %341 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %341, i32 0, i32 0
  %343 = load i32*, i32** %342, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 1
  %345 = load i32, i32* %344, align 4
  %346 = call i32 @do_lines(i32 %339, i32 %345)
  %347 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  %348 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %349, i32 0, i32 1
  store i32 %346, i32* %350, align 4
  %351 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  %352 = getelementptr inbounds %struct.coff_type, %struct.coff_type* %351, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %353, i32 0, i32 0
  store i32 0, i32* %354, align 8
  %355 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  store %struct.coff_type* %355, %struct.coff_type** @last_function_type, align 8
  %356 = load %struct.coff_type*, %struct.coff_type** %12, align 8
  store %struct.coff_type* %356, %struct.coff_type** %5, align 8
  br label %357

357:                                              ; preds = %255, %321, %306, %281, %262
  br label %358

358:                                              ; preds = %357
  %359 = load i32, i32* %7, align 4
  %360 = add nsw i32 %359, -1
  store i32 %360, i32* %7, align 4
  br label %252

361:                                              ; preds = %252
  %362 = load %struct.coff_type*, %struct.coff_type** %5, align 8
  ret %struct.coff_type* %362
}

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i64 @INDEXOF(i32) #1

declare dso_local i8* @empty_scope(...) #1

declare dso_local i32 @do_lines(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
