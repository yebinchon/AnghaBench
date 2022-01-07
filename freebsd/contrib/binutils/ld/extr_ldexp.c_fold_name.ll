; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_fold_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldexp.c_fold_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.bfd_link_hash_entry* }
%struct.bfd_link_hash_entry = type { %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32*, i32* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_30__, %struct.TYPE_25__ }
%struct.TYPE_30__ = type { i8* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_34__*, i32, i32*, i32 }
%struct.TYPE_32__ = type { i32, i32 }

@expld = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@lang_first_phase_enum = common dso_local global i32 0, align 4
@lang_mark_phase_enum = common dso_local global i32 0, align 4
@output_bfd = common dso_local global i32 0, align 4
@link_info = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bfd_link_hash_defined = common dso_local global i32 0, align 4
@bfd_link_hash_defweak = common dso_local global i32 0, align 4
@bfd_link_hash_common = common dso_local global i32 0, align 4
@lang_statement_iteration = common dso_local global i32 0, align 4
@bfd_abs_section_ptr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%P%F: bfd_link_hash_lookup failed: %E\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"%X%S: unresolvable symbol `%s' referenced in expression\0A\00", align 1
@lang_final_phase_enum = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"%F%S: undefined symbol `%s' referenced in expression\0A\00", align 1
@bfd_link_hash_new = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"%F%S: undefined section `%s' referenced in expression\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"%F%S: undefined MEMORY region `%s' referenced in expression\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MAXPAGESIZE\00", align 1
@default_target = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"COMMONPAGESIZE\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"%F%S: unknown constant `%s' referenced in expression\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_33__*)* @fold_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fold_name(%struct.TYPE_33__* %0) #0 {
  %2 = alloca %struct.TYPE_33__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_hash_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfd_link_hash_entry*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %2, align 8
  %14 = call i32 @memset(%struct.TYPE_21__* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 3), i32 0, i32 12)
  %15 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %474 [
    i32 128, label %19
    i32 134, label %34
    i32 131, label %94
    i32 137, label %253
    i32 132, label %290
    i32 129, label %341
    i32 136, label %341
    i32 133, label %399
    i32 130, label %421
    i32 135, label %443
  ]

19:                                               ; preds = %1
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %21 = load i32, i32* @lang_first_phase_enum, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %25 = load i32, i32* @lang_mark_phase_enum, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @output_bfd, align 4
  %29 = call i32 @bfd_sizeof_headers(i32 %28, %struct.TYPE_22__* @link_info)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @new_abs(i32 %31)
  br label %33

33:                                               ; preds = %30, %19
  br label %476

34:                                               ; preds = %1
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %36 = load i32, i32* @lang_first_phase_enum, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @lang_track_definedness(i8* %42)
  br label %93

44:                                               ; preds = %34
  %45 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @lang_symbol_definition_iteration(i8* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @output_bfd, align 4
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = call %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32 %50, %struct.TYPE_22__* @link_info, i8* %54, i32 %55, i32 %56, i32 %57)
  store %struct.bfd_link_hash_entry* %58, %struct.bfd_link_hash_entry** %4, align 8
  %59 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %60 = icmp ne %struct.bfd_link_hash_entry* %59, null
  br i1 %60, label %61, label %88

61:                                               ; preds = %44
  %62 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %63 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @bfd_link_hash_defined, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %69 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @bfd_link_hash_defweak, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %4, align 8
  %75 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @bfd_link_hash_common, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73, %67, %61
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @lang_statement_iteration, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %86, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, -1
  br label %86

86:                                               ; preds = %83, %79
  %87 = phi i1 [ true, %79 ], [ %85, %83 ]
  br label %88

88:                                               ; preds = %86, %73, %44
  %89 = phi i1 [ false, %73 ], [ false, %44 ], [ %87, %86 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 3, i32 0), align 4
  %91 = load i32, i32* @bfd_abs_section_ptr, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 3, i32 2), align 4
  %92 = load i32, i32* @TRUE, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 3, i32 1), align 4
  br label %93

93:                                               ; preds = %88, %38
  br label %476

94:                                               ; preds = %1
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %96 = load i32, i32* @lang_first_phase_enum, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %252

99:                                               ; preds = %94
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %120

108:                                              ; preds = %99
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %108
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 2), align 4
  %119 = call i32 @new_rel_from_abs(i32 %118)
  br label %251

120:                                              ; preds = %108, %99
  %121 = load i32, i32* @output_bfd, align 4
  %122 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i32, i32* @TRUE, align 4
  %127 = load i32, i32* @FALSE, align 4
  %128 = load i32, i32* @TRUE, align 4
  %129 = call %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32 %121, %struct.TYPE_22__* @link_info, i8* %125, i32 %126, i32 %127, i32 %128)
  store %struct.bfd_link_hash_entry* %129, %struct.bfd_link_hash_entry** %6, align 8
  %130 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %131 = icmp ne %struct.bfd_link_hash_entry* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %120
  %133 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %134 = call i32 (i32, ...) @einfo(i32 %133)
  br label %250

135:                                              ; preds = %120
  %136 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %137 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @bfd_link_hash_defined, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %143 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @bfd_link_hash_defweak, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %202

147:                                              ; preds = %141, %135
  %148 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %149 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %151, align 8
  %153 = call i32 @bfd_is_abs_section(%struct.TYPE_26__* %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %147
  %156 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %157 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @new_abs(i32 %160)
  br label %201

162:                                              ; preds = %147
  %163 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %164 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %168, align 8
  store %struct.TYPE_34__* %169, %struct.TYPE_34__** %7, align 8
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %171 = icmp eq %struct.TYPE_34__* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %162
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %174 = load i32, i32* @lang_mark_phase_enum, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172
  %177 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 (i32, ...) @einfo(i32 %177, i8* %181)
  br label %183

183:                                              ; preds = %176, %172
  br label %200

184:                                              ; preds = %162
  %185 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %186 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %191 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_26__*, %struct.TYPE_26__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %189, %196
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %199 = call i32 @new_rel(i32 %197, i32* null, %struct.TYPE_34__* %198)
  br label %200

200:                                              ; preds = %184, %183
  br label %201

201:                                              ; preds = %200, %155
  br label %249

202:                                              ; preds = %141
  %203 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %204 = load i32, i32* @lang_final_phase_enum, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 1), align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %206, %202
  %210 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 (i32, ...) @einfo(i32 %210, i8* %214)
  br label %248

216:                                              ; preds = %206
  %217 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %218 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @bfd_link_hash_new, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %222, label %247

222:                                              ; preds = %216
  %223 = load i32, i32* @bfd_link_hash_undefined, align 4
  %224 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %225 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %224, i32 0, i32 1
  store i32 %223, i32* %225, align 8
  %226 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %227 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %228, i32 0, i32 1
  store i32* null, i32** %229, align 8
  %230 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %231 = getelementptr inbounds %struct.bfd_link_hash_entry, %struct.bfd_link_hash_entry* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %246

236:                                              ; preds = %222
  %237 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @link_info, i32 0, i32 0), align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %239, align 8
  %241 = icmp ne %struct.bfd_link_hash_entry* %237, %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @link_info, i32 0, i32 0), align 8
  %244 = load %struct.bfd_link_hash_entry*, %struct.bfd_link_hash_entry** %6, align 8
  %245 = call i32 @bfd_link_add_undef(%struct.TYPE_24__* %243, %struct.bfd_link_hash_entry* %244)
  br label %246

246:                                              ; preds = %242, %236, %222
  br label %247

247:                                              ; preds = %246, %216
  br label %248

248:                                              ; preds = %247, %209
  br label %249

249:                                              ; preds = %248, %201
  br label %250

250:                                              ; preds = %249, %132
  br label %251

251:                                              ; preds = %250, %117
  br label %252

252:                                              ; preds = %251, %98
  br label %476

253:                                              ; preds = %1
  %254 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %255 = load i32, i32* @lang_first_phase_enum, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %289

257:                                              ; preds = %253
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = call %struct.TYPE_31__* @lang_output_section_find(i8* %261)
  store %struct.TYPE_31__* %262, %struct.TYPE_31__** %8, align 8
  %263 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %264 = icmp eq %struct.TYPE_31__* %263, null
  br i1 %264, label %265, label %277

265:                                              ; preds = %257
  %266 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %267 = load i32, i32* @lang_final_phase_enum, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %276

269:                                              ; preds = %265
  %270 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %271 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = call i32 (i32, ...) @einfo(i32 %270, i8* %274)
  br label %276

276:                                              ; preds = %269, %265
  br label %288

277:                                              ; preds = %257
  %278 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %284 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %283, i32 0, i32 0
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %284, align 8
  %286 = call i32 @new_rel(i32 0, i32* null, %struct.TYPE_34__* %285)
  br label %287

287:                                              ; preds = %282, %277
  br label %288

288:                                              ; preds = %287, %276
  br label %289

289:                                              ; preds = %288, %253
  br label %476

290:                                              ; preds = %1
  %291 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %292 = load i32, i32* @lang_first_phase_enum, align 4
  %293 = icmp ne i32 %291, %292
  br i1 %293, label %294, label %340

294:                                              ; preds = %290
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = call %struct.TYPE_31__* @lang_output_section_find(i8* %298)
  store %struct.TYPE_31__* %299, %struct.TYPE_31__** %9, align 8
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %301 = icmp eq %struct.TYPE_31__* %300, null
  br i1 %301, label %302, label %314

302:                                              ; preds = %294
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %304 = load i32, i32* @lang_final_phase_enum, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %302
  %307 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 0
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 (i32, ...) @einfo(i32 %307, i8* %311)
  br label %313

313:                                              ; preds = %306, %302
  br label %339

314:                                              ; preds = %294
  %315 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %315, i32 0, i32 3
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %338

319:                                              ; preds = %314
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = icmp eq i32* %322, null
  br i1 %323, label %324, label %331

324:                                              ; preds = %319
  %325 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @new_abs(i32 %329)
  br label %337

331:                                              ; preds = %319
  %332 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %332, i32 0, i32 2
  %334 = load i32*, i32** %333, align 8
  %335 = call i32 @exp_fold_tree_1(i32* %334)
  %336 = call i32 (...) @make_abs()
  br label %337

337:                                              ; preds = %331, %324
  br label %338

338:                                              ; preds = %337, %314
  br label %339

339:                                              ; preds = %338, %313
  br label %340

340:                                              ; preds = %339, %290
  br label %476

341:                                              ; preds = %1, %1
  %342 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %343 = load i32, i32* @lang_first_phase_enum, align 4
  %344 = icmp ne i32 %342, %343
  br i1 %344, label %345, label %398

345:                                              ; preds = %341
  %346 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %347 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = call %struct.TYPE_31__* @lang_output_section_find(i8* %349)
  store %struct.TYPE_31__* %350, %struct.TYPE_31__** %10, align 8
  %351 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %352 = icmp eq %struct.TYPE_31__* %351, null
  br i1 %352, label %353, label %366

353:                                              ; preds = %345
  %354 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @expld, i32 0, i32 0), align 4
  %355 = load i32, i32* @lang_final_phase_enum, align 4
  %356 = icmp eq i32 %354, %355
  br i1 %356, label %357, label %364

357:                                              ; preds = %353
  %358 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %359 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %360 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %360, i32 0, i32 0
  %362 = load i8*, i8** %361, align 8
  %363 = call i32 (i32, ...) @einfo(i32 %358, i8* %362)
  br label %364

364:                                              ; preds = %357, %353
  %365 = call i32 @new_abs(i32 0)
  br label %397

366:                                              ; preds = %345
  %367 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %396

371:                                              ; preds = %366
  %372 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %373 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %372, i32 0, i32 1
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp eq i32 %375, 129
  br i1 %376, label %377, label %386

377:                                              ; preds = %371
  %378 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_34__*, %struct.TYPE_34__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %380, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = load i32, i32* @output_bfd, align 4
  %384 = call i32 @bfd_octets_per_byte(i32 %383)
  %385 = sdiv i32 %382, %384
  store i32 %385, i32* %11, align 4
  br label %393

386:                                              ; preds = %371
  %387 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %388 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_34__*, %struct.TYPE_34__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = shl i32 1, %391
  store i32 %392, i32* %11, align 4
  br label %393

393:                                              ; preds = %386, %377
  %394 = load i32, i32* %11, align 4
  %395 = call i32 @new_abs(i32 %394)
  br label %396

396:                                              ; preds = %393, %366
  br label %397

397:                                              ; preds = %396, %364
  br label %398

398:                                              ; preds = %397, %341
  br label %476

399:                                              ; preds = %1
  %400 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %401 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %401, i32 0, i32 0
  %403 = load i8*, i8** %402, align 8
  %404 = load i32, i32* @FALSE, align 4
  %405 = call %struct.TYPE_32__* @lang_memory_region_lookup(i8* %403, i32 %404)
  store %struct.TYPE_32__* %405, %struct.TYPE_32__** %12, align 8
  %406 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %407 = icmp ne %struct.TYPE_32__* %406, null
  br i1 %407, label %408, label %413

408:                                              ; preds = %399
  %409 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %410 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @new_abs(i32 %411)
  br label %420

413:                                              ; preds = %399
  %414 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %415 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %416 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %416, i32 0, i32 0
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 (i32, ...) @einfo(i32 %414, i8* %418)
  br label %420

420:                                              ; preds = %413, %408
  br label %476

421:                                              ; preds = %1
  %422 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %423 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %423, i32 0, i32 0
  %425 = load i8*, i8** %424, align 8
  %426 = load i32, i32* @FALSE, align 4
  %427 = call %struct.TYPE_32__* @lang_memory_region_lookup(i8* %425, i32 %426)
  store %struct.TYPE_32__* %427, %struct.TYPE_32__** %13, align 8
  %428 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %429 = icmp ne %struct.TYPE_32__* %428, null
  br i1 %429, label %430, label %435

430:                                              ; preds = %421
  %431 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %432 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = call i32 @new_abs(i32 %433)
  br label %442

435:                                              ; preds = %421
  %436 = call i32 @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %437 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %438 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %438, i32 0, i32 0
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 (i32, ...) @einfo(i32 %436, i8* %440)
  br label %442

442:                                              ; preds = %435, %430
  br label %476

443:                                              ; preds = %1
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %445, i32 0, i32 0
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 @strcmp(i8* %447, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %454

450:                                              ; preds = %443
  %451 = load i32, i32* @default_target, align 4
  %452 = call i32 @bfd_emul_get_maxpagesize(i32 %451)
  %453 = call i32 @new_abs(i32 %452)
  br label %473

454:                                              ; preds = %443
  %455 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %456 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %456, i32 0, i32 0
  %458 = load i8*, i8** %457, align 8
  %459 = call i32 @strcmp(i8* %458, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %465

461:                                              ; preds = %454
  %462 = load i32, i32* @default_target, align 4
  %463 = call i32 @bfd_emul_get_commonpagesize(i32 %462)
  %464 = call i32 @new_abs(i32 %463)
  br label %472

465:                                              ; preds = %454
  %466 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0))
  %467 = load %struct.TYPE_33__*, %struct.TYPE_33__** %2, align 8
  %468 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %468, i32 0, i32 0
  %470 = load i8*, i8** %469, align 8
  %471 = call i32 (i32, ...) @einfo(i32 %466, i8* %470)
  br label %472

472:                                              ; preds = %465, %461
  br label %473

473:                                              ; preds = %472, %450
  br label %476

474:                                              ; preds = %1
  %475 = call i32 (...) @FAIL()
  br label %476

476:                                              ; preds = %474, %473, %442, %420, %398, %340, %289, %252, %93, %33
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @bfd_sizeof_headers(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @new_abs(i32) #1

declare dso_local i32 @lang_track_definedness(i8*) #1

declare dso_local i32 @lang_symbol_definition_iteration(i8*) #1

declare dso_local %struct.bfd_link_hash_entry* @bfd_wrapped_link_hash_lookup(i32, %struct.TYPE_22__*, i8*, i32, i32, i32) #1

declare dso_local i32 @new_rel_from_abs(i32) #1

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_is_abs_section(%struct.TYPE_26__*) #1

declare dso_local i32 @new_rel(i32, i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @bfd_link_add_undef(%struct.TYPE_24__*, %struct.bfd_link_hash_entry*) #1

declare dso_local %struct.TYPE_31__* @lang_output_section_find(i8*) #1

declare dso_local i32 @exp_fold_tree_1(i32*) #1

declare dso_local i32 @make_abs(...) #1

declare dso_local i32 @bfd_octets_per_byte(i32) #1

declare dso_local %struct.TYPE_32__* @lang_memory_region_lookup(i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @bfd_emul_get_maxpagesize(i32) #1

declare dso_local i32 @bfd_emul_get_commonpagesize(i32) #1

declare dso_local i32 @FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
