; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_find_extern_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_protoize.c_find_extern_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, %struct.TYPE_9__*, %struct.TYPE_11__*, i64, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [44 x i8] c"%s: conflicting extern definitions of '%s'\0A\00", align 1
@pname = common dso_local global i8* null, align 8
@quiet_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: declarations of '%s' will not be converted\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"%s: conflict list for '%s' follows:\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s:     %s(%d): %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"%s: warning: using formals list from %s(%d) for function '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c");\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"%s: %d: '%s' used but missing from SYSCALLS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, %struct.TYPE_10__*)* @find_extern_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @find_extern_def(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %6, align 8
  br label %13

13:                                               ; preds = %37, %2
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %28, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = icmp eq %struct.TYPE_11__* %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %3, align 8
  br label %272

36:                                               ; preds = %26, %21, %16
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** %6, align 8
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %42, %struct.TYPE_10__** %6, align 8
  br label %43

43:                                               ; preds = %146, %41
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %150

46:                                               ; preds = %43
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %145

51:                                               ; preds = %46
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %145, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %60, %struct.TYPE_10__** %7, align 8
  br label %144

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = call i64 @is_syscalls_file(%struct.TYPE_11__* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %146

68:                                               ; preds = %61
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = call i64 @is_syscalls_file(%struct.TYPE_11__* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %7, align 8
  br label %146

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %122, label %79

79:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  %80 = load i8*, i8** @pname, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %80, i8* %85)
  %87 = load i32, i32* @quiet_flag, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %121, label %89

89:                                               ; preds = %79
  %90 = load i8*, i8** @pname, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %90, i8* %95)
  %97 = load i8*, i8** @pname, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %97, i8* %102)
  %104 = load i32, i32* @stderr, align 4
  %105 = load i8*, i8** @pname, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i8* @shortpath(i32* null, i8* %112)
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @fprintf(i32 %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %105, i8* %113, i32 %116, i8* %119)
  br label %121

121:                                              ; preds = %89, %79
  br label %122

122:                                              ; preds = %121, %76
  %123 = load i32, i32* @quiet_flag, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* @stderr, align 4
  %127 = load i8*, i8** @pname, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i8* @shortpath(i32* null, i8* %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %127, i8* %135, i32 %138, i8* %141)
  br label %143

143:                                              ; preds = %125, %122
  br label %144

144:                                              ; preds = %143, %59
  br label %145

145:                                              ; preds = %144, %51, %46
  br label %146

146:                                              ; preds = %145, %74, %67
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 7
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  store %struct.TYPE_10__* %149, %struct.TYPE_10__** %6, align 8
  br label %43

150:                                              ; preds = %43
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %272

154:                                              ; preds = %150
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = icmp ne %struct.TYPE_10__* %155, null
  br i1 %156, label %270, label %157

157:                                              ; preds = %154
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %158, %struct.TYPE_10__** %6, align 8
  br label %159

159:                                              ; preds = %202, %157
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %161 = icmp ne %struct.TYPE_10__* %160, null
  br i1 %161, label %162, label %206

162:                                              ; preds = %159
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 6
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %201, label %167

167:                                              ; preds = %162
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %201, label %172

172:                                              ; preds = %167
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %201

177:                                              ; preds = %172
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %178, %struct.TYPE_10__** %7, align 8
  %179 = load i32, i32* @quiet_flag, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %177
  %182 = load i8*, i8** @pname, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @shortpath(i32* null, i8* %189)
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.4, i64 0, i64 0), i8* %182, i8* %190, i32 %193, i8* %198)
  br label %200

200:                                              ; preds = %181, %177
  br label %206

201:                                              ; preds = %172, %167, %162
  br label %202

202:                                              ; preds = %201
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 7
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %204, align 8
  store %struct.TYPE_10__* %205, %struct.TYPE_10__** %6, align 8
  br label %159

206:                                              ; preds = %200, %159
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %208 = icmp ne %struct.TYPE_10__* %207, null
  br i1 %208, label %269, label %209

209:                                              ; preds = %206
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %9, align 8
  %217 = load i32, i32* @quiet_flag, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %268, label %219

219:                                              ; preds = %209
  %220 = load i8*, i8** %9, align 8
  %221 = call i64 @in_system_include_dir(i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %267

223:                                              ; preds = %219
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @strlen(i8* %226)
  %228 = add nsw i32 %227, 1
  %229 = call i8* @alloca(i32 %228)
  store i8* %229, i8** %10, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @strcpy(i8* %230, i8* %233)
  %235 = load i8*, i8** %10, align 8
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i8* @strstr(i8* %235, i8* %240)
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @strlen(i8* %246)
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %241, i64 %248
  %250 = getelementptr inbounds i8, i8* %249, i64 2
  store i8* %250, i8** %11, align 8
  %251 = load i8*, i8** %11, align 8
  %252 = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %252, i8** %11, align 8
  store i8 63, i8* %251, align 1
  %253 = load i8*, i8** %11, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %11, align 8
  store i8 63, i8* %253, align 1
  %255 = load i8*, i8** %11, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** %11, align 8
  store i8 63, i8* %255, align 1
  %257 = load i8*, i8** %11, align 8
  %258 = call i32 @strcpy(i8* %257, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %259 = load i8*, i8** %9, align 8
  %260 = call i8* @shortpath(i32* null, i8* %259)
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i8*, i8** %10, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 7
  %266 = call i32 (i8*, i8*, ...) @notice(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %260, i32 %263, i8* %265)
  br label %267

267:                                              ; preds = %223, %219
  br label %268

268:                                              ; preds = %267, %209
  br label %269

269:                                              ; preds = %268, %206
  br label %270

270:                                              ; preds = %269, %154
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %271, %struct.TYPE_10__** %3, align 8
  br label %272

272:                                              ; preds = %270, %153, %34
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %273
}

declare dso_local i64 @is_syscalls_file(%struct.TYPE_11__*) #1

declare dso_local i32 @notice(i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i8* @shortpath(i32*, i8*) #1

declare dso_local i64 @in_system_include_dir(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
