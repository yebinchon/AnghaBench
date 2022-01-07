; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_am_unmounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_am_unmounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_21__*, i32*)*, %struct.TYPE_21__* (%struct.TYPE_21__*, i8*, i32*, i32)*, i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)* }
%struct.TYPE_21__ = type { i8*, i32, i32*, i32, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_18__, i64 }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, i8*, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i64, i32, i32 }

@foreground = common dso_local global i32 0, align 4
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"am_unmounted: illegal use in background (%s)\00", align 1
@AMQ_UMNT_OK = common dso_local global i32 0, align 4
@amfs_link_ops = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MFF_MKMNT = common dso_local global i32 0, align 4
@AMF_REMOUNT = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"removing mountpoint directory '%s'\00", align 1
@NFDIR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"am_unmounted: remounting %s\00", align 1
@VLOOK_CREATE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"am_unmounted: could not remount %s: %m\00", align 1
@AMQ_UMNT_FAILED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AMF_AUTOFS = common dso_local global i32 0, align 4
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @am_unmounted(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %3, align 8
  %14 = load i32, i32* @foreground, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @XLOG_FATAL, align 4
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @plog(i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = load i32, i32* @AMQ_UMNT_OK, align 4
  %24 = call i32 @notify_child(%struct.TYPE_21__* %22, i32 %23, i32 0, i32 0)
  br label %224

25:                                               ; preds = %1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_20__*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  %37 = load i32 (%struct.TYPE_20__*)*, i32 (%struct.TYPE_20__*)** %36, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %39 = call i32 %37(%struct.TYPE_20__* %38)
  br label %40

40:                                               ; preds = %32, %25
  %41 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = icmp ne %struct.TYPE_17__* %48, @amfs_link_ops
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_20__*)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @amfs_link_ops, i32 0, i32 2), align 8
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = call i32 %51(%struct.TYPE_21__* %52, %struct.TYPE_20__* %53)
  br label %55

55:                                               ; preds = %50, %45, %40
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MFF_MKMNT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %55
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %90

67:                                               ; preds = %62
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @AMF_REMOUNT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @XLOG_INFO, align 4
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @plog(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @rmdirs(i8* %82)
  %84 = load i32, i32* @MFF_MKMNT, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %74, %67, %62, %55
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = icmp ne %struct.TYPE_21__* %93, null
  br i1 %94, label %95, label %110

95:                                               ; preds = %90
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @NFDIR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %95
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 5
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %102, %95, %90
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = icmp ne %struct.TYPE_21__* %113, null
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 5
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 4
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = icmp ne %struct.TYPE_20__* %122, null
  br i1 %123, label %124, label %131

124:                                              ; preds = %115
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 6
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 1
  %130 = call i32 @clocktime(i32* %129)
  br label %131

131:                                              ; preds = %124, %115, %110
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %133, align 8
  %135 = icmp ne %struct.TYPE_21__* %134, null
  br i1 %135, label %136, label %212

136:                                              ; preds = %131
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @AMF_REMOUNT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %212

143:                                              ; preds = %136
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i8* @xstrdup(i8* %146)
  store i8* %147, i8** %4, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %149, align 8
  store %struct.TYPE_21__* %150, %struct.TYPE_21__** %5, align 8
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 4
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %154, align 8
  store %struct.TYPE_20__* %155, %struct.TYPE_20__** %6, align 8
  store i32 0, i32* %8, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  store i32 %160, i32* %163, align 4
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 -1, i32* %167, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %169 = call i32 @free_map(%struct.TYPE_21__* %168)
  %170 = load i32, i32* @XLOG_INFO, align 4
  %171 = load i8*, i8** %4, align 8
  %172 = call i32 @plog(i32 %170, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %171)
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_21__* (%struct.TYPE_21__*, i8*, i32*, i32)*, %struct.TYPE_21__* (%struct.TYPE_21__*, i8*, i32*, i32)** %176, align 8
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %179 = load i8*, i8** %4, align 8
  %180 = load i32, i32* @VLOOK_CREATE, align 4
  %181 = call %struct.TYPE_21__* %177(%struct.TYPE_21__* %178, i8* %179, i32* %8, i32 %180)
  store %struct.TYPE_21__* %181, %struct.TYPE_21__** %2, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %183 = icmp ne %struct.TYPE_21__* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %143
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %188, i32 0, i32 3
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  %192 = load i32 (%struct.TYPE_21__*, i32*)*, i32 (%struct.TYPE_21__*, i32*)** %191, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %194 = call i32 %192(%struct.TYPE_21__* %193, i32* %8)
  br label %195

195:                                              ; preds = %187, %184, %143
  %196 = load i32, i32* %8, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = load i32, i32* %8, align 4
  store i32 %199, i32* @errno, align 4
  %200 = load i32, i32* @XLOG_ERROR, align 4
  %201 = load i8*, i8** %4, align 8
  %202 = call i32 @plog(i32 %200, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %201)
  %203 = load i32, i32* @AMQ_UMNT_OK, align 4
  %204 = call i32 @notify_child(%struct.TYPE_21__* %7, i32 %203, i32 0, i32 0)
  br label %209

205:                                              ; preds = %195
  %206 = load i32, i32* @AMQ_UMNT_FAILED, align 4
  %207 = load i32, i32* @EBUSY, align 4
  %208 = call i32 @notify_child(%struct.TYPE_21__* %7, i32 %206, i32 %207, i32 0)
  br label %209

209:                                              ; preds = %205, %198
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 @XFREE(i8* %210)
  br label %224

212:                                              ; preds = %136, %131
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %214 = load i32, i32* @AMQ_UMNT_OK, align 4
  %215 = call i32 @notify_child(%struct.TYPE_21__* %213, i32 %214, i32 0, i32 0)
  %216 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %212
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %222 = call i32 @free_map(%struct.TYPE_21__* %221)
  br label %223

223:                                              ; preds = %220, %212
  br label %224

224:                                              ; preds = %16, %223, %209
  ret void
}

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i32 @notify_child(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @rmdirs(i8*) #1

declare dso_local i32 @clocktime(i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free_map(%struct.TYPE_21__*) #1

declare dso_local i32 @XFREE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
