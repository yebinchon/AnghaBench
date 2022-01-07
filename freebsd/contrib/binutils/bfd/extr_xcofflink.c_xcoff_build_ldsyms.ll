; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_build_ldsyms.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_xcofflink.c_xcoff_build_ldsyms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcoff_link_hash_entry = type { i32, i32, %struct.TYPE_24__, %struct.TYPE_29__*, i64, i32, %struct.xcoff_link_hash_entry*, %struct.TYPE_35__*, %struct.TYPE_34__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_23__, %struct.TYPE_39__ }
%struct.TYPE_23__ = type { i8* }
%struct.TYPE_39__ = type { %struct.TYPE_38__, %struct.TYPE_36__, %struct.TYPE_30__ }
%struct.TYPE_38__ = type { i64, %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_35__ = type { i32, i32 }
%struct.TYPE_34__ = type { i32 }
%struct.xcoff_loader_info = type { i32, i64, i8*, %struct.TYPE_28__*, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_27__ = type { i64, i64, %struct.TYPE_26__*, %struct.TYPE_35__*, %struct.TYPE_26__* }

@bfd_link_hash_warning = common dso_local global i64 0, align 8
@XCOFF_RTINIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@bfd_link_hash_defined = common dso_local global i64 0, align 8
@XCOFF_DEF_REGULAR = common dso_local global i32 0, align 4
@XCOFF_REF_REGULAR = common dso_local global i32 0, align 4
@XCOFF_DEF_DYNAMIC = common dso_local global i32 0, align 4
@DYNAMIC = common dso_local global i32 0, align 4
@bfd_link_hash_defweak = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@XCOFF_EXPORT = common dso_local global i32 0, align 4
@XCOFF_MARK = common dso_local global i32 0, align 4
@XCOFF_CALLED = common dso_local global i32 0, align 4
@bfd_link_hash_undefined = common dso_local global i64 0, align 8
@bfd_link_hash_undefweak = common dso_local global i64 0, align 8
@XCOFF_IMPORT = common dso_local global i32 0, align 4
@XMC_GL = common dso_local global i32 0, align 4
@XCOFF_SET_TOC = common dso_local global i32 0, align 4
@XCOFF_LDREL = common dso_local global i32 0, align 4
@XCOFF_DESCRIPTOR = common dso_local global i32 0, align 4
@XMC_DS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"warning: attempt to export undefined symbol `%s'\00", align 1
@bfd_link_hash_common = common dso_local global i64 0, align 8
@XCOFF_ENTRY = common dso_local global i32 0, align 4
@XCOFF_BUILT_LDSYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.xcoff_link_hash_entry*, i8*)* @xcoff_build_ldsyms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xcoff_build_ldsyms(%struct.xcoff_link_hash_entry* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xcoff_link_hash_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.xcoff_loader_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.xcoff_link_hash_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_26__*, align 8
  store %struct.xcoff_link_hash_entry* %0, %struct.xcoff_link_hash_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.xcoff_loader_info*
  store %struct.xcoff_loader_info* %16, %struct.xcoff_loader_info** %6, align 8
  %17 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %18 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @bfd_link_hash_warning, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %25 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.xcoff_link_hash_entry*
  store %struct.xcoff_link_hash_entry* %30, %struct.xcoff_link_hash_entry** %4, align 8
  br label %31

31:                                               ; preds = %23, %2
  %32 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %33 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @XCOFF_RTINIT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i8*, i8** @TRUE, align 8
  store i8* %39, i8** %3, align 8
  br label %823

40:                                               ; preds = %31
  %41 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %42 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @bfd_link_hash_defined, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %40
  %48 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %49 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %47
  %55 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %56 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @XCOFF_REF_REGULAR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %54
  %62 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %63 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %97

68:                                               ; preds = %61
  %69 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %70 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %73, align 8
  %75 = call i64 @bfd_is_abs_section(%struct.TYPE_26__* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %68
  %78 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %79 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @DYNAMIC, align 4
  %89 = and i32 %87, %88
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %77, %68
  %92 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %93 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %94 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %91, %77, %61, %54, %47, %40
  %98 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %99 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %196

102:                                              ; preds = %97
  %103 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %104 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %196

109:                                              ; preds = %102
  %110 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %111 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 46
  br i1 %118, label %119, label %196

119:                                              ; preds = %109
  %120 = load i8*, i8** @TRUE, align 8
  store i8* %120, i8** %8, align 8
  %121 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %122 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @bfd_link_hash_defined, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %134, label %127

127:                                              ; preds = %119
  %128 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %129 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @bfd_link_hash_defweak, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %186

134:                                              ; preds = %127, %119
  %135 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %136 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %141, align 8
  %143 = icmp ne %struct.TYPE_32__* %142, null
  br i1 %143, label %144, label %186

144:                                              ; preds = %134
  %145 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %146 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 2
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  %155 = icmp ne %struct.TYPE_25__* %154, null
  br i1 %155, label %156, label %186

156:                                              ; preds = %144
  %157 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %158 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %165, align 8
  store %struct.TYPE_25__* %166, %struct.TYPE_25__** %9, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %168 = call %struct.TYPE_25__* @bfd_openr_next_archived_file(%struct.TYPE_25__* %167, %struct.TYPE_25__* null)
  store %struct.TYPE_25__* %168, %struct.TYPE_25__** %10, align 8
  br label %169

169:                                              ; preds = %181, %156
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %171 = icmp ne %struct.TYPE_25__* %170, null
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @DYNAMIC, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = load i8*, i8** @FALSE, align 8
  store i8* %180, i8** %8, align 8
  br label %185

181:                                              ; preds = %172
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %184 = call %struct.TYPE_25__* @bfd_openr_next_archived_file(%struct.TYPE_25__* %182, %struct.TYPE_25__* %183)
  store %struct.TYPE_25__* %184, %struct.TYPE_25__** %10, align 8
  br label %169

185:                                              ; preds = %179, %169
  br label %186

186:                                              ; preds = %185, %144, %134, %127
  %187 = load i8*, i8** %8, align 8
  %188 = icmp ne i8* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32, i32* @XCOFF_EXPORT, align 4
  %191 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %192 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %186
  br label %196

196:                                              ; preds = %195, %109, %102, %97
  %197 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %198 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %197, i32 0, i32 3
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %198, align 8
  %200 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %199)
  %201 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %260

204:                                              ; preds = %196
  %205 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %206 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @XCOFF_MARK, align 4
  %209 = and i32 %207, %208
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %260

211:                                              ; preds = %204
  %212 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %213 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @bfd_link_hash_defined, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %225, label %218

218:                                              ; preds = %211
  %219 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %220 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @bfd_link_hash_defweak, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %260

225:                                              ; preds = %218, %211
  %226 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %227 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_32__*, %struct.TYPE_32__** %232, align 8
  %234 = icmp eq %struct.TYPE_32__* %233, null
  br i1 %234, label %254, label %235

235:                                              ; preds = %225
  %236 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %237 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %241, i32 0, i32 2
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %247 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %246, i32 0, i32 3
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %245, %252
  br i1 %253, label %254, label %260

254:                                              ; preds = %235, %225
  %255 = load i32, i32* @XCOFF_MARK, align 4
  %256 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %257 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 8
  br label %260

260:                                              ; preds = %254, %235, %218, %204, %196
  %261 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %262 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @XCOFF_CALLED, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %484

267:                                              ; preds = %260
  %268 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %269 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* @bfd_link_hash_undefined, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %281, label %274

274:                                              ; preds = %267
  %275 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %276 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %484

281:                                              ; preds = %274, %267
  %282 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %283 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = getelementptr inbounds i8, i8* %286, i64 0
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 46
  br i1 %290, label %291, label %484

291:                                              ; preds = %281
  %292 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %293 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %292, i32 0, i32 6
  %294 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %293, align 8
  %295 = icmp ne %struct.xcoff_link_hash_entry* %294, null
  br i1 %295, label %296, label %484

296:                                              ; preds = %291
  %297 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %298 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %297, i32 0, i32 6
  %299 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %298, align 8
  %300 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %323, label %305

305:                                              ; preds = %296
  %306 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %307 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %306, i32 0, i32 6
  %308 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %307, align 8
  %309 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = load i32, i32* @XCOFF_IMPORT, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %484

314:                                              ; preds = %305
  %315 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %316 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %315, i32 0, i32 6
  %317 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %316, align 8
  %318 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %321 = and i32 %319, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %484

323:                                              ; preds = %314, %296
  %324 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %325 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %324, i32 0, i32 3
  %326 = load %struct.TYPE_28__*, %struct.TYPE_28__** %325, align 8
  %327 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %326)
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %338

331:                                              ; preds = %323
  %332 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %333 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @XCOFF_MARK, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %484

338:                                              ; preds = %331, %323
  %339 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %340 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %339, i32 0, i32 3
  %341 = load %struct.TYPE_28__*, %struct.TYPE_28__** %340, align 8
  %342 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %341)
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 4
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %343, align 8
  store %struct.TYPE_26__* %344, %struct.TYPE_26__** %11, align 8
  %345 = load i64, i64* @bfd_link_hash_defined, align 8
  %346 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %347 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 0
  store i64 %345, i64* %348, align 8
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %350 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %351 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %350, i32 0, i32 2
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %353, i32 0, i32 1
  store %struct.TYPE_26__* %349, %struct.TYPE_26__** %354, align 8
  %355 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %359 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %358, i32 0, i32 2
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %361, i32 0, i32 0
  store i32 %357, i32* %362, align 8
  %363 = load i32, i32* @XMC_GL, align 4
  %364 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %365 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %364, i32 0, i32 5
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %367 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %368 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  %371 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %372 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i64 @bfd_xcoff_glink_code_size(i32 %373)
  %375 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = sext i32 %377 to i64
  %379 = add nsw i64 %378, %374
  %380 = trunc i64 %379 to i32
  store i32 %380, i32* %376, align 4
  %381 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %382 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %381, i32 0, i32 6
  %383 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %382, align 8
  store %struct.xcoff_link_hash_entry* %383, %struct.xcoff_link_hash_entry** %12, align 8
  %384 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %385 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @bfd_link_hash_undefined, align 8
  %389 = icmp eq i64 %387, %388
  br i1 %389, label %397, label %390

390:                                              ; preds = %338
  %391 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %392 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %391, i32 0, i32 2
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %404

397:                                              ; preds = %390, %338
  %398 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %399 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %402 = and i32 %400, %401
  %403 = icmp eq i32 %402, 0
  br label %404

404:                                              ; preds = %397, %390
  %405 = phi i1 [ false, %390 ], [ %403, %397 ]
  %406 = zext i1 %405 to i32
  %407 = call i32 @BFD_ASSERT(i32 %406)
  %408 = load i32, i32* @XCOFF_MARK, align 4
  %409 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %410 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = or i32 %411, %408
  store i32 %412, i32* %410, align 8
  %413 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %414 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %413, i32 0, i32 7
  %415 = load %struct.TYPE_35__*, %struct.TYPE_35__** %414, align 8
  %416 = icmp eq %struct.TYPE_35__* %415, null
  br i1 %416, label %417, label %483

417:                                              ; preds = %404
  %418 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %419 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i64 @bfd_xcoff_is_xcoff64(i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %417
  store i32 8, i32* %13, align 4
  br label %434

424:                                              ; preds = %417
  %425 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %426 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i64 @bfd_xcoff_is_xcoff32(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %431

430:                                              ; preds = %424
  store i32 4, i32* %13, align 4
  br label %433

431:                                              ; preds = %424
  %432 = load i8*, i8** @FALSE, align 8
  store i8* %432, i8** %3, align 8
  br label %823

433:                                              ; preds = %430
  br label %434

434:                                              ; preds = %433, %423
  %435 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %436 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %435, i32 0, i32 3
  %437 = load %struct.TYPE_28__*, %struct.TYPE_28__** %436, align 8
  %438 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %437)
  %439 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %438, i32 0, i32 3
  %440 = load %struct.TYPE_35__*, %struct.TYPE_35__** %439, align 8
  %441 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %442 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %441, i32 0, i32 7
  store %struct.TYPE_35__* %440, %struct.TYPE_35__** %442, align 8
  %443 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %444 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %443, i32 0, i32 7
  %445 = load %struct.TYPE_35__*, %struct.TYPE_35__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %449 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %448, i32 0, i32 8
  %450 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %449, i32 0, i32 0
  store i32 %447, i32* %450, align 8
  %451 = load i32, i32* %13, align 4
  %452 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %453 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %452, i32 0, i32 7
  %454 = load %struct.TYPE_35__*, %struct.TYPE_35__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, %451
  store i32 %457, i32* %455, align 4
  %458 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %459 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %458, i32 0, i32 3
  %460 = load %struct.TYPE_28__*, %struct.TYPE_28__** %459, align 8
  %461 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %460)
  %462 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %461, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = add nsw i64 %463, 1
  store i64 %464, i64* %462, align 8
  %465 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %466 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %465, i32 0, i32 7
  %467 = load %struct.TYPE_35__*, %struct.TYPE_35__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %467, i32 0, i32 1
  %469 = load i32, i32* %468, align 4
  %470 = add nsw i32 %469, 1
  store i32 %470, i32* %468, align 4
  %471 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %472 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %471, i32 0, i32 1
  store i32 -2, i32* %472, align 4
  %473 = load i32, i32* @XCOFF_SET_TOC, align 4
  %474 = load i32, i32* @XCOFF_LDREL, align 4
  %475 = or i32 %473, %474
  %476 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %477 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = or i32 %478, %475
  store i32 %479, i32* %477, align 8
  %480 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %12, align 8
  %481 = load i8*, i8** %5, align 8
  %482 = call i8* @xcoff_build_ldsyms(%struct.xcoff_link_hash_entry* %480, i8* %481)
  br label %483

483:                                              ; preds = %434, %404
  br label %484

484:                                              ; preds = %483, %331, %314, %305, %291, %281, %274, %260
  %485 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %486 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @XCOFF_EXPORT, align 4
  %489 = and i32 %487, %488
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %617

491:                                              ; preds = %484
  %492 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %493 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @XCOFF_IMPORT, align 4
  %496 = and i32 %494, %495
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %617

498:                                              ; preds = %491
  %499 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %500 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %503 = and i32 %501, %502
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %505, label %617

505:                                              ; preds = %498
  %506 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %507 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 8
  %509 = load i32, i32* @XCOFF_DEF_DYNAMIC, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %617

512:                                              ; preds = %505
  %513 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %514 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @bfd_link_hash_undefined, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %526, label %519

519:                                              ; preds = %512
  %520 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %521 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %520, i32 0, i32 2
  %522 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = load i64, i64* @bfd_link_hash_undefweak, align 8
  %525 = icmp eq i64 %523, %524
  br i1 %525, label %526, label %617

526:                                              ; preds = %519, %512
  %527 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %528 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = load i32, i32* @XCOFF_DESCRIPTOR, align 4
  %531 = and i32 %529, %530
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %605

533:                                              ; preds = %526
  %534 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %535 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %534, i32 0, i32 6
  %536 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %535, align 8
  %537 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 0
  %539 = load i64, i64* %538, align 8
  %540 = load i64, i64* @bfd_link_hash_defined, align 8
  %541 = icmp eq i64 %539, %540
  br i1 %541, label %551, label %542

542:                                              ; preds = %533
  %543 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %544 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %543, i32 0, i32 6
  %545 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %544, align 8
  %546 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %545, i32 0, i32 2
  %547 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %546, i32 0, i32 0
  %548 = load i64, i64* %547, align 8
  %549 = load i64, i64* @bfd_link_hash_defweak, align 8
  %550 = icmp eq i64 %548, %549
  br i1 %550, label %551, label %605

551:                                              ; preds = %542, %533
  %552 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %553 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %552, i32 0, i32 3
  %554 = load %struct.TYPE_28__*, %struct.TYPE_28__** %553, align 8
  %555 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %554)
  %556 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %555, i32 0, i32 2
  %557 = load %struct.TYPE_26__*, %struct.TYPE_26__** %556, align 8
  store %struct.TYPE_26__* %557, %struct.TYPE_26__** %14, align 8
  %558 = load i64, i64* @bfd_link_hash_defined, align 8
  %559 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %560 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %559, i32 0, i32 2
  %561 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %560, i32 0, i32 0
  store i64 %558, i64* %561, align 8
  %562 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %563 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %564 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %563, i32 0, i32 2
  %565 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %564, i32 0, i32 2
  %566 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %566, i32 0, i32 1
  store %struct.TYPE_26__* %562, %struct.TYPE_26__** %567, align 8
  %568 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %569 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %572 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %571, i32 0, i32 2
  %573 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %572, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %573, i32 0, i32 1
  %575 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %574, i32 0, i32 0
  store i32 %570, i32* %575, align 8
  %576 = load i32, i32* @XMC_DS, align 4
  %577 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %578 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %577, i32 0, i32 5
  store i32 %576, i32* %578, align 8
  %579 = load i32, i32* @XCOFF_DEF_REGULAR, align 4
  %580 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %581 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %580, i32 0, i32 0
  %582 = load i32, i32* %581, align 8
  %583 = or i32 %582, %579
  store i32 %583, i32* %581, align 8
  %584 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %585 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %584, i32 0, i32 0
  %586 = load i32, i32* %585, align 8
  %587 = call i64 @bfd_xcoff_function_descriptor_size(i32 %586)
  %588 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %589 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %588, i32 0, i32 1
  %590 = load i32, i32* %589, align 4
  %591 = sext i32 %590 to i64
  %592 = add nsw i64 %591, %587
  %593 = trunc i64 %592 to i32
  store i32 %593, i32* %589, align 4
  %594 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %595 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %594, i32 0, i32 3
  %596 = load %struct.TYPE_28__*, %struct.TYPE_28__** %595, align 8
  %597 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %596)
  %598 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %597, i32 0, i32 1
  %599 = load i64, i64* %598, align 8
  %600 = add nsw i64 %599, 2
  store i64 %600, i64* %598, align 8
  %601 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %602 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %601, i32 0, i32 0
  %603 = load i32, i32* %602, align 8
  %604 = add nsw i32 %603, 2
  store i32 %604, i32* %602, align 8
  br label %616

605:                                              ; preds = %542, %526
  %606 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %607 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %608 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %607, i32 0, i32 2
  %609 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %608, i32 0, i32 1
  %610 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %609, i32 0, i32 0
  %611 = load i8*, i8** %610, align 8
  %612 = call i32 @_bfd_error_handler(i32 %606, i8* %611)
  %613 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %614 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %613, i32 0, i32 3
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %614, align 8
  %615 = load i8*, i8** @TRUE, align 8
  store i8* %615, i8** %3, align 8
  br label %823

616:                                              ; preds = %551
  br label %617

617:                                              ; preds = %616, %519, %505, %498, %491, %484
  %618 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %619 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %618, i32 0, i32 2
  %620 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %619, i32 0, i32 0
  %621 = load i64, i64* %620, align 8
  %622 = load i64, i64* @bfd_link_hash_common, align 8
  %623 = icmp eq i64 %621, %622
  br i1 %623, label %624, label %677

624:                                              ; preds = %617
  %625 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %626 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %625, i32 0, i32 3
  %627 = load %struct.TYPE_28__*, %struct.TYPE_28__** %626, align 8
  %628 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %627)
  %629 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %639

632:                                              ; preds = %624
  %633 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %634 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %633, i32 0, i32 0
  %635 = load i32, i32* %634, align 8
  %636 = load i32, i32* @XCOFF_MARK, align 4
  %637 = and i32 %635, %636
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %639, label %677

639:                                              ; preds = %632, %624
  %640 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %641 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %640, i32 0, i32 2
  %642 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %641, i32 0, i32 2
  %643 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %642, i32 0, i32 0
  %644 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %643, i32 0, i32 1
  %645 = load %struct.TYPE_37__*, %struct.TYPE_37__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %645, i32 0, i32 0
  %647 = load %struct.TYPE_31__*, %struct.TYPE_31__** %646, align 8
  %648 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %647, i32 0, i32 0
  %649 = load i64, i64* %648, align 8
  %650 = icmp eq i64 %649, 0
  br i1 %650, label %651, label %677

651:                                              ; preds = %639
  %652 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %653 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %652, i32 0, i32 2
  %654 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %653, i32 0, i32 2
  %655 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %655, i32 0, i32 1
  %657 = load %struct.TYPE_37__*, %struct.TYPE_37__** %656, align 8
  %658 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %657, i32 0, i32 0
  %659 = load %struct.TYPE_31__*, %struct.TYPE_31__** %658, align 8
  %660 = call i32 @bfd_is_com_section(%struct.TYPE_31__* %659)
  %661 = call i32 @BFD_ASSERT(i32 %660)
  %662 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %663 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %662, i32 0, i32 2
  %664 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %663, i32 0, i32 2
  %665 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %665, i32 0, i32 0
  %667 = load i64, i64* %666, align 8
  %668 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %669 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %668, i32 0, i32 2
  %670 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %669, i32 0, i32 2
  %671 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %670, i32 0, i32 0
  %672 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %671, i32 0, i32 1
  %673 = load %struct.TYPE_37__*, %struct.TYPE_37__** %672, align 8
  %674 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %673, i32 0, i32 0
  %675 = load %struct.TYPE_31__*, %struct.TYPE_31__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %675, i32 0, i32 0
  store i64 %667, i64* %676, align 8
  br label %677

677:                                              ; preds = %651, %639, %632, %617
  %678 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %679 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %678, i32 0, i32 0
  %680 = load i32, i32* %679, align 8
  %681 = load i32, i32* @XCOFF_LDREL, align 4
  %682 = and i32 %680, %681
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %705, label %684

684:                                              ; preds = %677
  %685 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %686 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %685, i32 0, i32 2
  %687 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %686, i32 0, i32 0
  %688 = load i64, i64* %687, align 8
  %689 = load i64, i64* @bfd_link_hash_defined, align 8
  %690 = icmp eq i64 %688, %689
  br i1 %690, label %705, label %691

691:                                              ; preds = %684
  %692 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %693 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %692, i32 0, i32 2
  %694 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %693, i32 0, i32 0
  %695 = load i64, i64* %694, align 8
  %696 = load i64, i64* @bfd_link_hash_defweak, align 8
  %697 = icmp eq i64 %695, %696
  br i1 %697, label %705, label %698

698:                                              ; preds = %691
  %699 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %700 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %699, i32 0, i32 2
  %701 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %700, i32 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = load i64, i64* @bfd_link_hash_common, align 8
  %704 = icmp eq i64 %702, %703
  br i1 %704, label %705, label %723

705:                                              ; preds = %698, %691, %684, %677
  %706 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %707 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 8
  %709 = load i32, i32* @XCOFF_ENTRY, align 4
  %710 = and i32 %708, %709
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %712, label %723

712:                                              ; preds = %705
  %713 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %714 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 8
  %716 = load i32, i32* @XCOFF_EXPORT, align 4
  %717 = and i32 %715, %716
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %719, label %723

719:                                              ; preds = %712
  %720 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %721 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %720, i32 0, i32 3
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %721, align 8
  %722 = load i8*, i8** @TRUE, align 8
  store i8* %722, i8** %3, align 8
  br label %823

723:                                              ; preds = %712, %705, %698
  %724 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %725 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %724, i32 0, i32 3
  %726 = load %struct.TYPE_28__*, %struct.TYPE_28__** %725, align 8
  %727 = call %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__* %726)
  %728 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %727, i32 0, i32 0
  %729 = load i64, i64* %728, align 8
  %730 = icmp ne i64 %729, 0
  br i1 %730, label %731, label %742

731:                                              ; preds = %723
  %732 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %733 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 8
  %735 = load i32, i32* @XCOFF_MARK, align 4
  %736 = and i32 %734, %735
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %742

738:                                              ; preds = %731
  %739 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %740 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %739, i32 0, i32 3
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %740, align 8
  %741 = load i8*, i8** @TRUE, align 8
  store i8* %741, i8** %3, align 8
  br label %823

742:                                              ; preds = %731, %723
  %743 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %744 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 8
  %746 = load i32, i32* @XCOFF_BUILT_LDSYM, align 4
  %747 = and i32 %745, %746
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %751

749:                                              ; preds = %742
  %750 = load i8*, i8** @TRUE, align 8
  store i8* %750, i8** %3, align 8
  br label %823

751:                                              ; preds = %742
  %752 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %753 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %752, i32 0, i32 3
  %754 = load %struct.TYPE_29__*, %struct.TYPE_29__** %753, align 8
  %755 = icmp eq %struct.TYPE_29__* %754, null
  %756 = zext i1 %755 to i32
  %757 = call i32 @BFD_ASSERT(i32 %756)
  store i32 4, i32* %7, align 4
  %758 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %759 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 8
  %761 = load i32, i32* %7, align 4
  %762 = call %struct.TYPE_29__* @bfd_zalloc(i32 %760, i32 %761)
  %763 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %764 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %763, i32 0, i32 3
  store %struct.TYPE_29__* %762, %struct.TYPE_29__** %764, align 8
  %765 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %766 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %765, i32 0, i32 3
  %767 = load %struct.TYPE_29__*, %struct.TYPE_29__** %766, align 8
  %768 = icmp eq %struct.TYPE_29__* %767, null
  br i1 %768, label %769, label %774

769:                                              ; preds = %751
  %770 = load i8*, i8** @TRUE, align 8
  %771 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %772 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %771, i32 0, i32 2
  store i8* %770, i8** %772, align 8
  %773 = load i8*, i8** @FALSE, align 8
  store i8* %773, i8** %3, align 8
  br label %823

774:                                              ; preds = %751
  %775 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %776 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %775, i32 0, i32 0
  %777 = load i32, i32* %776, align 8
  %778 = load i32, i32* @XCOFF_IMPORT, align 4
  %779 = and i32 %777, %778
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %789

781:                                              ; preds = %774
  %782 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %783 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %782, i32 0, i32 4
  %784 = load i64, i64* %783, align 8
  %785 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %786 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %785, i32 0, i32 3
  %787 = load %struct.TYPE_29__*, %struct.TYPE_29__** %786, align 8
  %788 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %787, i32 0, i32 0
  store i64 %784, i64* %788, align 8
  br label %789

789:                                              ; preds = %781, %774
  %790 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %791 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %790, i32 0, i32 1
  %792 = load i64, i64* %791, align 8
  %793 = add nsw i64 %792, 3
  %794 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %795 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %794, i32 0, i32 4
  store i64 %793, i64* %795, align 8
  %796 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %797 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %796, i32 0, i32 1
  %798 = load i64, i64* %797, align 8
  %799 = add nsw i64 %798, 1
  store i64 %799, i64* %797, align 8
  %800 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %801 = getelementptr inbounds %struct.xcoff_loader_info, %struct.xcoff_loader_info* %800, i32 0, i32 0
  %802 = load i32, i32* %801, align 8
  %803 = load %struct.xcoff_loader_info*, %struct.xcoff_loader_info** %6, align 8
  %804 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %805 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %804, i32 0, i32 3
  %806 = load %struct.TYPE_29__*, %struct.TYPE_29__** %805, align 8
  %807 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %808 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %807, i32 0, i32 2
  %809 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %808, i32 0, i32 1
  %810 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %809, i32 0, i32 0
  %811 = load i8*, i8** %810, align 8
  %812 = call i32 @bfd_xcoff_put_ldsymbol_name(i32 %802, %struct.xcoff_loader_info* %803, %struct.TYPE_29__* %806, i8* %811)
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %816, label %814

814:                                              ; preds = %789
  %815 = load i8*, i8** @FALSE, align 8
  store i8* %815, i8** %3, align 8
  br label %823

816:                                              ; preds = %789
  %817 = load i32, i32* @XCOFF_BUILT_LDSYM, align 4
  %818 = load %struct.xcoff_link_hash_entry*, %struct.xcoff_link_hash_entry** %4, align 8
  %819 = getelementptr inbounds %struct.xcoff_link_hash_entry, %struct.xcoff_link_hash_entry* %818, i32 0, i32 0
  %820 = load i32, i32* %819, align 8
  %821 = or i32 %820, %817
  store i32 %821, i32* %819, align 8
  %822 = load i8*, i8** @TRUE, align 8
  store i8* %822, i8** %3, align 8
  br label %823

823:                                              ; preds = %816, %814, %769, %749, %738, %719, %605, %431, %38
  %824 = load i8*, i8** %3, align 8
  ret i8* %824
}

declare dso_local i64 @bfd_is_abs_section(%struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_25__* @bfd_openr_next_archived_file(%struct.TYPE_25__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_27__* @xcoff_hash_table(%struct.TYPE_28__*) #1

declare dso_local i64 @bfd_xcoff_glink_code_size(i32) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i64 @bfd_xcoff_is_xcoff64(i32) #1

declare dso_local i64 @bfd_xcoff_is_xcoff32(i32) #1

declare dso_local i64 @bfd_xcoff_function_descriptor_size(i32) #1

declare dso_local i32 @_bfd_error_handler(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_is_com_section(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_29__* @bfd_zalloc(i32, i32) #1

declare dso_local i32 @bfd_xcoff_put_ldsymbol_name(i32, %struct.xcoff_loader_info*, %struct.TYPE_29__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
