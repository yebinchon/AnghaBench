; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_resurrect_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/tools/ctf/cvt/extr_ctf.c_resurrect_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_32__ = type { i32, i32 }
%struct.TYPE_31__ = type { i64, i64, i32, i32*, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_36__*, %struct.TYPE_33__*, %struct.TYPE_29__*, %struct.TYPE_34__* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_31__**, i32, %struct.TYPE_31__* }
%struct.TYPE_36__ = type { i32, i8*, %struct.TYPE_36__* }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_31__*, i8*, %struct.TYPE_33__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_31__*, %struct.TYPE_31__* }
%struct.TYPE_34__ = type { i32, i8, i32, i32, i32, i32 }
%struct.TYPE_37__ = type { i64, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { i64, i64 }
%struct.TYPE_35__ = type { %struct.TYPE_31__*, i32 }

@CTF_MAX_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Reference to invalid type %d\00", align 1
@CTF_STRTAB_0 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to cope with non-zero strtab id\00", align 1
@INTRINSIC = common dso_local global i8* null, align 8
@INTR_INT = common dso_local global i32 0, align 4
@CTF_INT_SIGNED = common dso_local global i32 0, align 4
@CTF_INT_CHAR = common dso_local global i32 0, align 4
@CTF_INT_BOOL = common dso_local global i32 0, align 4
@CTF_INT_VARARGS = common dso_local global i32 0, align 4
@INTR_REAL = common dso_local global i32 0, align 4
@POINTER = common dso_local global i64 0, align 8
@ARRAY = common dso_local global i64 0, align 8
@STRUCT = common dso_local global i64 0, align 8
@UNION = common dso_local global i64 0, align 8
@CTF_LSTRUCT_THRESH = common dso_local global i64 0, align 8
@ENUM = common dso_local global i64 0, align 8
@FORWARD = common dso_local global i64 0, align 8
@TYPEDEF = common dso_local global i64 0, align 8
@VOLATILE = common dso_local global i64 0, align 8
@CONST = common dso_local global i64 0, align 8
@FUNCTION = common dso_local global i64 0, align 8
@RESTRICT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't parse unknown CTF type %d\0A\00", align 1
@II_SOU = common dso_local global i32 0, align 4
@II_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Resurrected %d %stype %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"root \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Resurrected %d types (%d were roots)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_26__*, %struct.TYPE_32__*, %struct.TYPE_31__**, i32, i64, i32)* @resurrect_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resurrect_types(%struct.TYPE_26__* %0, %struct.TYPE_32__* %1, %struct.TYPE_31__** %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_31__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_31__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_36__**, align 8
  %30 = alloca %struct.TYPE_33__**, align 8
  %31 = alloca %struct.TYPE_34__*, align 8
  %32 = alloca %struct.TYPE_37__*, align 8
  %33 = alloca %struct.TYPE_28__*, align 8
  %34 = alloca %struct.TYPE_27__*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.TYPE_24__*, align 8
  %37 = alloca %struct.TYPE_25__*, align 8
  %38 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_31__** %2, %struct.TYPE_31__*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  store i64 %43, i64* %13, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %46, %49
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %51, %54
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %13, align 8
  store i64 %56, i64* %16, align 8
  store i32 0, i32* %23, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %6
  %60 = load i32, i32* @CTF_MAX_TYPE, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %6
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %16, align 8
  store i32 0, i32* %22, align 4
  store i32 1, i32* %24, align 4
  br label %63

63:                                               ; preds = %693, %61
  %64 = load i64, i64* %16, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %65, %66
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %698

69:                                               ; preds = %63
  %70 = load i32, i32* %24, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %698

74:                                               ; preds = %69
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %24, align 4
  %80 = call i32 (i8*, ...) @parseterminate(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load i64, i64* %16, align 8
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %35, align 8
  %84 = load i8*, i8** %35, align 8
  %85 = bitcast i8* %84 to %struct.TYPE_37__*
  store %struct.TYPE_37__* %85, %struct.TYPE_37__** %32, align 8
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %87 = call i32 @get_ctt_size(%struct.TYPE_37__* %86, i64* %20, i64* %21)
  %88 = load i64, i64* %21, align 8
  %89 = load i64, i64* %16, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %16, align 8
  %91 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %92 = load i32, i32* %24, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %91, i64 %93
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  store %struct.TYPE_31__* %95, %struct.TYPE_31__** %17, align 8
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %97 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @CTF_NAME_STID(i32 %98)
  %100 = load i64, i64* @CTF_STRTAB_0, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %81
  %103 = call i32 (i8*, ...) @parseterminate(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %81
  %105 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %106 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i64 @CTF_NAME_OFFSET(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i64, i64* %15, align 8
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @CTF_NAME_OFFSET(i32 %114)
  %116 = add nsw i64 %111, %115
  %117 = call i8* @xstrdup(i64 %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  br label %124

121:                                              ; preds = %104
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  br label %124

124:                                              ; preds = %121, %110
  %125 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %126 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @CTF_INFO_KIND(i32 %127)
  store i32 %128, i32* %26, align 4
  %129 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %130 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @CTF_INFO_VLEN(i32 %131)
  store i32 %132, i32* %27, align 4
  %133 = load i32, i32* %26, align 4
  switch i32 %133, label %625 [
    i32 135, label %134
    i32 138, label %204
    i32 134, label %239
    i32 141, label %251
    i32 132, label %295
    i32 130, label %295
    i32 139, label %416
    i32 137, label %462
    i32 131, label %470
    i32 128, label %482
    i32 140, label %494
    i32 136, label %506
    i32 133, label %612
    i32 129, label %624
  ]

134:                                              ; preds = %124
  %135 = load i8*, i8** @INTRINSIC, align 8
  %136 = ptrtoint i8* %135 to i64
  %137 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %138 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %16, align 8
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %35, align 8
  %144 = load i8*, i8** %35, align 8
  %145 = bitcast i8* %144 to i32*
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %18, align 4
  %147 = load i64, i64* %16, align 8
  %148 = add i64 %147, 4
  store i64 %148, i64* %16, align 8
  %149 = load i32, i32* %18, align 4
  %150 = call i32 @CTF_INT_ENCODING(i32 %149)
  store i32 %150, i32* %19, align 4
  %151 = call i8* @xmalloc(i32 24)
  %152 = bitcast i8* %151 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %152, %struct.TYPE_34__** %31, align 8
  %153 = load i32, i32* @INTR_INT, align 4
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @CTF_INT_SIGNED, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  %162 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @CTF_INT_CHAR, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %134
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %169, i32 0, i32 1
  store i8 99, i8* %170, align 4
  br label %192

171:                                              ; preds = %134
  %172 = load i32, i32* %19, align 4
  %173 = load i32, i32* @CTF_INT_BOOL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %171
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %178 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %177, i32 0, i32 1
  store i8 98, i8* %178, align 4
  br label %191

179:                                              ; preds = %171
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* @CTF_INT_VARARGS, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %179
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 1
  store i8 118, i8* %186, align 4
  br label %190

187:                                              ; preds = %179
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 1
  store i8 0, i8* %189, align 4
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %176
  br label %192

192:                                              ; preds = %191, %168
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @CTF_INT_OFFSET(i32 %193)
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %196 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @CTF_INT_BITS(i32 %197)
  %199 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %200 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %202 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 9
  store %struct.TYPE_34__* %201, %struct.TYPE_34__** %203, align 8
  br label %628

204:                                              ; preds = %124
  %205 = load i8*, i8** @INTRINSIC, align 8
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %208 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  %209 = load i64, i64* %20, align 8
  %210 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %211 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %210, i32 0, i32 1
  store i64 %209, i64* %211, align 8
  %212 = load i64, i64* %16, align 8
  %213 = inttoptr i64 %212 to i8*
  store i8* %213, i8** %35, align 8
  %214 = load i8*, i8** %35, align 8
  %215 = bitcast i8* %214 to i32*
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %18, align 4
  %217 = load i64, i64* %16, align 8
  %218 = add i64 %217, 4
  store i64 %218, i64* %16, align 8
  %219 = call i8* @xcalloc(i32 24)
  %220 = bitcast i8* %219 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %220, %struct.TYPE_34__** %31, align 8
  %221 = load i32, i32* @INTR_REAL, align 4
  %222 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %223 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* %18, align 4
  %225 = call i32 @CTF_FP_ENCODING(i32 %224)
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 4
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %18, align 4
  %229 = call i32 @CTF_FP_OFFSET(i32 %228)
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %231 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* %18, align 4
  %233 = call i32 @CTF_FP_BITS(i32 %232)
  %234 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %235 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %31, align 8
  %237 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %238 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %237, i32 0, i32 9
  store %struct.TYPE_34__* %236, %struct.TYPE_34__** %238, align 8
  br label %628

239:                                              ; preds = %124
  %240 = load i64, i64* @POINTER, align 8
  %241 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %241, i32 0, i32 0
  store i64 %240, i64* %242, align 8
  %243 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %244 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %245 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %243, i64 %246
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %247, align 8
  %249 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 4
  store %struct.TYPE_31__* %248, %struct.TYPE_31__** %250, align 8
  br label %628

251:                                              ; preds = %124
  %252 = load i64, i64* @ARRAY, align 8
  %253 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %253, i32 0, i32 0
  store i64 %252, i64* %254, align 8
  %255 = load i64, i64* %20, align 8
  %256 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %257 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %256, i32 0, i32 1
  store i64 %255, i64* %257, align 8
  %258 = load i64, i64* %16, align 8
  %259 = inttoptr i64 %258 to i8*
  store i8* %259, i8** %35, align 8
  %260 = load i8*, i8** %35, align 8
  %261 = bitcast i8* %260 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %261, %struct.TYPE_28__** %33, align 8
  %262 = load i64, i64* %16, align 8
  %263 = add i64 %262, 24
  store i64 %263, i64* %16, align 8
  %264 = call i8* @xmalloc(i32 4)
  %265 = bitcast i8* %264 to %struct.TYPE_29__*
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %267 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %266, i32 0, i32 8
  store %struct.TYPE_29__* %265, %struct.TYPE_29__** %267, align 8
  %268 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %269 = load %struct.TYPE_28__*, %struct.TYPE_28__** %33, align 8
  %270 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %269, i32 0, i32 0
  %271 = load i64, i64* %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %268, i64 %271
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %272, align 8
  %274 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %275 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %274, i32 0, i32 8
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 2
  store %struct.TYPE_31__* %273, %struct.TYPE_31__** %277, align 8
  %278 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %33, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %278, i64 %281
  %283 = load %struct.TYPE_31__*, %struct.TYPE_31__** %282, align 8
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %284, i32 0, i32 8
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  store %struct.TYPE_31__* %283, %struct.TYPE_31__** %287, align 8
  %288 = load %struct.TYPE_28__*, %struct.TYPE_28__** %33, align 8
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 8
  %293 = load %struct.TYPE_29__*, %struct.TYPE_29__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %293, i32 0, i32 0
  store i32 %290, i32* %294, align 8
  br label %628

295:                                              ; preds = %124, %124
  %296 = load i32, i32* %26, align 4
  %297 = icmp eq i32 %296, 132
  br i1 %297, label %298, label %300

298:                                              ; preds = %295
  %299 = load i64, i64* @STRUCT, align 8
  br label %302

300:                                              ; preds = %295
  %301 = load i64, i64* @UNION, align 8
  br label %302

302:                                              ; preds = %300, %298
  %303 = phi i64 [ %299, %298 ], [ %301, %300 ]
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %305 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %304, i32 0, i32 0
  store i64 %303, i64* %305, align 8
  %306 = load i64, i64* %20, align 8
  %307 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %308 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %307, i32 0, i32 1
  store i64 %306, i64* %308, align 8
  %309 = load i64, i64* %20, align 8
  %310 = load i64, i64* @CTF_LSTRUCT_THRESH, align 8
  %311 = icmp ult i64 %309, %310
  br i1 %311, label %312, label %363

312:                                              ; preds = %302
  store i32 0, i32* %28, align 4
  %313 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %314 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %313, i32 0, i32 7
  store %struct.TYPE_33__** %314, %struct.TYPE_33__*** %30, align 8
  br label %315

315:                                              ; preds = %356, %312
  %316 = load i32, i32* %28, align 4
  %317 = load i32, i32* %27, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %362

319:                                              ; preds = %315
  %320 = load i64, i64* %16, align 8
  %321 = inttoptr i64 %320 to i8*
  store i8* %321, i8** %35, align 8
  %322 = load i8*, i8** %35, align 8
  %323 = bitcast i8* %322 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %323, %struct.TYPE_24__** %36, align 8
  %324 = load i64, i64* %16, align 8
  %325 = add i64 %324, 24
  store i64 %325, i64* %16, align 8
  %326 = call i8* @xmalloc(i32 32)
  %327 = bitcast i8* %326 to %struct.TYPE_33__*
  %328 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  store %struct.TYPE_33__* %327, %struct.TYPE_33__** %328, align 8
  %329 = load i64, i64* %15, align 8
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %331 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = add nsw i64 %329, %332
  %334 = call i8* @xstrdup(i64 %333)
  %335 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %336 = load %struct.TYPE_33__*, %struct.TYPE_33__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %336, i32 0, i32 3
  store i8* %334, i8** %337, align 8
  %338 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %338, i64 %341
  %343 = load %struct.TYPE_31__*, %struct.TYPE_31__** %342, align 8
  %344 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 2
  store %struct.TYPE_31__* %343, %struct.TYPE_31__** %346, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %36, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %351, i32 0, i32 0
  store i32 %349, i32* %352, align 8
  %353 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %354 = load %struct.TYPE_33__*, %struct.TYPE_33__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 1
  store i32 0, i32* %355, align 4
  br label %356

356:                                              ; preds = %319
  %357 = load i32, i32* %28, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %28, align 4
  %359 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %360 = load %struct.TYPE_33__*, %struct.TYPE_33__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %360, i32 0, i32 4
  store %struct.TYPE_33__** %361, %struct.TYPE_33__*** %30, align 8
  br label %315

362:                                              ; preds = %315
  br label %414

363:                                              ; preds = %302
  store i32 0, i32* %28, align 4
  %364 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %365 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %364, i32 0, i32 7
  store %struct.TYPE_33__** %365, %struct.TYPE_33__*** %30, align 8
  br label %366

366:                                              ; preds = %407, %363
  %367 = load i32, i32* %28, align 4
  %368 = load i32, i32* %27, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %413

370:                                              ; preds = %366
  %371 = load i64, i64* %16, align 8
  %372 = inttoptr i64 %371 to i8*
  store i8* %372, i8** %35, align 8
  %373 = load i8*, i8** %35, align 8
  %374 = bitcast i8* %373 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %374, %struct.TYPE_25__** %37, align 8
  %375 = load i64, i64* %16, align 8
  %376 = add i64 %375, 16
  store i64 %376, i64* %16, align 8
  %377 = call i8* @xmalloc(i32 32)
  %378 = bitcast i8* %377 to %struct.TYPE_33__*
  %379 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  store %struct.TYPE_33__* %378, %struct.TYPE_33__** %379, align 8
  %380 = load i64, i64* %15, align 8
  %381 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %382 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = add nsw i64 %380, %383
  %385 = call i8* @xstrdup(i64 %384)
  %386 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %387, i32 0, i32 3
  store i8* %385, i8** %388, align 8
  %389 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %391 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %389, i64 %392
  %394 = load %struct.TYPE_31__*, %struct.TYPE_31__** %393, align 8
  %395 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %396 = load %struct.TYPE_33__*, %struct.TYPE_33__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %396, i32 0, i32 2
  store %struct.TYPE_31__* %394, %struct.TYPE_31__** %397, align 8
  %398 = load %struct.TYPE_25__*, %struct.TYPE_25__** %37, align 8
  %399 = call i64 @CTF_LMEM_OFFSET(%struct.TYPE_25__* %398)
  %400 = trunc i64 %399 to i32
  %401 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %402 = load %struct.TYPE_33__*, %struct.TYPE_33__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %402, i32 0, i32 0
  store i32 %400, i32* %403, align 8
  %404 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i32 0, i32 1
  store i32 0, i32* %406, align 4
  br label %407

407:                                              ; preds = %370
  %408 = load i32, i32* %28, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %28, align 4
  %410 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %411, i32 0, i32 4
  store %struct.TYPE_33__** %412, %struct.TYPE_33__*** %30, align 8
  br label %366

413:                                              ; preds = %366
  br label %414

414:                                              ; preds = %413, %362
  %415 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %30, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %415, align 8
  br label %628

416:                                              ; preds = %124
  %417 = load i64, i64* @ENUM, align 8
  %418 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %419 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %418, i32 0, i32 0
  store i64 %417, i64* %419, align 8
  %420 = load i64, i64* %20, align 8
  %421 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %422 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %421, i32 0, i32 1
  store i64 %420, i64* %422, align 8
  store i32 0, i32* %28, align 4
  %423 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %424 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %423, i32 0, i32 6
  store %struct.TYPE_36__** %424, %struct.TYPE_36__*** %29, align 8
  br label %425

425:                                              ; preds = %454, %416
  %426 = load i32, i32* %28, align 4
  %427 = load i32, i32* %27, align 4
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %429, label %460

429:                                              ; preds = %425
  %430 = load i64, i64* %16, align 8
  %431 = inttoptr i64 %430 to i8*
  store i8* %431, i8** %35, align 8
  %432 = load i8*, i8** %35, align 8
  %433 = bitcast i8* %432 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %433, %struct.TYPE_27__** %34, align 8
  %434 = load i64, i64* %16, align 8
  %435 = add i64 %434, 16
  store i64 %435, i64* %16, align 8
  %436 = call i8* @xmalloc(i32 24)
  %437 = bitcast i8* %436 to %struct.TYPE_36__*
  %438 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %29, align 8
  store %struct.TYPE_36__* %437, %struct.TYPE_36__** %438, align 8
  %439 = load i64, i64* %15, align 8
  %440 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  %441 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %440, i32 0, i32 0
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %439, %442
  %444 = call i8* @xstrdup(i64 %443)
  %445 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %29, align 8
  %446 = load %struct.TYPE_36__*, %struct.TYPE_36__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %446, i32 0, i32 1
  store i8* %444, i8** %447, align 8
  %448 = load %struct.TYPE_27__*, %struct.TYPE_27__** %34, align 8
  %449 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %448, i32 0, i32 1
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %29, align 8
  %452 = load %struct.TYPE_36__*, %struct.TYPE_36__** %451, align 8
  %453 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %452, i32 0, i32 0
  store i32 %450, i32* %453, align 8
  br label %454

454:                                              ; preds = %429
  %455 = load i32, i32* %28, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %28, align 4
  %457 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %29, align 8
  %458 = load %struct.TYPE_36__*, %struct.TYPE_36__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %458, i32 0, i32 2
  store %struct.TYPE_36__** %459, %struct.TYPE_36__*** %29, align 8
  br label %425

460:                                              ; preds = %425
  %461 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %29, align 8
  store %struct.TYPE_36__* null, %struct.TYPE_36__** %461, align 8
  br label %628

462:                                              ; preds = %124
  %463 = load i64, i64* @FORWARD, align 8
  %464 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %465 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %464, i32 0, i32 0
  store i64 %463, i64* %465, align 8
  %466 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %467 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %466, i32 0, i32 1
  %468 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %469 = call i32 @list_add(i32* %467, %struct.TYPE_31__* %468)
  br label %628

470:                                              ; preds = %124
  %471 = load i64, i64* @TYPEDEF, align 8
  %472 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %473 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %472, i32 0, i32 0
  store i64 %471, i64* %473, align 8
  %474 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %475 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %476 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %475, i32 0, i32 0
  %477 = load i64, i64* %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %474, i64 %477
  %479 = load %struct.TYPE_31__*, %struct.TYPE_31__** %478, align 8
  %480 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %481 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %480, i32 0, i32 4
  store %struct.TYPE_31__* %479, %struct.TYPE_31__** %481, align 8
  br label %628

482:                                              ; preds = %124
  %483 = load i64, i64* @VOLATILE, align 8
  %484 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %485 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %484, i32 0, i32 0
  store i64 %483, i64* %485, align 8
  %486 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %487 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %488 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %487, i32 0, i32 0
  %489 = load i64, i64* %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %486, i64 %489
  %491 = load %struct.TYPE_31__*, %struct.TYPE_31__** %490, align 8
  %492 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %493 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %492, i32 0, i32 4
  store %struct.TYPE_31__* %491, %struct.TYPE_31__** %493, align 8
  br label %628

494:                                              ; preds = %124
  %495 = load i64, i64* @CONST, align 8
  %496 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %497 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %496, i32 0, i32 0
  store i64 %495, i64* %497, align 8
  %498 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %499 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %500 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %498, i64 %501
  %503 = load %struct.TYPE_31__*, %struct.TYPE_31__** %502, align 8
  %504 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %505 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %504, i32 0, i32 4
  store %struct.TYPE_31__* %503, %struct.TYPE_31__** %505, align 8
  br label %628

506:                                              ; preds = %124
  %507 = load i64, i64* @FUNCTION, align 8
  %508 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %509 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %508, i32 0, i32 0
  store i64 %507, i64* %509, align 8
  %510 = call i8* @xcalloc(i32 4)
  %511 = bitcast i8* %510 to %struct.TYPE_30__*
  %512 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %513 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %512, i32 0, i32 5
  store %struct.TYPE_30__* %511, %struct.TYPE_30__** %513, align 8
  %514 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %515 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %516 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %514, i64 %517
  %519 = load %struct.TYPE_31__*, %struct.TYPE_31__** %518, align 8
  %520 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %521 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %520, i32 0, i32 5
  %522 = load %struct.TYPE_30__*, %struct.TYPE_30__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %522, i32 0, i32 3
  store %struct.TYPE_31__* %519, %struct.TYPE_31__** %523, align 8
  %524 = load i64, i64* %16, align 8
  %525 = load i32, i32* %27, align 4
  %526 = sub nsw i32 %525, 1
  %527 = sext i32 %526 to i64
  %528 = mul i64 4, %527
  %529 = add i64 %524, %528
  %530 = inttoptr i64 %529 to i8*
  store i8* %530, i8** %35, align 8
  %531 = load i32, i32* %27, align 4
  %532 = icmp sgt i32 %531, 0
  br i1 %532, label %533, label %543

533:                                              ; preds = %506
  %534 = load i8*, i8** %35, align 8
  %535 = bitcast i8* %534 to i32*
  %536 = load i32, i32* %535, align 4
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %533
  %539 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %540 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %539, i32 0, i32 5
  %541 = load %struct.TYPE_30__*, %struct.TYPE_30__** %540, align 8
  %542 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %541, i32 0, i32 0
  store i32 1, i32* %542, align 8
  br label %543

543:                                              ; preds = %538, %533, %506
  %544 = load i32, i32* %27, align 4
  %545 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %546 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %545, i32 0, i32 5
  %547 = load %struct.TYPE_30__*, %struct.TYPE_30__** %546, align 8
  %548 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = sub nsw i32 %544, %549
  %551 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %552 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %551, i32 0, i32 5
  %553 = load %struct.TYPE_30__*, %struct.TYPE_30__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %553, i32 0, i32 2
  store i32 %550, i32* %554, align 8
  %555 = load i32, i32* %27, align 4
  %556 = sext i32 %555 to i64
  %557 = mul i64 80, %556
  %558 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %559 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %558, i32 0, i32 5
  %560 = load %struct.TYPE_30__*, %struct.TYPE_30__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = sext i32 %562 to i64
  %564 = sub i64 %557, %563
  %565 = trunc i64 %564 to i32
  %566 = call i8* @xcalloc(i32 %565)
  %567 = bitcast i8* %566 to %struct.TYPE_31__**
  %568 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %569 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %568, i32 0, i32 5
  %570 = load %struct.TYPE_30__*, %struct.TYPE_30__** %569, align 8
  %571 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %570, i32 0, i32 1
  store %struct.TYPE_31__** %567, %struct.TYPE_31__*** %571, align 8
  store i32 0, i32* %28, align 4
  br label %572

572:                                              ; preds = %601, %543
  %573 = load i32, i32* %28, align 4
  %574 = load i32, i32* %27, align 4
  %575 = icmp slt i32 %573, %574
  br i1 %575, label %576, label %604

576:                                              ; preds = %572
  %577 = load i64, i64* %16, align 8
  %578 = inttoptr i64 %577 to i8*
  store i8* %578, i8** %35, align 8
  %579 = load i8*, i8** %35, align 8
  %580 = bitcast i8* %579 to i32*
  %581 = load i32, i32* %580, align 4
  store i32 %581, i32* %25, align 4
  %582 = load i64, i64* %16, align 8
  %583 = add i64 %582, 4
  store i64 %583, i64* %16, align 8
  %584 = load i32, i32* %25, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %600

586:                                              ; preds = %576
  %587 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %588 = load i32, i32* %25, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %587, i64 %589
  %591 = load %struct.TYPE_31__*, %struct.TYPE_31__** %590, align 8
  %592 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %593 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %592, i32 0, i32 5
  %594 = load %struct.TYPE_30__*, %struct.TYPE_30__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %594, i32 0, i32 1
  %596 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %595, align 8
  %597 = load i32, i32* %28, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %596, i64 %598
  store %struct.TYPE_31__* %591, %struct.TYPE_31__** %599, align 8
  br label %600

600:                                              ; preds = %586, %576
  br label %601

601:                                              ; preds = %600
  %602 = load i32, i32* %28, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %28, align 4
  br label %572

604:                                              ; preds = %572
  %605 = load i32, i32* %27, align 4
  %606 = and i32 %605, 1
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %611

608:                                              ; preds = %604
  %609 = load i64, i64* %16, align 8
  %610 = add i64 %609, 4
  store i64 %610, i64* %16, align 8
  br label %611

611:                                              ; preds = %608, %604
  br label %628

612:                                              ; preds = %124
  %613 = load i64, i64* @RESTRICT, align 8
  %614 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %615 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %614, i32 0, i32 0
  store i64 %613, i64* %615, align 8
  %616 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %9, align 8
  %617 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %618 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %617, i32 0, i32 0
  %619 = load i64, i64* %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %616, i64 %619
  %621 = load %struct.TYPE_31__*, %struct.TYPE_31__** %620, align 8
  %622 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %623 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %622, i32 0, i32 4
  store %struct.TYPE_31__* %621, %struct.TYPE_31__** %623, align 8
  br label %628

624:                                              ; preds = %124
  br label %628

625:                                              ; preds = %124
  %626 = load i32, i32* %26, align 4
  %627 = call i32 @warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %626)
  br label %628

628:                                              ; preds = %625, %624, %612, %611, %494, %482, %470, %462, %460, %414, %251, %239, %204, %192
  %629 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %630 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 8
  %632 = call i64 @CTF_INFO_ISROOT(i32 %631)
  %633 = icmp ne i64 %632, 0
  br i1 %633, label %634, label %675

634:                                              ; preds = %628
  %635 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %636 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %635, i32 0, i32 3
  %637 = load i32*, i32** %636, align 8
  %638 = call %struct.TYPE_35__* @iidesc_new(i32* %637)
  store %struct.TYPE_35__* %638, %struct.TYPE_35__** %38, align 8
  %639 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %640 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %639, i32 0, i32 0
  %641 = load i64, i64* %640, align 8
  %642 = load i64, i64* @STRUCT, align 8
  %643 = icmp eq i64 %641, %642
  br i1 %643, label %656, label %644

644:                                              ; preds = %634
  %645 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %646 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %645, i32 0, i32 0
  %647 = load i64, i64* %646, align 8
  %648 = load i64, i64* @UNION, align 8
  %649 = icmp eq i64 %647, %648
  br i1 %649, label %656, label %650

650:                                              ; preds = %644
  %651 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %652 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %651, i32 0, i32 0
  %653 = load i64, i64* %652, align 8
  %654 = load i64, i64* @ENUM, align 8
  %655 = icmp eq i64 %653, %654
  br i1 %655, label %656, label %660

656:                                              ; preds = %650, %644, %634
  %657 = load i32, i32* @II_SOU, align 4
  %658 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %659 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %658, i32 0, i32 1
  store i32 %657, i32* %659, align 8
  br label %664

660:                                              ; preds = %650
  %661 = load i32, i32* @II_TYPE, align 4
  %662 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %663 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %662, i32 0, i32 1
  store i32 %661, i32* %663, align 8
  br label %664

664:                                              ; preds = %660, %656
  %665 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %666 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %667 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %666, i32 0, i32 0
  store %struct.TYPE_31__* %665, %struct.TYPE_31__** %667, align 8
  %668 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %669 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %668, i32 0, i32 0
  %670 = load i32, i32* %669, align 4
  %671 = load %struct.TYPE_35__*, %struct.TYPE_35__** %38, align 8
  %672 = call i32 @hash_add(i32 %670, %struct.TYPE_35__* %671)
  %673 = load i32, i32* %23, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %23, align 4
  br label %675

675:                                              ; preds = %664, %628
  %676 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %677 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %676, i32 0, i32 0
  %678 = load i64, i64* %677, align 8
  %679 = trunc i64 %678 to i32
  %680 = load %struct.TYPE_37__*, %struct.TYPE_37__** %32, align 8
  %681 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 8
  %683 = call i64 @CTF_INFO_ISROOT(i32 %682)
  %684 = icmp ne i64 %683, 0
  %685 = zext i1 %684 to i64
  %686 = select i1 %684, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %687 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %688 = call i32 @tdesc_name(%struct.TYPE_31__* %687)
  %689 = load %struct.TYPE_31__*, %struct.TYPE_31__** %17, align 8
  %690 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %689, i32 0, i32 2
  %691 = load i32, i32* %690, align 8
  %692 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %679, i8* %686, i32 %688, i32 %691)
  br label %693

693:                                              ; preds = %675
  %694 = load i32, i32* %22, align 4
  %695 = add nsw i32 %694, 1
  store i32 %695, i32* %22, align 4
  %696 = load i32, i32* %24, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %24, align 4
  br label %63

698:                                              ; preds = %73, %63
  %699 = load i32, i32* %22, align 4
  %700 = load i32, i32* %23, align 4
  %701 = call i32 (i32, i8*, i32, ...) @debug(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %699, i32 %700)
  ret void
}

declare dso_local i32 @parseterminate(i8*, ...) #1

declare dso_local i32 @get_ctt_size(%struct.TYPE_37__*, i64*, i64*) #1

declare dso_local i64 @CTF_NAME_STID(i32) #1

declare dso_local i64 @CTF_NAME_OFFSET(i32) #1

declare dso_local i8* @xstrdup(i64) #1

declare dso_local i32 @CTF_INFO_KIND(i32) #1

declare dso_local i32 @CTF_INFO_VLEN(i32) #1

declare dso_local i32 @CTF_INT_ENCODING(i32) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @CTF_INT_OFFSET(i32) #1

declare dso_local i32 @CTF_INT_BITS(i32) #1

declare dso_local i8* @xcalloc(i32) #1

declare dso_local i32 @CTF_FP_ENCODING(i32) #1

declare dso_local i32 @CTF_FP_OFFSET(i32) #1

declare dso_local i32 @CTF_FP_BITS(i32) #1

declare dso_local i64 @CTF_LMEM_OFFSET(%struct.TYPE_25__*) #1

declare dso_local i32 @list_add(i32*, %struct.TYPE_31__*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i64 @CTF_INFO_ISROOT(i32) #1

declare dso_local %struct.TYPE_35__* @iidesc_new(i32*) #1

declare dso_local i32 @hash_add(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @tdesc_name(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
