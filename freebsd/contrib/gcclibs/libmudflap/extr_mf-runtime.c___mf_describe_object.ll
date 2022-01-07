; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_describe_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libmudflap/extr_mf-runtime.c___mf_describe_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i8*, i64, i32, i8**, i32, i8**, %struct.TYPE_7__, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__, i64, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@__mf_describe_object.epoch = internal global i32 0, align 4
@__mf_opts = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mudflap %sobject %p: name=`%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dead \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [119 x i8] c"mudflap %sobject %p: name=`%s'\0Abounds=[%p,%p] size=%lu area=%s check=%ur/%uw liveness=%u%s\0Aalloc time=%lu.%06lu pc=%p\0A\00", align 1
@__MF_TYPE_NOACCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"no-access\00", align 1
@__MF_TYPE_HEAP = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"heap\00", align 1
@__MF_TYPE_HEAP_I = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"heap-init\00", align 1
@__MF_TYPE_STACK = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"stack\00", align 1
@__MF_TYPE_STATIC = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@__MF_TYPE_GUESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"guess\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" watching\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"      %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"dealloc time=%lu.%06lu pc=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @__mf_describe_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mf_describe_object(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = icmp eq %struct.TYPE_8__* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @__mf_describe_object.epoch, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* @__mf_describe_object.epoch, align 4
  br label %233

10:                                               ; preds = %1
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @__mf_opts, i32 0, i32 2), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %10
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @__mf_describe_object.epoch, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load i32, i32* @stderr, align 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %28 = bitcast %struct.TYPE_8__* %27 to i8*
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %19
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %37 ]
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %28, i8* %39)
  br label %233

41:                                               ; preds = %13, %10
  %42 = load i32, i32* @__mf_describe_object.epoch, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 10
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = bitcast %struct.TYPE_8__* %53 to i8*
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  br label %64

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i8* [ %62, %59 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %63 ]
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 12
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 12
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 11
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = add nsw i64 %80, 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @__MF_TYPE_NOACCESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %64
  br label %132

88:                                               ; preds = %64
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @__MF_TYPE_HEAP, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %130

95:                                               ; preds = %88
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @__MF_TYPE_HEAP_I, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %128

102:                                              ; preds = %95
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @__MF_TYPE_STACK, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %126

109:                                              ; preds = %102
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @__MF_TYPE_STATIC, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %124

116:                                              ; preds = %109
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @__MF_TYPE_GUESS, align 8
  %121 = icmp eq i64 %119, %120
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)
  br label %124

124:                                              ; preds = %116, %115
  %125 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), %115 ], [ %123, %116 ]
  br label %126

126:                                              ; preds = %124, %108
  %127 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %108 ], [ %125, %124 ]
  br label %128

128:                                              ; preds = %126, %101
  %129 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %101 ], [ %127, %126 ]
  br label %130

130:                                              ; preds = %128, %94
  %131 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %94 ], [ %129, %128 ]
  br label %132

132:                                              ; preds = %130, %87
  %133 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %87 ], [ %131, %130 ]
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 19
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 18
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 17
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 16
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 15
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 15
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 14
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.3, i64 0, i64 0), i8* %52, i8* %54, i8* %65, i8* %69, i8* %73, i64 %81, i8* %133, i32 %136, i32 %139, i32 %142, i8* %148, i32 %152, i32 %156, i8* %160)
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @__mf_opts, i32 0, i32 0), align 8
  %163 = icmp sgt i64 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %181, %164
  %166 = load i32, i32* %3, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = icmp ult i32 %166, %169
  br i1 %170, label %171, label %184

171:                                              ; preds = %165
  %172 = load i32, i32* @stderr, align 4
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 4
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %3, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %179)
  br label %181

181:                                              ; preds = %171
  %182 = load i32, i32* %3, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %165

184:                                              ; preds = %165
  br label %185

185:                                              ; preds = %184, %132
  %186 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @__mf_opts, i32 0, i32 1), align 8
  %187 = icmp sgt i64 %186, 0
  br i1 %187, label %188, label %233

188:                                              ; preds = %185
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 10
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %232

193:                                              ; preds = %188
  %194 = load i32, i32* @stderr, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 7
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 7
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 9
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 (i32, i8*, ...) @fprintf(i32 %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %198, i32 %202, i8* %206)
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @__mf_opts, i32 0, i32 0), align 8
  %209 = icmp sgt i64 %208, 0
  br i1 %209, label %210, label %231

210:                                              ; preds = %193
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %227, %210
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 8
  %216 = icmp ult i32 %212, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %211
  %218 = load i32, i32* @stderr, align 4
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 6
  %221 = load i8**, i8*** %220, align 8
  %222 = load i32, i32* %4, align 4
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds i8*, i8** %221, i64 %223
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %225)
  br label %227

227:                                              ; preds = %217
  %228 = load i32, i32* %4, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %4, align 4
  br label %211

230:                                              ; preds = %211
  br label %231

231:                                              ; preds = %230, %193
  br label %232

232:                                              ; preds = %231, %188
  br label %233

233:                                              ; preds = %7, %38, %232, %185
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
