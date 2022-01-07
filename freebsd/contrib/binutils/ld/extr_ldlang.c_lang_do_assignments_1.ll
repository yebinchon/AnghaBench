; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_do_assignments_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_do_assignments_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_37__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_45__, %struct.TYPE_44__, %struct.TYPE_42__, %struct.TYPE_40__, %struct.TYPE_31__, %struct.TYPE_34__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_30__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_45__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32, i64, i32 }
%struct.TYPE_42__ = type { i32, i64, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { %struct.TYPE_30__* }
%struct.TYPE_31__ = type { %struct.TYPE_36__*, i32*, %struct.TYPE_38__, i32 }
%struct.TYPE_36__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_30__* }
%struct.TYPE_34__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i64, i32, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i64 }

@constructor_list = common dso_local global %struct.TYPE_37__ zeroinitializer, align 8
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@SEC_THREAD_LOCAL = common dso_local global i32 0, align 4
@link_info = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@bfd_abs_section_ptr = common dso_local global %struct.TYPE_36__* null, align 8
@expld = common dso_local global %struct.TYPE_35__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"%F%P: invalid data statement\0A\00", align 1
@QUAD_SIZE = common dso_local global i32 0, align 4
@LONG_SIZE = common dso_local global i32 0, align 4
@SHORT_SIZE = common dso_local global i32 0, align 4
@BYTE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%F%P: invalid reloc statement\0A\00", align 1
@SEC_EXCLUDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_31__*, i32*, i32)* @lang_do_assignments_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lang_do_assignments_1(%struct.TYPE_30__* %0, %struct.TYPE_31__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  br label %12

12:                                               ; preds = %225, %4
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %14 = icmp ne %struct.TYPE_30__* %13, null
  br i1 %14, label %15, label %230

15:                                               ; preds = %12
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 9
  %18 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %221 [
    i32 140, label %20
    i32 133, label %26
    i32 128, label %85
    i32 134, label %95
    i32 132, label %95
    i32 129, label %95
    i32 139, label %96
    i32 130, label %143
    i32 136, label %169
    i32 135, label %188
    i32 138, label %189
    i32 141, label %194
    i32 131, label %203
    i32 137, label %211
    i32 142, label %223
  ]

20:                                               ; preds = %15
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** getelementptr inbounds (%struct.TYPE_37__, %struct.TYPE_37__* @constructor_list, i32 0, i32 0), align 8
  %22 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @lang_do_assignments_1(%struct.TYPE_30__* %21, %struct.TYPE_31__* %22, i32* %23, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %224

26:                                               ; preds = %15
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 8
  store %struct.TYPE_31__* %28, %struct.TYPE_31__** %9, align 8
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %30, align 8
  %32 = icmp ne %struct.TYPE_36__* %31, null
  br i1 %32, label %33, label %84

33:                                               ; preds = %26
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %84, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_36__*, %struct.TYPE_36__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %46, align 8
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @lang_do_assignments_1(%struct.TYPE_30__* %47, %struct.TYPE_31__* %48, i32* %51, i32 %52)
  %54 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_36__*, %struct.TYPE_36__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %38
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SEC_THREAD_LOCAL, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @link_info, i32 0, i32 0), align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71, %62, %38
  %75 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @TO_ADDR(i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %74, %71
  br label %84

84:                                               ; preds = %83, %33, %26
  br label %224

85:                                               ; preds = %15
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %89, align 8
  %91 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @lang_do_assignments_1(%struct.TYPE_30__* %90, %struct.TYPE_31__* %91, i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  br label %224

95:                                               ; preds = %15, %15, %15
  br label %224

96:                                               ; preds = %15
  %97 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %97, i32 0, i32 6
  %99 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** @bfd_abs_section_ptr, align 8
  %102 = call i32 @exp_fold_tree(i32 %100, %struct.TYPE_36__* %101, i32* %8)
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @expld, i32 0, i32 0, i32 1), align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %96
  %106 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @expld, i32 0, i32 0, i32 0), align 8
  %107 = load %struct.TYPE_41__*, %struct.TYPE_41__** getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @expld, i32 0, i32 0, i32 2), align 8
  %108 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  br label %117

114:                                              ; preds = %96
  %115 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @einfo(i32 %115)
  br label %117

117:                                              ; preds = %114, %105
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 6
  %120 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %122 [
    i32 145, label %124
    i32 143, label %124
    i32 146, label %126
    i32 144, label %128
    i32 147, label %130
  ]

122:                                              ; preds = %117
  %123 = call i32 (...) @abort() #3
  unreachable

124:                                              ; preds = %117, %117
  %125 = load i32, i32* @QUAD_SIZE, align 4
  store i32 %125, i32* %10, align 4
  br label %132

126:                                              ; preds = %117
  %127 = load i32, i32* @LONG_SIZE, align 4
  store i32 %127, i32* %10, align 4
  br label %132

128:                                              ; preds = %117
  %129 = load i32, i32* @SHORT_SIZE, align 4
  store i32 %129, i32* %10, align 4
  br label %132

130:                                              ; preds = %117
  %131 = load i32, i32* @BYTE_SIZE, align 4
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %130, %128, %126, %124
  %133 = load i32, i32* %10, align 4
  %134 = call i32 @TO_SIZE(i32 1)
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = call i32 @TO_SIZE(i32 1)
  store i32 %137, i32* %10, align 4
  br label %138

138:                                              ; preds = %136, %132
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @TO_ADDR(i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %224

143:                                              ; preds = %15
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** @bfd_abs_section_ptr, align 8
  %149 = call i32 @exp_fold_tree(i32 %147, %struct.TYPE_36__* %148, i32* %8)
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @expld, i32 0, i32 0, i32 1), align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %143
  %153 = load i64, i64* getelementptr inbounds (%struct.TYPE_35__, %struct.TYPE_35__* @expld, i32 0, i32 0, i32 0), align 8
  %154 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %155, i32 0, i32 1
  store i64 %153, i64* %156, align 8
  br label %160

157:                                              ; preds = %143
  %158 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %159 = call i32 @einfo(i32 %158)
  br label %160

160:                                              ; preds = %157, %152
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @bfd_get_reloc_size(i32 %164)
  %166 = call i32 @TO_ADDR(i32 %165)
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %8, align 4
  br label %224

169:                                              ; preds = %15
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %172, align 8
  store %struct.TYPE_32__* %173, %struct.TYPE_32__** %11, align 8
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SEC_EXCLUDE, align 4
  %178 = and i32 %176, %177
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %169
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @TO_ADDR(i32 %183)
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %180, %169
  br label %224

188:                                              ; preds = %15
  br label %224

189:                                              ; preds = %15
  %190 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %7, align 8
  br label %224

194:                                              ; preds = %15
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %200, align 8
  %202 = call i32 @exp_fold_tree(i32 %198, %struct.TYPE_36__* %201, i32* %8)
  br label %224

203:                                              ; preds = %15
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @TO_ADDR(i32 %207)
  %209 = load i32, i32* %8, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %8, align 4
  br label %224

211:                                              ; preds = %15
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %215, align 8
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @lang_do_assignments_1(%struct.TYPE_30__* %216, %struct.TYPE_31__* %217, i32* %218, i32 %219)
  store i32 %220, i32* %8, align 4
  br label %224

221:                                              ; preds = %15
  %222 = call i32 (...) @FAIL()
  br label %224

223:                                              ; preds = %15
  br label %224

224:                                              ; preds = %223, %221, %211, %203, %194, %189, %188, %187, %160, %138, %95, %85, %84, %20
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 9
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_30__*, %struct.TYPE_30__** %228, align 8
  store %struct.TYPE_30__* %229, %struct.TYPE_30__** %5, align 8
  br label %12

230:                                              ; preds = %12
  %231 = load i32, i32* %8, align 4
  ret i32 %231
}

declare dso_local i32 @TO_ADDR(i32) #1

declare dso_local i32 @exp_fold_tree(i32, %struct.TYPE_36__*, i32*) #1

declare dso_local i32 @einfo(i32) #1

declare dso_local i32 @_(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @TO_SIZE(i32) #1

declare dso_local i32 @bfd_get_reloc_size(i32) #1

declare dso_local i32 @FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
