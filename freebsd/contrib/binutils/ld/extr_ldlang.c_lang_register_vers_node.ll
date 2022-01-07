; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_register_vers_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_register_vers_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_elf_version_tree = type { i8*, %struct.bfd_elf_version_tree*, i64, %struct.bfd_elf_version_deps*, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.bfd_elf_version_deps = type { i32 }
%struct.TYPE_2__ = type { %struct.bfd_elf_version_expr*, i64, %struct.bfd_elf_version_expr* }
%struct.bfd_elf_version_expr = type { i8*, i64, i8*, %struct.bfd_elf_version_expr* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@lang_elf_version_info = common dso_local global %struct.bfd_elf_version_tree* null, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"%X%P: anonymous version tag cannot be combined with other version tags\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%X%P: duplicate version tag `%s'\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%X%P: duplicate expression `%s' in version information\0A\00", align 1
@version_index = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_register_vers_node(i8* %0, %struct.bfd_elf_version_tree* %1, %struct.bfd_elf_version_deps* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfd_elf_version_tree*, align 8
  %6 = alloca %struct.bfd_elf_version_deps*, align 8
  %7 = alloca %struct.bfd_elf_version_tree*, align 8
  %8 = alloca %struct.bfd_elf_version_tree**, align 8
  %9 = alloca %struct.bfd_elf_version_expr*, align 8
  %10 = alloca %struct.bfd_elf_version_expr*, align 8
  %11 = alloca %struct.bfd_elf_version_expr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.bfd_elf_version_tree* %1, %struct.bfd_elf_version_tree** %5, align 8
  store %struct.bfd_elf_version_deps* %2, %struct.bfd_elf_version_deps** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %15

15:                                               ; preds = %14, %3
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  %23 = icmp ne %struct.bfd_elf_version_tree* %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  %26 = icmp ne %struct.bfd_elf_version_tree* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  %29 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %27, %21
  %36 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (i32, ...) @einfo(i32 %36)
  %38 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %39 = call i32 @free(%struct.bfd_elf_version_tree* %38)
  br label %335

40:                                               ; preds = %27, %24
  %41 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  store %struct.bfd_elf_version_tree* %41, %struct.bfd_elf_version_tree** %7, align 8
  br label %42

42:                                               ; preds = %57, %40
  %43 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %44 = icmp ne %struct.bfd_elf_version_tree* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %47 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call i64 @strcmp(i8* %48, i8* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 (i32, ...) @einfo(i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %45
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %59 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %58, i32 0, i32 1
  %60 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %59, align 8
  store %struct.bfd_elf_version_tree* %60, %struct.bfd_elf_version_tree** %7, align 8
  br label %42

61:                                               ; preds = %42
  %62 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %63 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %62, i32 0, i32 4
  %64 = call i32 @lang_finalize_version_expr_head(%struct.TYPE_2__* %63)
  %65 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %66 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %65, i32 0, i32 5
  %67 = call i32 @lang_finalize_version_expr_head(%struct.TYPE_2__* %66)
  %68 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %69 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %70, align 8
  store %struct.bfd_elf_version_expr* %71, %struct.bfd_elf_version_expr** %9, align 8
  br label %72

72:                                               ; preds = %180, %61
  %73 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %74 = icmp ne %struct.bfd_elf_version_expr* %73, null
  br i1 %74, label %75, label %184

75:                                               ; preds = %72
  %76 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  store %struct.bfd_elf_version_tree* %76, %struct.bfd_elf_version_tree** %7, align 8
  br label %77

77:                                               ; preds = %175, %75
  %78 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %79 = icmp ne %struct.bfd_elf_version_tree* %78, null
  br i1 %79, label %80, label %179

80:                                               ; preds = %77
  %81 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %82 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %131

86:                                               ; preds = %80
  %87 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %88 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %131

91:                                               ; preds = %86
  %92 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %93 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %97 = call %struct.bfd_elf_version_expr* @htab_find(i64 %95, %struct.bfd_elf_version_expr* %96)
  store %struct.bfd_elf_version_expr* %97, %struct.bfd_elf_version_expr** %10, align 8
  br label %98

98:                                               ; preds = %126, %91
  %99 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %100 = icmp ne %struct.bfd_elf_version_expr* %99, null
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %103 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %106 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = call i64 @strcmp(i8* %104, i8* %107)
  %109 = icmp eq i64 %108, 0
  br label %110

110:                                              ; preds = %101, %98
  %111 = phi i1 [ false, %98 ], [ %109, %101 ]
  br i1 %111, label %112, label %130

112:                                              ; preds = %110
  %113 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %114 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %117 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %115, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %122 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %123 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 (i32, ...) @einfo(i32 %121, i8* %124)
  br label %126

126:                                              ; preds = %120, %112
  %127 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %128 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %127, i32 0, i32 3
  %129 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %128, align 8
  store %struct.bfd_elf_version_expr* %129, %struct.bfd_elf_version_expr** %10, align 8
  br label %98

130:                                              ; preds = %110
  br label %174

131:                                              ; preds = %86, %80
  %132 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %133 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %173, label %136

136:                                              ; preds = %131
  %137 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %138 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %139, align 8
  store %struct.bfd_elf_version_expr* %140, %struct.bfd_elf_version_expr** %10, align 8
  br label %141

141:                                              ; preds = %168, %136
  %142 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %143 = icmp ne %struct.bfd_elf_version_expr* %142, null
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %146 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %145, i32 0, i32 2
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %149 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i64 @strcmp(i8* %147, i8* %150)
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %167

153:                                              ; preds = %144
  %154 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %155 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %158 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %156, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %153
  %162 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %163 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %164 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i32, ...) @einfo(i32 %162, i8* %165)
  br label %167

167:                                              ; preds = %161, %153, %144
  br label %168

168:                                              ; preds = %167
  %169 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %10, align 8
  %170 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %169, i32 0, i32 3
  %171 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %170, align 8
  store %struct.bfd_elf_version_expr* %171, %struct.bfd_elf_version_expr** %10, align 8
  br label %141

172:                                              ; preds = %141
  br label %173

173:                                              ; preds = %172, %131
  br label %174

174:                                              ; preds = %173, %130
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %177 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %176, i32 0, i32 1
  %178 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %177, align 8
  store %struct.bfd_elf_version_tree* %178, %struct.bfd_elf_version_tree** %7, align 8
  br label %77

179:                                              ; preds = %77
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %182 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %181, i32 0, i32 3
  %183 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %182, align 8
  store %struct.bfd_elf_version_expr* %183, %struct.bfd_elf_version_expr** %9, align 8
  br label %72

184:                                              ; preds = %72
  %185 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %186 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %187, align 8
  store %struct.bfd_elf_version_expr* %188, %struct.bfd_elf_version_expr** %9, align 8
  br label %189

189:                                              ; preds = %297, %184
  %190 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %191 = icmp ne %struct.bfd_elf_version_expr* %190, null
  br i1 %191, label %192, label %301

192:                                              ; preds = %189
  %193 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** @lang_elf_version_info, align 8
  store %struct.bfd_elf_version_tree* %193, %struct.bfd_elf_version_tree** %7, align 8
  br label %194

194:                                              ; preds = %292, %192
  %195 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %196 = icmp ne %struct.bfd_elf_version_tree* %195, null
  br i1 %196, label %197, label %296

197:                                              ; preds = %194
  %198 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %199 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %198, i32 0, i32 4
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %248

203:                                              ; preds = %197
  %204 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %205 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %248

208:                                              ; preds = %203
  %209 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %210 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %214 = call %struct.bfd_elf_version_expr* @htab_find(i64 %212, %struct.bfd_elf_version_expr* %213)
  store %struct.bfd_elf_version_expr* %214, %struct.bfd_elf_version_expr** %11, align 8
  br label %215

215:                                              ; preds = %243, %208
  %216 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %217 = icmp ne %struct.bfd_elf_version_expr* %216, null
  br i1 %217, label %218, label %227

218:                                              ; preds = %215
  %219 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %220 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %223 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %222, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = call i64 @strcmp(i8* %221, i8* %224)
  %226 = icmp eq i64 %225, 0
  br label %227

227:                                              ; preds = %218, %215
  %228 = phi i1 [ false, %215 ], [ %226, %218 ]
  br i1 %228, label %229, label %247

229:                                              ; preds = %227
  %230 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %231 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %234 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %232, %235
  br i1 %236, label %237, label %243

237:                                              ; preds = %229
  %238 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %239 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %240 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 (i32, ...) @einfo(i32 %238, i8* %241)
  br label %243

243:                                              ; preds = %237, %229
  %244 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %245 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %244, i32 0, i32 3
  %246 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %245, align 8
  store %struct.bfd_elf_version_expr* %246, %struct.bfd_elf_version_expr** %11, align 8
  br label %215

247:                                              ; preds = %227
  br label %291

248:                                              ; preds = %203, %197
  %249 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %250 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %290, label %253

253:                                              ; preds = %248
  %254 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %255 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %254, i32 0, i32 4
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %256, align 8
  store %struct.bfd_elf_version_expr* %257, %struct.bfd_elf_version_expr** %11, align 8
  br label %258

258:                                              ; preds = %285, %253
  %259 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %260 = icmp ne %struct.bfd_elf_version_expr* %259, null
  br i1 %260, label %261, label %289

261:                                              ; preds = %258
  %262 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %263 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %266 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %265, i32 0, i32 2
  %267 = load i8*, i8** %266, align 8
  %268 = call i64 @strcmp(i8* %264, i8* %267)
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %284

270:                                              ; preds = %261
  %271 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %272 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %275 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %273, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %270
  %279 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %280 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %281 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = call i32 (i32, ...) @einfo(i32 %279, i8* %282)
  br label %284

284:                                              ; preds = %278, %270, %261
  br label %285

285:                                              ; preds = %284
  %286 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %11, align 8
  %287 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %286, i32 0, i32 3
  %288 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %287, align 8
  store %struct.bfd_elf_version_expr* %288, %struct.bfd_elf_version_expr** %11, align 8
  br label %258

289:                                              ; preds = %258
  br label %290

290:                                              ; preds = %289, %248
  br label %291

291:                                              ; preds = %290, %247
  br label %292

292:                                              ; preds = %291
  %293 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %7, align 8
  %294 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %293, i32 0, i32 1
  %295 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %294, align 8
  store %struct.bfd_elf_version_tree* %295, %struct.bfd_elf_version_tree** %7, align 8
  br label %194

296:                                              ; preds = %194
  br label %297

297:                                              ; preds = %296
  %298 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %9, align 8
  %299 = getelementptr inbounds %struct.bfd_elf_version_expr, %struct.bfd_elf_version_expr* %298, i32 0, i32 3
  %300 = load %struct.bfd_elf_version_expr*, %struct.bfd_elf_version_expr** %299, align 8
  store %struct.bfd_elf_version_expr* %300, %struct.bfd_elf_version_expr** %9, align 8
  br label %189

301:                                              ; preds = %189
  %302 = load %struct.bfd_elf_version_deps*, %struct.bfd_elf_version_deps** %6, align 8
  %303 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %304 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %303, i32 0, i32 3
  store %struct.bfd_elf_version_deps* %302, %struct.bfd_elf_version_deps** %304, align 8
  %305 = load i8*, i8** %4, align 8
  %306 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %307 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %306, i32 0, i32 0
  store i8* %305, i8** %307, align 8
  %308 = load i8*, i8** %4, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 0
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %301
  %314 = load i64, i64* @version_index, align 8
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* @version_index, align 8
  %316 = load i64, i64* @version_index, align 8
  %317 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %318 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %317, i32 0, i32 2
  store i64 %316, i64* %318, align 8
  br label %322

319:                                              ; preds = %301
  %320 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %321 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %320, i32 0, i32 2
  store i64 0, i64* %321, align 8
  br label %322

322:                                              ; preds = %319, %313
  store %struct.bfd_elf_version_tree** @lang_elf_version_info, %struct.bfd_elf_version_tree*** %8, align 8
  br label %323

323:                                              ; preds = %328, %322
  %324 = load %struct.bfd_elf_version_tree**, %struct.bfd_elf_version_tree*** %8, align 8
  %325 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %324, align 8
  %326 = icmp ne %struct.bfd_elf_version_tree* %325, null
  br i1 %326, label %327, label %332

327:                                              ; preds = %323
  br label %328

328:                                              ; preds = %327
  %329 = load %struct.bfd_elf_version_tree**, %struct.bfd_elf_version_tree*** %8, align 8
  %330 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %329, align 8
  %331 = getelementptr inbounds %struct.bfd_elf_version_tree, %struct.bfd_elf_version_tree* %330, i32 0, i32 1
  store %struct.bfd_elf_version_tree** %331, %struct.bfd_elf_version_tree*** %8, align 8
  br label %323

332:                                              ; preds = %323
  %333 = load %struct.bfd_elf_version_tree*, %struct.bfd_elf_version_tree** %5, align 8
  %334 = load %struct.bfd_elf_version_tree**, %struct.bfd_elf_version_tree*** %8, align 8
  store %struct.bfd_elf_version_tree* %333, %struct.bfd_elf_version_tree** %334, align 8
  br label %335

335:                                              ; preds = %332, %35
  ret void
}

declare dso_local i32 @einfo(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free(%struct.bfd_elf_version_tree*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @lang_finalize_version_expr_head(%struct.TYPE_2__*) #1

declare dso_local %struct.bfd_elf_version_expr* @htab_find(i64, %struct.bfd_elf_version_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
