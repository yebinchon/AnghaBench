; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_am_mounted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_am_mounted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32 }
%struct.TYPE_27__ = type { i32 (%struct.TYPE_24__*, %struct.TYPE_35__*)* }
%struct.TYPE_24__ = type { i32, i8*, %struct.TYPE_34__, %struct.TYPE_33__*, %struct.TYPE_29__, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_34__ = type { i64, i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__*, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32, i8*, %struct.TYPE_27__*, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_36__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@FS_DIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@FS_NOTIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"umount\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"nounmount\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"noumount\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"utimeout\00", align 1
@gopt = common dso_local global %struct.TYPE_25__ zeroinitializer, align 4
@AMF_NOTIMEOUT = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"%s set to never timeout\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s set to timeout in %d seconds\00", align 1
@NFLNK = common dso_local global i64 0, align 8
@amfs_link_ops = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@amd_stats = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@AMF_AUTOFS = common dso_local global i32 0, align 4
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @am_mounted(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_36__, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %6, i32 0, i32 7
  %8 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  store %struct.TYPE_35__* %10, %struct.TYPE_35__** %4, align 8
  %11 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %12 = load i32, i32* @TRUE, align 4
  %13 = call i32 @mf_mounted(%struct.TYPE_35__* %11, i32 %12)
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_33__*, %struct.TYPE_33__** %15, align 8
  %17 = icmp ne %struct.TYPE_33__* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %1
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_31__*, %struct.TYPE_31__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_30__*, %struct.TYPE_30__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FS_DIRECT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %18
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @str3cat(i32 %34, i32 %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %31, %18, %1
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FS_NOTIMEOUT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %102

56:                                               ; preds = %51
  %57 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %5, i32 0, i32 0
  store i64 %59, i64* %60, align 8
  %61 = call i64 @amu_hasmntopt(%struct.TYPE_36__* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = call i64 @amu_hasmntopt(%struct.TYPE_36__* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %56
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = call i64 @amu_hasmntopt(%struct.TYPE_36__* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = call i64 @amu_hasmntopt(%struct.TYPE_36__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %67
  store i32 1, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %70
  %75 = call i32 @hasmntval(%struct.TYPE_36__* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 4
  %78 = icmp eq i32 %75, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @gopt, i32 0, i32 0), align 4
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  br label %84

83:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %79
  %85 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 47
  br i1 %91, label %92, label %101

92:                                               ; preds = %84
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  store i32 1, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %92, %84
  br label %102

102:                                              ; preds = %101, %51
  %103 = load i32, i32* %3, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load i32, i32* @AMF_NOTIMEOUT, align 4
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @XLOG_INFO, align 4
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, i32, ...) @plog(i32 %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %114)
  br label %131

116:                                              ; preds = %102
  %117 = load i32, i32* @AMF_NOTIMEOUT, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store i32 %122, i32* %120, align 8
  %123 = load i32, i32* @XLOG_INFO, align 4
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, i32, ...) @plog(i32 %123, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %116, %105
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @NFLNK, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %131
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  br label %151

147:                                              ; preds = %138
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i8* [ %146, %143 ], [ %150, %147 ]
  %153 = call i32 @strlen(i8* %152)
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 2
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %151, %131
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %159, i32 0, i32 1
  %161 = call i32 @clocktime(i32* %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  store i32 %161, i32* %164, align 8
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %166 = call i32 @new_ttl(%struct.TYPE_24__* %165)
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 3
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %168, align 8
  %170 = icmp ne %struct.TYPE_33__* %169, null
  br i1 %170, label %171, label %190

171:                                              ; preds = %157
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_31__*, %struct.TYPE_31__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %177, align 8
  %179 = icmp ne %struct.TYPE_30__* %178, null
  br i1 %179, label %180, label %190

180:                                              ; preds = %171
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 0
  store i32 %184, i32* %189, align 8
  br label %190

190:                                              ; preds = %180, %171, %157
  %191 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %197, align 8
  %199 = icmp ne %struct.TYPE_27__* %198, @amfs_link_ops
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i32 (%struct.TYPE_24__*, %struct.TYPE_35__*)*, i32 (%struct.TYPE_24__*, %struct.TYPE_35__*)** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @amfs_link_ops, i32 0, i32 0), align 8
  %202 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %204 = call i32 %201(%struct.TYPE_24__* %202, %struct.TYPE_35__* %203)
  br label %205

205:                                              ; preds = %200, %195, %190
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %207 = call i32 @nfs_quick_reply(%struct.TYPE_24__* %206, i32 0)
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @amd_stats, i32 0, i32 0), align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @amd_stats, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @mf_mounted(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @str3cat(i32, i32, i8*, i8*) #1

declare dso_local i64 @amu_hasmntopt(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @hasmntval(%struct.TYPE_36__*, i8*) #1

declare dso_local i32 @plog(i32, i8*, i32, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @clocktime(i32*) #1

declare dso_local i32 @new_ttl(%struct.TYPE_24__*) #1

declare dso_local i32 @nfs_quick_reply(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
