; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_gomp_team_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libgomp/extr_team.c_gomp_team_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gomp_thread = type { void (i8*)*, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i64, %struct.gomp_work_share*, %struct.gomp_team* }
%struct.gomp_work_share = type { i32 }
%struct.gomp_team = type { i32, i32**, %struct.TYPE_3__ }
%struct.gomp_thread_start_data = type { void (i8*)*, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, %struct.gomp_work_share*, %struct.gomp_team* }

@gomp_threads_used = common dso_local global i32 0, align 4
@gomp_threads_dock = common dso_local global i32 0, align 4
@gomp_threads = common dso_local global %struct.gomp_thread** null, align 8
@gomp_threads_size = common dso_local global i32 0, align 4
@gomp_thread_attr = common dso_local global i32 0, align 4
@gomp_cpu_affinity = common dso_local global i32* null, align 8
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@gomp_thread_start = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Thread creation failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gomp_team_start(void (i8*)* %0, i8* %1, i32 %2, %struct.gomp_work_share* %3) #0 {
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gomp_work_share*, align 8
  %9 = alloca %struct.gomp_thread_start_data*, align 8
  %10 = alloca %struct.gomp_thread*, align 8
  %11 = alloca %struct.gomp_thread*, align 8
  %12 = alloca %struct.gomp_team*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store void (i8*)* %0, void (i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.gomp_work_share* %3, %struct.gomp_work_share** %8, align 8
  store i32 0, i32* %16, align 4
  %22 = call %struct.gomp_thread* (...) @gomp_thread()
  store %struct.gomp_thread* %22, %struct.gomp_thread** %10, align 8
  %23 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %24 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load %struct.gomp_team*, %struct.gomp_team** %25, align 8
  %27 = icmp ne %struct.gomp_team* %26, null
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %31 = call %struct.gomp_team* @new_team(i32 %29, %struct.gomp_work_share* %30)
  store %struct.gomp_team* %31, %struct.gomp_team** %12, align 8
  %32 = load %struct.gomp_team*, %struct.gomp_team** %12, align 8
  %33 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %32, i32 0, i32 2
  %34 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %35 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %34, i32 0, i32 3
  %36 = bitcast %struct.TYPE_3__* %33 to i8*
  %37 = bitcast %struct.TYPE_3__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 40, i1 false)
  %38 = load %struct.gomp_team*, %struct.gomp_team** %12, align 8
  %39 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %40 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 4
  store %struct.gomp_team* %38, %struct.gomp_team** %41, align 8
  %42 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %43 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %44 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store %struct.gomp_work_share* %42, %struct.gomp_work_share** %45, align 8
  %46 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %47 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %50 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.gomp_thread*, %struct.gomp_thread** %10, align 8
  %53 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %4
  br label %242

58:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %145, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @gomp_threads_used, align 4
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ule i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %15, align 4
  br label %79

68:                                               ; preds = %61
  %69 = load i32, i32* %16, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @gomp_barrier_init(i32* @gomp_threads_dock, i32 %72)
  br label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @gomp_barrier_reinit(i32* @gomp_threads_dock, i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* @gomp_threads_used, align 4
  br label %81

81:                                               ; preds = %123, %79
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %126

85:                                               ; preds = %81
  %86 = load %struct.gomp_thread**, %struct.gomp_thread*** @gomp_threads, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.gomp_thread*, %struct.gomp_thread** %86, i64 %88
  %90 = load %struct.gomp_thread*, %struct.gomp_thread** %89, align 8
  store %struct.gomp_thread* %90, %struct.gomp_thread** %11, align 8
  %91 = load %struct.gomp_team*, %struct.gomp_team** %12, align 8
  %92 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %93 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 4
  store %struct.gomp_team* %91, %struct.gomp_team** %94, align 8
  %95 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %96 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %97 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store %struct.gomp_work_share* %95, %struct.gomp_work_share** %98, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %101 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %104 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %107 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  %109 = load void (i8*)*, void (i8*)** %5, align 8
  %110 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %111 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %110, i32 0, i32 0
  store void (i8*)* %109, void (i8*)** %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %114 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.gomp_thread*, %struct.gomp_thread** %11, align 8
  %116 = getelementptr inbounds %struct.gomp_thread, %struct.gomp_thread* %115, i32 0, i32 1
  %117 = load %struct.gomp_team*, %struct.gomp_team** %12, align 8
  %118 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  store i32* %116, i32** %122, align 8
  br label %123

123:                                              ; preds = %85
  %124 = load i32, i32* %14, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %14, align 4
  br label %81

126:                                              ; preds = %81
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  br label %226

131:                                              ; preds = %126
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @gomp_threads_size, align 4
  %134 = icmp uge i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  %137 = add i32 %136, 1
  store i32 %137, i32* @gomp_threads_size, align 4
  %138 = load %struct.gomp_thread**, %struct.gomp_thread*** @gomp_threads, align 8
  %139 = load i32, i32* @gomp_threads_size, align 4
  %140 = zext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = call %struct.gomp_thread** @gomp_realloc(%struct.gomp_thread** %138, i32 %142)
  store %struct.gomp_thread** %143, %struct.gomp_thread*** @gomp_threads, align 8
  br label %144

144:                                              ; preds = %135, %131
  br label %145

145:                                              ; preds = %144, %58
  store i32* @gomp_thread_attr, i32** %18, align 8
  %146 = load i32*, i32** @gomp_cpu_affinity, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %158

148:                                              ; preds = %145
  %149 = call i32 @pthread_attr_init(i32* %17)
  %150 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %151 = call i32 @pthread_attr_setdetachstate(i32* %17, i32 %150)
  %152 = call i32 @pthread_attr_getstacksize(i32* @gomp_thread_attr, i64* %19)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = load i64, i64* %19, align 8
  %156 = call i32 @pthread_attr_setstacksize(i32* %17, i64 %155)
  br label %157

157:                                              ; preds = %154, %148
  store i32* %17, i32** %18, align 8
  br label %158

158:                                              ; preds = %157, %145
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %14, align 4
  %161 = sub i32 %159, %160
  %162 = zext i32 %161 to i64
  %163 = mul i64 64, %162
  %164 = trunc i64 %163 to i32
  %165 = call %struct.gomp_thread_start_data* @gomp_alloca(i32 %164)
  store %struct.gomp_thread_start_data* %165, %struct.gomp_thread_start_data** %9, align 8
  br label %166

166:                                              ; preds = %215, %158
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %7, align 4
  %169 = icmp ult i32 %167, %168
  br i1 %169, label %170, label %220

170:                                              ; preds = %166
  %171 = load %struct.gomp_team*, %struct.gomp_team** %12, align 8
  %172 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %173 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  store %struct.gomp_team* %171, %struct.gomp_team** %174, align 8
  %175 = load %struct.gomp_work_share*, %struct.gomp_work_share** %8, align 8
  %176 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %177 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  store %struct.gomp_work_share* %175, %struct.gomp_work_share** %178, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %181 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %180, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  store i32 %179, i32* %182, align 8
  %183 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %184 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %183, i32 0, i32 3
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  %186 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %187 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i64 0, i64* %188, align 8
  %189 = load void (i8*)*, void (i8*)** %5, align 8
  %190 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %191 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %190, i32 0, i32 0
  store void (i8*)* %189, void (i8*)** %191, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %194 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %193, i32 0, i32 2
  store i8* %192, i8** %194, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %197 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 8
  %198 = load i32*, i32** @gomp_cpu_affinity, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %170
  %201 = load i32*, i32** %18, align 8
  %202 = call i32 @gomp_init_thread_affinity(i32* %201)
  br label %203

203:                                              ; preds = %200, %170
  %204 = load i32*, i32** %18, align 8
  %205 = load i32, i32* @gomp_thread_start, align 4
  %206 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %207 = call i32 @pthread_create(i32* %20, i32* %204, i32 %205, %struct.gomp_thread_start_data* %206)
  store i32 %207, i32* %21, align 4
  %208 = load i32, i32* %21, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %203
  %211 = load i32, i32* %21, align 4
  %212 = call i32 @strerror(i32 %211)
  %213 = call i32 @gomp_fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %210, %203
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %14, align 4
  %217 = add i32 %216, 1
  store i32 %217, i32* %14, align 4
  %218 = load %struct.gomp_thread_start_data*, %struct.gomp_thread_start_data** %9, align 8
  %219 = getelementptr inbounds %struct.gomp_thread_start_data, %struct.gomp_thread_start_data* %218, i32 1
  store %struct.gomp_thread_start_data* %219, %struct.gomp_thread_start_data** %9, align 8
  br label %166

220:                                              ; preds = %166
  %221 = load i32*, i32** @gomp_cpu_affinity, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call i32 @pthread_attr_destroy(i32* %17)
  br label %225

225:                                              ; preds = %223, %220
  br label %226

226:                                              ; preds = %225, %130
  %227 = load i32, i32* %13, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.gomp_team*, %struct.gomp_team** %12, align 8
  %231 = getelementptr inbounds %struct.gomp_team, %struct.gomp_team* %230, i32 0, i32 0
  br label %233

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232, %229
  %234 = phi i32* [ %231, %229 ], [ @gomp_threads_dock, %232 ]
  %235 = call i32 @gomp_barrier_wait(i32* %234)
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %16, align 4
  %238 = icmp ult i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* %7, align 4
  %241 = call i32 @gomp_barrier_reinit(i32* @gomp_threads_dock, i32 %240)
  br label %242

242:                                              ; preds = %57, %239, %233
  ret void
}

declare dso_local %struct.gomp_thread* @gomp_thread(...) #1

declare dso_local %struct.gomp_team* @new_team(i32, %struct.gomp_work_share*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gomp_barrier_init(i32*, i32) #1

declare dso_local i32 @gomp_barrier_reinit(i32*, i32) #1

declare dso_local %struct.gomp_thread** @gomp_realloc(%struct.gomp_thread**, i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare dso_local i32 @pthread_attr_getstacksize(i32*, i64*) #1

declare dso_local i32 @pthread_attr_setstacksize(i32*, i64) #1

declare dso_local %struct.gomp_thread_start_data* @gomp_alloca(i32) #1

declare dso_local i32 @gomp_init_thread_affinity(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.gomp_thread_start_data*) #1

declare dso_local i32 @gomp_fatal(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @gomp_barrier_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
