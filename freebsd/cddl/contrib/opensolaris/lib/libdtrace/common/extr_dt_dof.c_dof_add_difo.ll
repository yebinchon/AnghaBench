; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dof.c_dof_add_difo.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_dof.c_dof_add_difo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i8*, i32, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_19__**, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_21__ = type { i8*, i8*, i8*, i32, i32, i64, i32, i32 }

@DOF_SECIDX_NONE = common dso_local global i8* null, align 8
@DOF_SECT_DIF = common dso_local global i32 0, align 4
@DOF_SECT_INTTAB = common dso_local global i32 0, align 4
@DOF_SECT_STRTAB = common dso_local global i32 0, align 4
@DOF_SECT_VARTAB = common dso_local global i32 0, align 4
@DOF_SECT_XLTAB = common dso_local global i32 0, align 4
@DOF_SECT_DIFOHDR = common dso_local global i32 0, align 4
@DOF_SECT_RELTAB = common dso_local global i32 0, align 4
@DOF_SECT_KRELHDR = common dso_local global i32 0, align 4
@DOF_SECT_URELHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_20__*, %struct.TYPE_17__*)* @dof_add_difo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dof_add_difo(%struct.TYPE_20__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca [5 x i8*], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_21__*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_19__**, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  store i32 0, i32* %6, align 4
  %18 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  store i8* %19, i8** %11, align 8
  %20 = load i8*, i8** @DOF_SECIDX_NONE, align 8
  store i8* %20, i8** %12, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 14
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %24 = icmp ne %struct.TYPE_21__* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 14
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = load i32, i32* @DOF_SECT_DIF, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = call i8* @dof_add_lsect(%struct.TYPE_20__* %26, %struct.TYPE_21__* %29, i32 %30, i32 4, i32 0, i32 4, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %40
  store i8* %37, i8** %41, align 8
  br label %42

42:                                               ; preds = %25, %2
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 13
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %44, align 8
  %46 = icmp ne %struct.TYPE_21__* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 13
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = load i32, i32* @DOF_SECT_INTTAB, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i8* @dof_add_lsect(%struct.TYPE_20__* %48, %struct.TYPE_21__* %51, i32 %52, i32 4, i32 0, i32 4, i32 %58)
  store i8* %59, i8** %11, align 8
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %62
  store i8* %59, i8** %63, align 8
  br label %64

64:                                               ; preds = %47, %42
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 12
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = icmp ne %struct.TYPE_21__* %67, null
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 12
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = load i32, i32* @DOF_SECT_STRTAB, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @dof_add_lsect(%struct.TYPE_20__* %70, %struct.TYPE_21__* %73, i32 %74, i32 1, i32 0, i32 0, i32 %77)
  store i8* %78, i8** %10, align 8
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %81
  store i8* %78, i8** %82, align 8
  br label %83

83:                                               ; preds = %69, %64
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 11
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = icmp ne %struct.TYPE_21__* %86, null
  br i1 %87, label %88, label %105

88:                                               ; preds = %83
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 11
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = load i32, i32* @DOF_SECT_VARTAB, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = mul i64 4, %97
  %99 = trunc i64 %98 to i32
  %100 = call i8* @dof_add_lsect(%struct.TYPE_20__* %89, %struct.TYPE_21__* %92, i32 %93, i32 4, i32 0, i32 4, i32 %99)
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %103
  store i8* %100, i8** %104, align 8
  br label %105

105:                                              ; preds = %88, %83
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 10
  %108 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %107, align 8
  %109 = icmp ne %struct.TYPE_19__** %108, null
  br i1 %109, label %110, label %189

110:                                              ; preds = %105
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = mul i64 48, %114
  %116 = trunc i64 %115 to i32
  %117 = call %struct.TYPE_21__* @alloca(i32 %116)
  store %struct.TYPE_21__* %117, %struct.TYPE_21__** %13, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 10
  %120 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %119, align 8
  store %struct.TYPE_19__** %120, %struct.TYPE_19__*** %15, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  store %struct.TYPE_21__* %121, %struct.TYPE_21__** %14, align 8
  br label %122

122:                                              ; preds = %171, %110
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i64 %128
  %130 = icmp ult %struct.TYPE_21__* %123, %129
  br i1 %130, label %131, label %174

131:                                              ; preds = %122
  %132 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %132, i32 1
  store %struct.TYPE_19__** %133, %struct.TYPE_19__*** %15, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %132, align 8
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %16, align 8
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %136 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  store %struct.TYPE_18__* %139, %struct.TYPE_18__** %17, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i32, i32* %142, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dt_popcb(i32 %159, i32 %162)
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 5
  store i64 %168, i64* %170, align 8
  br label %171

171:                                              ; preds = %131
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %172, i32 1
  store %struct.TYPE_21__* %173, %struct.TYPE_21__** %14, align 8
  br label %122

174:                                              ; preds = %122
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %13, align 8
  %177 = load i32, i32* @DOF_SECT_XLTAB, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = sext i32 %180 to i64
  %182 = mul i64 48, %181
  %183 = trunc i64 %182 to i32
  %184 = call i8* @dof_add_lsect(%struct.TYPE_20__* %175, %struct.TYPE_21__* %176, i32 %177, i32 8, i32 0, i32 48, i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %6, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 %187
  store i8* %184, i8** %188, align 8
  br label %189

189:                                              ; preds = %174, %105
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = icmp ule i64 %191, 5
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = call %struct.TYPE_21__* @alloca(i32 44)
  store %struct.TYPE_21__* %195, %struct.TYPE_21__** %7, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 5
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %198, i32 0, i32 4
  %200 = call i32 @bcopy(i8** %197, i32* %199, i32 4)
  %201 = getelementptr inbounds [5 x i8*], [5 x i8*]* %5, i64 0, i64 0
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 3
  %204 = load i32, i32* %6, align 4
  %205 = sext i32 %204 to i64
  %206 = mul i64 8, %205
  %207 = trunc i64 %206 to i32
  %208 = call i32 @bcopy(i8** %201, i32* %203, i32 %207)
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %210 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %211 = load i32, i32* @DOF_SECT_DIFOHDR, align 4
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = mul i64 8, %213
  %215 = add i64 4, %214
  %216 = trunc i64 %215 to i32
  %217 = call i8* @dof_add_lsect(%struct.TYPE_20__* %209, %struct.TYPE_21__* %210, i32 %211, i32 8, i32 0, i32 0, i32 %216)
  store i8* %217, i8** %12, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 9
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %219, align 8
  %221 = icmp ne %struct.TYPE_21__* %220, null
  br i1 %221, label %222, label %244

222:                                              ; preds = %189
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 9
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %225, align 8
  %227 = load i32, i32* @DOF_SECT_RELTAB, align 4
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = mul i64 4, %231
  %233 = trunc i64 %232 to i32
  %234 = call i8* @dof_add_lsect(%struct.TYPE_20__* %223, %struct.TYPE_21__* %226, i32 %227, i32 4, i32 0, i32 4, i32 %233)
  store i8* %234, i8** %9, align 8
  %235 = load i8*, i8** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  store i8* %235, i8** %236, align 8
  %237 = load i8*, i8** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i8* %237, i8** %238, align 8
  %239 = load i8*, i8** %11, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i8* %239, i8** %240, align 8
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %242 = load i32, i32* @DOF_SECT_KRELHDR, align 4
  %243 = call i8* @dof_add_lsect(%struct.TYPE_20__* %241, %struct.TYPE_21__* %8, i32 %242, i32 8, i32 0, i32 0, i32 48)
  br label %244

244:                                              ; preds = %222, %189
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = icmp ne %struct.TYPE_21__* %247, null
  br i1 %248, label %249, label %271

249:                                              ; preds = %244
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %252, align 8
  %254 = load i32, i32* @DOF_SECT_RELTAB, align 4
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 7
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = mul i64 4, %258
  %260 = trunc i64 %259 to i32
  %261 = call i8* @dof_add_lsect(%struct.TYPE_20__* %250, %struct.TYPE_21__* %253, i32 %254, i32 4, i32 0, i32 4, i32 %260)
  store i8* %261, i8** %9, align 8
  %262 = load i8*, i8** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 2
  store i8* %262, i8** %263, align 8
  %264 = load i8*, i8** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 1
  store i8* %264, i8** %265, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i8* %266, i8** %267, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %269 = load i32, i32* @DOF_SECT_URELHDR, align 4
  %270 = call i8* @dof_add_lsect(%struct.TYPE_20__* %268, %struct.TYPE_21__* %8, i32 %269, i32 8, i32 0, i32 0, i32 48)
  br label %271

271:                                              ; preds = %249, %244
  %272 = load i8*, i8** %12, align 8
  ret i8* %272
}

declare dso_local i8* @dof_add_lsect(%struct.TYPE_20__*, %struct.TYPE_21__*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_21__* @alloca(i32) #1

declare dso_local i32 @dt_popcb(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bcopy(i8**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
