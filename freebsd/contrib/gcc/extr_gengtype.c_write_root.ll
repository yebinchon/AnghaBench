; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_14__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__*, i32* }
%struct.fileloc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"skip\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"desc\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"field `%s' of global `%s' has unknown option `%s'\00", align 1
@TYPE_UNION = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"both `%s.%s.%s' and `%s.%s.%s' have tag `%s'\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s.%s.%s\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"global `%s.%s' has `desc' option but is not union\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s[0]\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"  {\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"    &%s,\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"    1\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c" * (%s)\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c" * ARRAY_SIZE (%s)\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"    sizeof (%s\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"[0]\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"),\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"    &gt_ggc_mx_%s,\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"    &gt_pch_nx_%s\00", align 1
@TYPE_PARAM_STRUCT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"    &gt_ggc_m_\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c",\0A    &gt_pch_n_\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"    &gt_ggc_ma_%s,\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"    &gt_pch_na_%s\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"global `%s' is pointer to unimplemented type\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c",\0A    &%s\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"\0A  },\0A\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"    1, \0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"    sizeof (%s),\0A\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"    &gt_ggc_m_S,\0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"    (gt_pointer_walker) &gt_pch_n_S\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"  },\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"global `%s' is unimplemented type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_15__*, %struct.TYPE_14__*, i8*, i32, %struct.fileloc*, i8*)* @write_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_root(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i8* %3, i32 %4, %struct.fileloc* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.fileloc*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca %struct.TYPE_15__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca %struct.TYPE_14__*, align 8
  %27 = alloca %struct.TYPE_14__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.fileloc* %5, %struct.fileloc** %13, align 8
  store i8* %6, i8** %14, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %420 [
    i32 128, label %31
    i32 132, label %223
    i32 131, label %239
    i32 129, label %400
    i32 130, label %419
  ]

31:                                               ; preds = %7
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %15, align 8
  br label %37

37:                                               ; preds = %218, %31
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %40, label %222

40:                                               ; preds = %37
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %42, align 8
  store %struct.TYPE_16__* %43, %struct.TYPE_16__** %18, align 8
  br label %44

44:                                               ; preds = %78, %40
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %46 = icmp ne %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 1, i32* %16, align 4
  br label %77

54:                                               ; preds = %47
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %17, align 8
  br label %76

64:                                               ; preds = %54
  %65 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = load i8*, i8** %11, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (%struct.fileloc*, i8*, i8*, ...) @error_at_line(%struct.fileloc* %65, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %70, i8* %71, i8* %74)
  br label %76

76:                                               ; preds = %64, %60
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %80, align 8
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %18, align 8
  br label %44

82:                                               ; preds = %44
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %218

86:                                               ; preds = %82
  %87 = load i8*, i8** %17, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %189

89:                                               ; preds = %86
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TYPE_UNION, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %189

97:                                               ; preds = %89
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %19, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %20, align 8
  br label %105

105:                                              ; preds = %162, %97
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %107 = icmp ne %struct.TYPE_15__* %106, null
  br i1 %107, label %108, label %166

108:                                              ; preds = %105
  store i8* null, i8** %21, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %22, align 8
  br label %112

112:                                              ; preds = %126, %108
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %114 = icmp ne %struct.TYPE_16__* %113, null
  br i1 %114, label %115, label %130

115:                                              ; preds = %112
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %21, align 8
  br label %125

125:                                              ; preds = %121, %115
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %128, align 8
  store %struct.TYPE_16__* %129, %struct.TYPE_16__** %22, align 8
  br label %112

130:                                              ; preds = %112
  %131 = load i8*, i8** %21, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = load i8*, i8** %21, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 @strcmp(i8* %134, i8* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133, %130
  br label %162

139:                                              ; preds = %133
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %141 = icmp ne %struct.TYPE_15__* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %139
  %143 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %21, align 8
  %159 = call i32 (%struct.fileloc*, i8*, i8*, ...) @error_at_line(%struct.fileloc* %143, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %144, i32 %147, i32 %150, i8* %151, i32 %154, i32 %157, i8* %158)
  br label %160

160:                                              ; preds = %142, %139
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  store %struct.TYPE_15__* %161, %struct.TYPE_15__** %19, align 8
  br label %162

162:                                              ; preds = %160, %138
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %164, align 8
  store %struct.TYPE_15__* %165, %struct.TYPE_15__** %20, align 8
  br label %105

166:                                              ; preds = %105
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %168 = icmp ne %struct.TYPE_15__* %167, null
  br i1 %168, label %169, label %188

169:                                              ; preds = %166
  %170 = load i8*, i8** %11, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i8* (i8*, i8*, ...) @xasprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %170, i32 %173, i32 %176)
  store i8* %177, i8** %23, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %181, align 8
  %183 = load i8*, i8** %23, align 8
  %184 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %185 = load i8*, i8** %14, align 8
  call void @write_root(i32 %178, %struct.TYPE_15__* %179, %struct.TYPE_14__* %182, i8* %183, i32 0, %struct.fileloc* %184, i8* %185)
  %186 = load i8*, i8** %23, align 8
  %187 = call i32 @free(i8* %186)
  br label %188

188:                                              ; preds = %169, %166
  br label %216

189:                                              ; preds = %89, %86
  %190 = load i8*, i8** %17, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %199

192:                                              ; preds = %189
  %193 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %194 = load i8*, i8** %11, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (%struct.fileloc*, i8*, i8*, ...) @error_at_line(%struct.fileloc* %193, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %194, i32 %197)
  br label %215

199:                                              ; preds = %189
  %200 = load i8*, i8** %11, align 8
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i8* (i8*, i8*, ...) @xasprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %200, i32 %203)
  store i8* %204, i8** %24, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = load i8*, i8** %24, align 8
  %211 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %212 = load i8*, i8** %14, align 8
  call void @write_root(i32 %205, %struct.TYPE_15__* %206, %struct.TYPE_14__* %209, i8* %210, i32 0, %struct.fileloc* %211, i8* %212)
  %213 = load i8*, i8** %24, align 8
  %214 = call i32 @free(i8* %213)
  br label %215

215:                                              ; preds = %199, %192
  br label %216

216:                                              ; preds = %215, %188
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %85
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  store %struct.TYPE_15__* %221, %struct.TYPE_15__** %15, align 8
  br label %37

222:                                              ; preds = %37
  br label %424

223:                                              ; preds = %7
  %224 = load i8*, i8** %11, align 8
  %225 = call i8* (i8*, i8*, ...) @xasprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* %224)
  store i8* %225, i8** %25, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %231, align 8
  %233 = load i8*, i8** %25, align 8
  %234 = load i32, i32* %12, align 4
  %235 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %236 = load i8*, i8** %14, align 8
  call void @write_root(i32 %226, %struct.TYPE_15__* %227, %struct.TYPE_14__* %232, i8* %233, i32 %234, %struct.fileloc* %235, i8* %236)
  %237 = load i8*, i8** %25, align 8
  %238 = call i32 @free(i8* %237)
  br label %424

239:                                              ; preds = %7
  %240 = load i32, i32* %8, align 4
  %241 = call i32 (i32, i8*, ...) @oprintf(i32 %240, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %242 = load i32, i32* %8, align 4
  %243 = load i8*, i8** %11, align 8
  %244 = call i32 (i32, i8*, ...) @oprintf(i32 %242, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %243)
  %245 = load i32, i32* %8, align 4
  %246 = call i32 (i32, i8*, ...) @oprintf(i32 %245, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %248, align 8
  store %struct.TYPE_14__* %249, %struct.TYPE_14__** %26, align 8
  br label %250

250:                                              ; preds = %286, %239
  %251 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 132
  br i1 %254, label %255, label %292

255:                                              ; preds = %250
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 0
  %262 = load i32, i32* %261, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %255
  %265 = load i32, i32* %8, align 4
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 (i32, i8*, ...) @oprintf(i32 %265, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32* %270)
  br label %285

272:                                              ; preds = %255
  %273 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = icmp eq %struct.TYPE_14__* %273, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 (i32, i8*, ...) @oprintf(i32 %279, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %282)
  br label %284

284:                                              ; preds = %278, %272
  br label %285

285:                                              ; preds = %284, %264
  br label %286

286:                                              ; preds = %285
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %290, align 8
  store %struct.TYPE_14__* %291, %struct.TYPE_14__** %26, align 8
  br label %250

292:                                              ; preds = %250
  %293 = load i32, i32* %8, align 4
  %294 = call i32 (i32, i8*, ...) @oprintf(i32 %293, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %295 = load i32, i32* %8, align 4
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = call i32 (i32, i8*, ...) @oprintf(i32 %295, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %298)
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 1
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %301, align 8
  store %struct.TYPE_14__* %302, %struct.TYPE_14__** %26, align 8
  br label %303

303:                                              ; preds = %311, %292
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = icmp eq i32 %306, 132
  br i1 %307, label %308, label %317

308:                                              ; preds = %303
  %309 = load i32, i32* %8, align 4
  %310 = call i32 (i32, i8*, ...) @oprintf(i32 %309, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  br label %311

311:                                              ; preds = %308
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_14__*, %struct.TYPE_14__** %315, align 8
  store %struct.TYPE_14__* %316, %struct.TYPE_14__** %26, align 8
  br label %303

317:                                              ; preds = %303
  %318 = load i32, i32* %8, align 4
  %319 = call i32 (i32, i8*, ...) @oprintf(i32 %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %322, align 8
  store %struct.TYPE_14__* %323, %struct.TYPE_14__** %27, align 8
  %324 = load i32, i32* %12, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %345, label %326

326:                                              ; preds = %317
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %328 = call i32 @UNION_OR_STRUCT_P(%struct.TYPE_14__* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %345

330:                                              ; preds = %326
  %331 = load i32, i32* %8, align 4
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 (i32, i8*, ...) @oprintf(i32 %331, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %336)
  %338 = load i32, i32* %8, align 4
  %339 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 (i32, i8*, ...) @oprintf(i32 %338, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %343)
  br label %390

345:                                              ; preds = %326, %317
  %346 = load i32, i32* %12, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %365, label %348

348:                                              ; preds = %345
  %349 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %350 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @TYPE_PARAM_STRUCT, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %365

354:                                              ; preds = %348
  %355 = load i32, i32* %8, align 4
  %356 = call i32 (i32, i8*, ...) @oprintf(i32 %355, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %357 = load i32, i32* %8, align 4
  %358 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %359 = call i32 @output_mangled_typename(i32 %357, %struct.TYPE_14__* %358)
  %360 = load i32, i32* %8, align 4
  %361 = call i32 (i32, i8*, ...) @oprintf(i32 %360, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %362 = load i32, i32* %8, align 4
  %363 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %364 = call i32 @output_mangled_typename(i32 %362, %struct.TYPE_14__* %363)
  br label %389

365:                                              ; preds = %348, %345
  %366 = load i32, i32* %12, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %384

368:                                              ; preds = %365
  %369 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp eq i32 %371, 131
  br i1 %372, label %377, label %373

373:                                              ; preds = %368
  %374 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %375 = call i32 @UNION_OR_STRUCT_P(%struct.TYPE_14__* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %384

377:                                              ; preds = %373, %368
  %378 = load i32, i32* %8, align 4
  %379 = load i8*, i8** %11, align 8
  %380 = call i32 (i32, i8*, ...) @oprintf(i32 %378, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %379)
  %381 = load i32, i32* %8, align 4
  %382 = load i8*, i8** %11, align 8
  %383 = call i32 (i32, i8*, ...) @oprintf(i32 %381, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i8* %382)
  br label %388

384:                                              ; preds = %373, %365
  %385 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %386 = load i8*, i8** %11, align 8
  %387 = call i32 (%struct.fileloc*, i8*, i8*, ...) @error_at_line(%struct.fileloc* %385, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.24, i64 0, i64 0), i8* %386)
  br label %388

388:                                              ; preds = %384, %377
  br label %389

389:                                              ; preds = %388, %354
  br label %390

390:                                              ; preds = %389, %330
  %391 = load i8*, i8** %14, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %390
  %394 = load i32, i32* %8, align 4
  %395 = load i8*, i8** %14, align 8
  %396 = call i32 (i32, i8*, ...) @oprintf(i32 %394, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* %395)
  br label %397

397:                                              ; preds = %393, %390
  %398 = load i32, i32* %8, align 4
  %399 = call i32 (i32, i8*, ...) @oprintf(i32 %398, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %424

400:                                              ; preds = %7
  %401 = load i32, i32* %8, align 4
  %402 = call i32 (i32, i8*, ...) @oprintf(i32 %401, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %403 = load i32, i32* %8, align 4
  %404 = load i8*, i8** %11, align 8
  %405 = call i32 (i32, i8*, ...) @oprintf(i32 %403, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %404)
  %406 = load i32, i32* %8, align 4
  %407 = call i32 (i32, i8*, ...) @oprintf(i32 %406, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0))
  %408 = load i32, i32* %8, align 4
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %410 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = call i32 (i32, i8*, ...) @oprintf(i32 %408, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 %411)
  %413 = load i32, i32* %8, align 4
  %414 = call i32 (i32, i8*, ...) @oprintf(i32 %413, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %415 = load i32, i32* %8, align 4
  %416 = call i32 (i32, i8*, ...) @oprintf(i32 %415, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.30, i64 0, i64 0))
  %417 = load i32, i32* %8, align 4
  %418 = call i32 (i32, i8*, ...) @oprintf(i32 %417, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  br label %424

419:                                              ; preds = %7
  br label %424

420:                                              ; preds = %7
  %421 = load %struct.fileloc*, %struct.fileloc** %13, align 8
  %422 = load i8*, i8** %11, align 8
  %423 = call i32 (%struct.fileloc*, i8*, i8*, ...) @error_at_line(%struct.fileloc* %421, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i8* %422)
  br label %424

424:                                              ; preds = %420, %419, %400, %397, %223, %222
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @error_at_line(%struct.fileloc*, i8*, i8*, ...) #1

declare dso_local i8* @xasprintf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i32 @UNION_OR_STRUCT_P(%struct.TYPE_14__*) #1

declare dso_local i32 @output_mangled_typename(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
