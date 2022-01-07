; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_dprog_addevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/lockstat/extr_lockstat.c_dprog_addevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8, i8*, i32* }

@g_event_info = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"(uintptr_t)(curthread->td_oncpu << 16) + \0A\09    0x01000000 + curthread->td_pri_class\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"(uintptr_t)arg0\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"stringof(args[0]->lock_object.lo_name)\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"caller\00", align 1
@g_recsize = common dso_local global i64 0, align 8
@LS_HIST = common dso_local global i64 0, align 8
@g_tracing = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"\09stack(%d);\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c", stack(%d)\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@g_predicate = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"/%s/\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"self->ev%d[(uintptr_t)arg0]\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\09%s = timestamp;\0A\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"\09%s++;\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"/%s/\0A{\0A\09%s--;\0A}\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"timestamp -\0A\09    self->ev%d[(uintptr_t)arg0]\00", align 1
@g_ipredicate = common dso_local global i8* null, align 8
@g_min_duration = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"\09trace(%dULL);\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"\09trace(%s);\0A\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"\09@avg[%dULL, %s, %s%s] = avg(%s);\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\09@hist[%dULL, %s, %s%s] = quantize(%s);\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"\09self->ev%d[arg0] = 0;\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dprog_addevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dprog_addevent(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [80 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_event_info, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %208

24:                                               ; preds = %1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 8
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 73
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %32

31:                                               ; preds = %24
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i64, i64* @g_recsize, align 8
  %34 = load i64, i64* @LS_HIST, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %43, %36
  %38 = load i64, i64* @g_recsize, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i64 @LS_STACK(i32 %39)
  %41 = icmp sgt i64 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %37

46:                                               ; preds = %37
  %47 = load i64, i64* @g_tracing, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %51)
  br label %57

53:                                               ; preds = %46
  %54 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  br label %61

58:                                               ; preds = %32
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %57
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %128

66:                                               ; preds = %61
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32* %69)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @predicate_add(i8** %4, i8* %73, i8* null, i32 0)
  %75 = load i8*, i8** @g_predicate, align 8
  %76 = call i32 @predicate_add(i8** %4, i8* %75, i8* null, i32 0)
  %77 = load i8*, i8** %4, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i8*, i8** %4, align 8
  %81 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %79, %66
  %83 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %84 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i8, i8* %88, align 8
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 72
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %94 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %93)
  br label %98

95:                                               ; preds = %82
  %96 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %97 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %92
  %99 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %100 = call i32 @predicate_destroy(i8** %4)
  store i8* null, i8** %4, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i8, i8* %102, align 8
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 69
  br i1 %105, label %106, label %114

106:                                              ; preds = %98
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %109)
  %111 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %112 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %113 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %111, i8* %112)
  br label %114

114:                                              ; preds = %106, %98
  %115 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %116 = call i32 @predicate_add(i8** %4, i8* %115, i8* null, i32 0)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i8, i8* %118, align 8
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 72
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  %124 = load i32, i32* %2, align 4
  %125 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %122, %114
  %127 = getelementptr inbounds [80 x i8], [80 x i8]* %9, i64 0, i64 0
  store i8* %127, i8** %8, align 8
  br label %145

128:                                              ; preds = %61
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @predicate_add(i8** %4, i8* %131, i8* null, i32 0)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i8, i8* %134, align 8
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 73
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i8*, i8** @g_predicate, align 8
  %140 = call i32 @predicate_add(i8** %4, i8* %139, i8* null, i32 0)
  br label %144

141:                                              ; preds = %128
  %142 = load i8*, i8** @g_ipredicate, align 8
  %143 = call i32 @predicate_add(i8** %4, i8* %142, i8* null, i32 0)
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %126
  %146 = load i32*, i32** @g_min_duration, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @predicate_add(i8** %4, i8* %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %152, %145
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* %159)
  %161 = load i8*, i8** %4, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %156
  %164 = load i8*, i8** %4, align 8
  %165 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %156
  %167 = call i32 @predicate_destroy(i8** %4)
  %168 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %169 = load i64, i64* @g_tracing, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load i32, i32* %2, align 4
  %173 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %172)
  %174 = load i8*, i8** %6, align 8
  %175 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %174)
  %176 = load i8*, i8** %7, align 8
  %177 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %176)
  %178 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %179 = call i32 (i8*, ...) @dprog_add(i8* %178)
  br label %198

180:                                              ; preds = %166
  %181 = load i32, i32* %2, align 4
  %182 = load i8*, i8** %6, align 8
  %183 = load i8*, i8** %7, align 8
  %184 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 %181, i8* %182, i8* %183, i8* %184, i8* %185)
  %187 = load i64, i64* @g_recsize, align 8
  %188 = load i64, i64* @LS_HIST, align 8
  %189 = icmp sge i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %180
  %191 = load i32, i32* %2, align 4
  %192 = load i8*, i8** %6, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %191, i8* %192, i8* %193, i8* %194, i8* %195)
  br label %197

197:                                              ; preds = %190, %180
  br label %198

198:                                              ; preds = %197, %171
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32, i32* %2, align 4
  %205 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %198
  %207 = call i32 (i8*, ...) @dprog_add(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %208

208:                                              ; preds = %206, %23
  ret void
}

declare dso_local i64 @LS_STACK(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dprog_add(i8*, ...) #1

declare dso_local i32 @predicate_add(i8**, i8*, i8*, i32) #1

declare dso_local i32 @predicate_destroy(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
