; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_mntfs.c_free_mntfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_mntfs.c_free_mntfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__*, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"free_mntfs <%s> type %s mf_refc %d flags %x\00", align 1
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"IGNORING free_mntfs for <%s>: refc %d, flags %x (bug?)\00", align 1
@MFF_RSTKEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"IGNORING free_mntfs for <%s>: refc %d, flags %x (restarted)\00", align 1
@MFF_MOUNTED = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"%s%s%s %sed fstype %s from %s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unmount\00", align 1
@FS_DISCARD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Immediately discarding mntfs for %s\00", align 1
@MFF_RESTART = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Discarding remount hook for %s\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"Discarding last mntfs reference to %s fstype %s\00", align 1
@MFF_MOUNTING = common dso_local global i32 0, align 4
@MFF_UNMOUNTING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"mntfs reference for %s still active\00", align 1
@ALLOWED_MOUNT_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_mntfs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load i32, i32* @XLOG_ERROR, align 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i8*, i32, ...) @plog(i32 %27, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %35, i32 %38)
  br label %179

40:                                               ; preds = %1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MFF_RSTKEEP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load i32, i32* @XLOG_ERROR, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i8*, i32, ...) @plog(i32 %53, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i8* %58, i32 %61, i32 %64)
  br label %179

66:                                               ; preds = %45, %40
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %179

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MFF_MOUNTED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %72
  %80 = load i32, i32* @MFF_MOUNTED, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @strchr(i32 %88, i8 signext 32)
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @XLOG_INFO, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 6
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0)
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, i8*, i32, ...) @plog(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %96, i32 %99, i8* %103, i8* %109, i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %79, %72
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @FS_DISCARD, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %119
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = call i32 @discard_mntfs(%struct.TYPE_6__* %131)
  br label %178

133:                                              ; preds = %119
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MFF_RESTART, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %143)
  br label %155

145:                                              ; preds = %133
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 5
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %148, i32 %153)
  br label %155

155:                                              ; preds = %145, %140
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MFF_MOUNTED, align 4
  %160 = load i32, i32* @MFF_MOUNTING, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @MFF_UNMOUNTING, align 4
  %163 = or i32 %161, %162
  %164 = and i32 %158, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %155
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (i8*, i32, ...) @dlog(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %166, %155
  %172 = load i32, i32* @ALLOWED_MOUNT_TIME, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %174 = ptrtoint %struct.TYPE_6__* %173 to i32
  %175 = call i32 @timeout(i32 %172, i32 (%struct.TYPE_6__*)* @discard_mntfs, i32 %174)
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %171, %126
  br label %179

179:                                              ; preds = %26, %52, %178, %66
  ret void
}

declare dso_local i32 @dlog(i8*, i32, ...) #1

declare dso_local i32 @plog(i32, i8*, i8*, i32, ...) #1

declare dso_local i64 @strchr(i32, i8 signext) #1

declare dso_local i32 @discard_mntfs(%struct.TYPE_6__*) #1

declare dso_local i32 @timeout(i32, i32 (%struct.TYPE_6__*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
