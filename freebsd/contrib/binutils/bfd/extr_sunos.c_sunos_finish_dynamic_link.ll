; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_finish_dynamic_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_finish_dynamic_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i64, i32, i32, %struct.TYPE_18__*, %struct.external_sun4_dynamic_link*, %struct.TYPE_15__* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_14__* }
%struct.external_sun4_dynamic_link = type { %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link* }
%struct.bfd_link_info = type { i64 }
%struct.external_sun4_dynamic = type { %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c".dynamic\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".need\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c".got\00", align 1
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@EXTERNAL_SUN4_DYNAMIC_DEBUGGER_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c".rules\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c".dynrel\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".hash\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c".dynsym\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c".dynstr\00", align 1
@DYNAMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.bfd_link_info*)* @sunos_finish_dynamic_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunos_finish_dynamic_link(%struct.TYPE_14__* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.external_sun4_dynamic_link*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.external_sun4_dynamic, align 8
  %14 = alloca %struct.external_sun4_dynamic_link, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %16 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %17 = call %struct.TYPE_16__* @sunos_hash_table(%struct.bfd_link_info* %16)
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %23 = call %struct.TYPE_16__* @sunos_hash_table(%struct.bfd_link_info* %22)
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @TRUE, align 4
  store i32 %28, i32* %3, align 4
  br label %489

29:                                               ; preds = %21, %2
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %31 = call %struct.TYPE_16__* @sunos_hash_table(%struct.bfd_link_info* %30)
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %6, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_15__* %35, %struct.TYPE_15__** %9, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @BFD_ASSERT(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %8, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %44, label %89

44:                                               ; preds = %29
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %89

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  store i64 %58, i64* %10, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 5
  %61 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %60, align 8
  store %struct.external_sun4_dynamic_link* %61, %struct.external_sun4_dynamic_link** %11, align 8
  br label %62

62:                                               ; preds = %49, %78
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %65 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %11, align 8
  %66 = call i64 @GET_WORD(%struct.TYPE_14__* %64, %struct.external_sun4_dynamic_link* %65)
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %11, align 8
  %70 = call i32 @PUT_WORD(%struct.TYPE_14__* %63, i64 %68, %struct.external_sun4_dynamic_link* %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %72 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %11, align 8
  %73 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %72, i64 12
  %74 = call i64 @GET_WORD(%struct.TYPE_14__* %71, %struct.external_sun4_dynamic_link* %73)
  store i64 %74, i64* %12, align 8
  %75 = load i64, i64* %12, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %88

78:                                               ; preds = %62
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %80, %81
  %83 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %11, align 8
  %84 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %83, i64 12
  %85 = call i32 @PUT_WORD(%struct.TYPE_14__* %79, i64 %82, %struct.external_sun4_dynamic_link* %84)
  %86 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %11, align 8
  %87 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %86, i64 16
  store %struct.external_sun4_dynamic_link* %87, %struct.external_sun4_dynamic_link** %11, align 8
  br label %62

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %44, %29
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %8, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = icmp ne %struct.TYPE_15__* %92, null
  %94 = zext i1 %93 to i32
  %95 = call i32 @BFD_ASSERT(i32 %94)
  %96 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %97 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %89
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100, %89
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 5
  %109 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %108, align 8
  %110 = call i32 @PUT_WORD(%struct.TYPE_14__* %106, i64 0, %struct.external_sun4_dynamic_link* %109)
  br label %126

111:                                              ; preds = %100
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 5
  %124 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %123, align 8
  %125 = call i32 @PUT_WORD(%struct.TYPE_14__* %112, i64 %121, %struct.external_sun4_dynamic_link* %124)
  br label %126

126:                                              ; preds = %111, %105
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  store %struct.TYPE_15__* %129, %struct.TYPE_15__** %7, align 8
  br label %130

130:                                              ; preds = %181, %126
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %132 = icmp ne %struct.TYPE_15__* %131, null
  br i1 %132, label %133, label %185

133:                                              ; preds = %130
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %180

140:                                              ; preds = %133
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 5
  %143 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %142, align 8
  %144 = icmp ne %struct.external_sun4_dynamic_link* %143, null
  br i1 %144, label %145, label %180

145:                                              ; preds = %140
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 4
  %148 = load %struct.TYPE_18__*, %struct.TYPE_18__** %147, align 8
  %149 = icmp ne %struct.TYPE_18__* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %157 = icmp eq %struct.TYPE_14__* %155, %156
  br label %158

158:                                              ; preds = %150, %145
  %159 = phi i1 [ false, %145 ], [ %157, %150 ]
  %160 = zext i1 %159 to i32
  %161 = call i32 @BFD_ASSERT(i32 %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %164, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 5
  %168 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @bfd_set_section_contents(%struct.TYPE_14__* %162, %struct.TYPE_18__* %165, %struct.external_sun4_dynamic_link* %168, i64 %171, i64 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %158
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %3, align 4
  br label %489

179:                                              ; preds = %158
  br label %180

180:                                              ; preds = %179, %140, %133
  br label %181

181:                                              ; preds = %180
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 6
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  store %struct.TYPE_15__* %184, %struct.TYPE_15__** %7, align 8
  br label %130

185:                                              ; preds = %130
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %487

190:                                              ; preds = %185
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %192 = getelementptr inbounds %struct.external_sun4_dynamic, %struct.external_sun4_dynamic* %13, i32 0, i32 16
  %193 = load %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic** %192, align 8
  %194 = bitcast %struct.external_sun4_dynamic* %193 to %struct.external_sun4_dynamic_link*
  %195 = call i32 @PUT_WORD(%struct.TYPE_14__* %191, i64 3, %struct.external_sun4_dynamic_link* %194)
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %201, %204
  %206 = add i64 %205, 136
  %207 = getelementptr inbounds %struct.external_sun4_dynamic, %struct.external_sun4_dynamic* %13, i32 0, i32 15
  %208 = load %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic** %207, align 8
  %209 = bitcast %struct.external_sun4_dynamic* %208 to %struct.external_sun4_dynamic_link*
  %210 = call i32 @PUT_WORD(%struct.TYPE_14__* %196, i64 %206, %struct.external_sun4_dynamic_link* %209)
  %211 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = add nsw i64 %216, %219
  %221 = add i64 %220, 136
  %222 = load i64, i64* @EXTERNAL_SUN4_DYNAMIC_DEBUGGER_SIZE, align 8
  %223 = add i64 %221, %222
  %224 = getelementptr inbounds %struct.external_sun4_dynamic, %struct.external_sun4_dynamic* %13, i32 0, i32 14
  %225 = load %struct.external_sun4_dynamic*, %struct.external_sun4_dynamic** %224, align 8
  %226 = bitcast %struct.external_sun4_dynamic* %225 to %struct.external_sun4_dynamic_link*
  %227 = call i32 @PUT_WORD(%struct.TYPE_14__* %211, i64 %223, %struct.external_sun4_dynamic_link* %226)
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 4
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %230, align 8
  %232 = bitcast %struct.external_sun4_dynamic* %13 to %struct.external_sun4_dynamic_link*
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @bfd_set_section_contents(%struct.TYPE_14__* %228, %struct.TYPE_18__* %231, %struct.external_sun4_dynamic_link* %232, i64 %235, i64 136)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %190
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %3, align 4
  br label %489

240:                                              ; preds = %190
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %242 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 13
  %243 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %242, align 8
  %244 = call i32 @PUT_WORD(%struct.TYPE_14__* %241, i64 0, %struct.external_sun4_dynamic_link* %243)
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %246 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_15__* %246, %struct.TYPE_15__** %8, align 8
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %248 = icmp eq %struct.TYPE_15__* %247, null
  br i1 %248, label %254, label %249

249:                                              ; preds = %240
  %250 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %259

254:                                              ; preds = %249, %240
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %256 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 12
  %257 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %256, align 8
  %258 = call i32 @PUT_WORD(%struct.TYPE_14__* %255, i64 0, %struct.external_sun4_dynamic_link* %257)
  br label %273

259:                                              ; preds = %249
  %260 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 4
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %265, %268
  %270 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 12
  %271 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %270, align 8
  %272 = call i32 @PUT_WORD(%struct.TYPE_14__* %260, i64 %269, %struct.external_sun4_dynamic_link* %271)
  br label %273

273:                                              ; preds = %259, %254
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %275 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %274, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_15__* %275, %struct.TYPE_15__** %8, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %277 = icmp eq %struct.TYPE_15__* %276, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %273
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278, %273
  %284 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %285 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 11
  %286 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %285, align 8
  %287 = call i32 @PUT_WORD(%struct.TYPE_14__* %284, i64 0, %struct.external_sun4_dynamic_link* %286)
  br label %302

288:                                              ; preds = %278
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 4
  %292 = load %struct.TYPE_18__*, %struct.TYPE_18__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = add nsw i64 %294, %297
  %299 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 11
  %300 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %299, align 8
  %301 = call i32 @PUT_WORD(%struct.TYPE_14__* %289, i64 %298, %struct.external_sun4_dynamic_link* %300)
  br label %302

302:                                              ; preds = %288, %283
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %304 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_15__* %304, %struct.TYPE_15__** %8, align 8
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %306 = icmp ne %struct.TYPE_15__* %305, null
  %307 = zext i1 %306 to i32
  %308 = call i32 @BFD_ASSERT(i32 %307)
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 4
  %312 = load %struct.TYPE_18__*, %struct.TYPE_18__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = add nsw i64 %314, %317
  %319 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 10
  %320 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %319, align 8
  %321 = call i32 @PUT_WORD(%struct.TYPE_14__* %309, i64 %318, %struct.external_sun4_dynamic_link* %320)
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %323 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_15__* %323, %struct.TYPE_15__** %8, align 8
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %325 = icmp ne %struct.TYPE_15__* %324, null
  %326 = zext i1 %325 to i32
  %327 = call i32 @BFD_ASSERT(i32 %326)
  %328 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 4
  %331 = load %struct.TYPE_18__*, %struct.TYPE_18__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = add nsw i64 %333, %336
  %338 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 9
  %339 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %338, align 8
  %340 = call i32 @PUT_WORD(%struct.TYPE_14__* %328, i64 %337, %struct.external_sun4_dynamic_link* %339)
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 8
  %346 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %345, align 8
  %347 = call i32 @PUT_WORD(%struct.TYPE_14__* %341, i64 %344, %struct.external_sun4_dynamic_link* %346)
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %349 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %348, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_15__* %349, %struct.TYPE_15__** %8, align 8
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %351 = icmp ne %struct.TYPE_15__* %350, null
  %352 = zext i1 %351 to i32
  %353 = call i32 @BFD_ASSERT(i32 %352)
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %358 = call i32 @obj_reloc_entry_size(%struct.TYPE_14__* %357)
  %359 = mul nsw i32 %356, %358
  %360 = sext i32 %359 to i64
  %361 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %362 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp eq i64 %360, %363
  %365 = zext i1 %364 to i32
  %366 = call i32 @BFD_ASSERT(i32 %365)
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 4
  %370 = load %struct.TYPE_18__*, %struct.TYPE_18__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %374 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %373, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %372, %375
  %377 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 7
  %378 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %377, align 8
  %379 = call i32 @PUT_WORD(%struct.TYPE_14__* %367, i64 %376, %struct.external_sun4_dynamic_link* %378)
  %380 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %381 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %380, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store %struct.TYPE_15__* %381, %struct.TYPE_15__** %8, align 8
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %383 = icmp ne %struct.TYPE_15__* %382, null
  %384 = zext i1 %383 to i32
  %385 = call i32 @BFD_ASSERT(i32 %384)
  %386 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 4
  %389 = load %struct.TYPE_18__*, %struct.TYPE_18__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %392, i32 0, i32 1
  %394 = load i64, i64* %393, align 8
  %395 = add nsw i64 %391, %394
  %396 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 6
  %397 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %396, align 8
  %398 = call i32 @PUT_WORD(%struct.TYPE_14__* %386, i64 %395, %struct.external_sun4_dynamic_link* %397)
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %400 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %399, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store %struct.TYPE_15__* %400, %struct.TYPE_15__** %8, align 8
  %401 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %402 = icmp ne %struct.TYPE_15__* %401, null
  %403 = zext i1 %402 to i32
  %404 = call i32 @BFD_ASSERT(i32 %403)
  %405 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %406 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %406, i32 0, i32 4
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %412 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = add nsw i64 %410, %413
  %415 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 5
  %416 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %415, align 8
  %417 = call i32 @PUT_WORD(%struct.TYPE_14__* %405, i64 %414, %struct.external_sun4_dynamic_link* %416)
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %419 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 4
  %420 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %419, align 8
  %421 = call i32 @PUT_WORD(%struct.TYPE_14__* %418, i64 0, %struct.external_sun4_dynamic_link* %420)
  %422 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %423 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %424 = call %struct.TYPE_16__* @sunos_hash_table(%struct.bfd_link_info* %423)
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 3
  %428 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %427, align 8
  %429 = call i32 @PUT_WORD(%struct.TYPE_14__* %422, i64 %426, %struct.external_sun4_dynamic_link* %428)
  %430 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %431 = call %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__* %430, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store %struct.TYPE_15__* %431, %struct.TYPE_15__** %8, align 8
  %432 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %433 = icmp ne %struct.TYPE_15__* %432, null
  %434 = zext i1 %433 to i32
  %435 = call i32 @BFD_ASSERT(i32 %434)
  %436 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %437 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %438 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %437, i32 0, i32 4
  %439 = load %struct.TYPE_18__*, %struct.TYPE_18__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %443 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %442, i32 0, i32 1
  %444 = load i64, i64* %443, align 8
  %445 = add nsw i64 %441, %444
  %446 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 2
  %447 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %446, align 8
  %448 = call i32 @PUT_WORD(%struct.TYPE_14__* %436, i64 %445, %struct.external_sun4_dynamic_link* %447)
  %449 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 1
  %454 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %453, align 8
  %455 = call i32 @PUT_WORD(%struct.TYPE_14__* %449, i64 %452, %struct.external_sun4_dynamic_link* %454)
  %456 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %457 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %458 = call %struct.TYPE_17__* @obj_textsec(%struct.TYPE_14__* %457)
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = call i64 @BFD_ALIGN(i32 %460, i32 8192)
  %462 = getelementptr inbounds %struct.external_sun4_dynamic_link, %struct.external_sun4_dynamic_link* %14, i32 0, i32 0
  %463 = load %struct.external_sun4_dynamic_link*, %struct.external_sun4_dynamic_link** %462, align 8
  %464 = call i32 @PUT_WORD(%struct.TYPE_14__* %456, i64 %461, %struct.external_sun4_dynamic_link* %463)
  %465 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %466 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %465, i32 0, i32 1
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %15, align 8
  %468 = load i64, i64* @EXTERNAL_SUN4_DYNAMIC_DEBUGGER_SIZE, align 8
  %469 = add i64 136, %468
  %470 = load i64, i64* %15, align 8
  %471 = add i64 %470, %469
  store i64 %471, i64* %15, align 8
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %473 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 4
  %475 = load %struct.TYPE_18__*, %struct.TYPE_18__** %474, align 8
  %476 = load i64, i64* %15, align 8
  %477 = call i32 @bfd_set_section_contents(%struct.TYPE_14__* %472, %struct.TYPE_18__* %475, %struct.external_sun4_dynamic_link* %14, i64 %476, i64 136)
  %478 = icmp ne i32 %477, 0
  br i1 %478, label %481, label %479

479:                                              ; preds = %302
  %480 = load i32, i32* @FALSE, align 4
  store i32 %480, i32* %3, align 4
  br label %489

481:                                              ; preds = %302
  %482 = load i32, i32* @DYNAMIC, align 4
  %483 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = or i32 %485, %482
  store i32 %486, i32* %484, align 8
  br label %487

487:                                              ; preds = %481, %185
  %488 = load i32, i32* @TRUE, align 4
  store i32 %488, i32* %3, align 4
  br label %489

489:                                              ; preds = %487, %479, %238, %177, %27
  %490 = load i32, i32* %3, align 4
  ret i32 %490
}

declare dso_local %struct.TYPE_16__* @sunos_hash_table(%struct.bfd_link_info*) #1

declare dso_local %struct.TYPE_15__* @bfd_get_section_by_name(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

declare dso_local i32 @PUT_WORD(%struct.TYPE_14__*, i64, %struct.external_sun4_dynamic_link*) #1

declare dso_local i64 @GET_WORD(%struct.TYPE_14__*, %struct.external_sun4_dynamic_link*) #1

declare dso_local i32 @bfd_set_section_contents(%struct.TYPE_14__*, %struct.TYPE_18__*, %struct.external_sun4_dynamic_link*, i64, i64) #1

declare dso_local i32 @obj_reloc_entry_size(%struct.TYPE_14__*) #1

declare dso_local i64 @BFD_ALIGN(i32, i32) #1

declare dso_local %struct.TYPE_17__* @obj_textsec(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
