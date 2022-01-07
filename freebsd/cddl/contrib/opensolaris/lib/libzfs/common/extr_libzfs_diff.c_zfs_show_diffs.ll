; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_zfs_show_diffs.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_diff.c_zfs_show_diffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64, i8*, i32, i32, i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"zfs diff failed\00", align 1
@errno = common dso_local global i64 0, align 8
@EZFS_PIPEFAILED = common dso_local global i32 0, align 4
@ZFS_DIFF_PARSEABLE = common dso_local global i32 0, align 4
@ZFS_DIFF_CLASSIFY = common dso_local global i32 0, align 4
@ZFS_DIFF_TIMESTAMP = common dso_local global i32 0, align 4
@differ = common dso_local global i32 0, align 4
@EZFS_THREADCREATEFAILED = common dso_local global i32 0, align 4
@ZFS_IOC_DIFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to obtain diffs\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [96 x i8] c"\0A   The sys_mount privilege or diff delegated permission is needed\0A   to execute the diff ioctl\00", align 1
@EXDEV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"\0A   Not an earlier snapshot from the same fs\00", align 1
@EPIPE = common dso_local global i64 0, align 8
@EZFS_DIFF = common dso_local global i32 0, align 4
@EZFS_DIFFDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_show_diffs(%struct.TYPE_12__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = bitcast %struct.TYPE_13__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 16, i1 false)
  %19 = bitcast %struct.TYPE_14__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 56, i1 false)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %21 = load i32, i32* @TEXT_DOMAIN, align 4
  %22 = call i8* @dgettext(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @snprintf(i8* %20, i32 1024, i8* %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @setup_differ_info(%struct.TYPE_12__* %24, i8* %25, i8* %26, %struct.TYPE_14__* %14)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = call i32 @teardown_differ_info(%struct.TYPE_14__* %14)
  store i32 -1, i32* %6, align 4
  br label %229

31:                                               ; preds = %5
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %33 = call i64 @pipe(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load i64, i64* @errno, align 8
  %40 = call i8* @strerror(i64 %39)
  %41 = call i32 @zfs_error_aux(%struct.TYPE_15__* %38, i8* %40)
  %42 = call i32 @teardown_differ_info(%struct.TYPE_14__* %14)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %44, align 8
  %46 = load i32, i32* @EZFS_PIPEFAILED, align 4
  %47 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %48 = call i32 @zfs_error(%struct.TYPE_15__* %45, i32 %46, i8* %47)
  store i32 %48, i32* %6, align 4
  br label %229

49:                                               ; preds = %31
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @ZFS_DIFF_PARSEABLE, align 4
  %52 = and i32 %50, %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @ZFS_DIFF_CLASSIFY, align 4
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ZFS_DIFF_TIMESTAMP, align 4
  %60 = and i32 %58, %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 4
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @differ, align 4
  %68 = call i64 @pthread_create(i32* %15, i32* null, i32 %67, %struct.TYPE_14__* %14)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %49
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = load i64, i64* @errno, align 8
  %75 = call i8* @strerror(i64 %74)
  %76 = call i32 @zfs_error_aux(%struct.TYPE_15__* %73, i8* %75)
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @close(i32 %81)
  %83 = call i32 @teardown_differ_info(%struct.TYPE_14__* %14)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = load i32, i32* @EZFS_THREADCREATEFAILED, align 4
  %88 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %89 = call i32 @zfs_error(%struct.TYPE_15__* %86, i32 %87, i8* %88)
  store i32 %89, i32* %6, align 4
  br label %229

90:                                               ; preds = %49
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 8
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @strlen(i32 %96)
  %98 = add nsw i64 %97, 1
  %99 = call i32 @strlcpy(i32 %92, i32 %94, i64 %98)
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 7
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @strlen(i32 %105)
  %107 = add nsw i64 %106, 1
  %108 = call i32 @strlcpy(i32 %101, i32 %103, i64 %107)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @ZFS_IOC_DIFF, align 4
  %118 = call i32 @ioctl(i32 %116, i32 %117, %struct.TYPE_13__* %12)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %203

121:                                              ; preds = %90
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %125 = call i32 @snprintf(i8* %122, i32 1024, i8* %124)
  %126 = load i64, i64* @errno, align 8
  %127 = load i64, i64* @EPERM, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %121
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = load i32, i32* @TEXT_DOMAIN, align 4
  %134 = call i8* @dgettext(i32 %133, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.2, i64 0, i64 0))
  %135 = call i32 @zfs_error_aux(%struct.TYPE_15__* %132, i8* %134)
  br label %164

136:                                              ; preds = %121
  %137 = load i64, i64* @errno, align 8
  %138 = load i64, i64* @EXDEV, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %147

140:                                              ; preds = %136
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = load i32, i32* @TEXT_DOMAIN, align 4
  %145 = call i8* @dgettext(i32 %144, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %146 = call i32 @zfs_error_aux(%struct.TYPE_15__* %143, i8* %145)
  br label %163

147:                                              ; preds = %136
  %148 = load i64, i64* @errno, align 8
  %149 = load i64, i64* @EPIPE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %151, %147
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %157, align 8
  %159 = load i64, i64* @errno, align 8
  %160 = call i8* @strerror(i64 %159)
  %161 = call i32 @zfs_error_aux(%struct.TYPE_15__* %158, i8* %160)
  br label %162

162:                                              ; preds = %155, %151
  br label %163

163:                                              ; preds = %162, %140
  br label %164

164:                                              ; preds = %163, %129
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @close(i32 %166)
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @pthread_cancel(i32 %168)
  %170 = load i32, i32* %15, align 4
  %171 = call i32 @pthread_join(i32 %170, i32* null)
  %172 = call i32 @teardown_differ_info(%struct.TYPE_14__* %14)
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %164
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @EPIPE, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %196

181:                                              ; preds = %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = call i8* @strerror(i64 %186)
  %188 = call i32 @zfs_error_aux(%struct.TYPE_15__* %184, i8* %187)
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %190, align 8
  %192 = load i32, i32* @EZFS_DIFF, align 4
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @zfs_error(%struct.TYPE_15__* %191, i32 %192, i8* %194)
  store i32 %195, i32* %6, align 4
  br label %229

196:                                              ; preds = %176, %164
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = load i32, i32* @EZFS_DIFFDATA, align 4
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %202 = call i32 @zfs_error(%struct.TYPE_15__* %199, i32 %200, i8* %201)
  store i32 %202, i32* %6, align 4
  br label %229

203:                                              ; preds = %90
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @close(i32 %205)
  %207 = load i32, i32* %15, align 4
  %208 = call i32 @pthread_join(i32 %207, i32* null)
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %203
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = call i8* @strerror(i64 %217)
  %219 = call i32 @zfs_error_aux(%struct.TYPE_15__* %215, i8* %218)
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %221, align 8
  %223 = load i32, i32* @EZFS_DIFF, align 4
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 6
  %225 = load i8*, i8** %224, align 8
  %226 = call i32 @zfs_error(%struct.TYPE_15__* %222, i32 %223, i8* %225)
  store i32 %226, i32* %6, align 4
  br label %229

227:                                              ; preds = %203
  %228 = call i32 @teardown_differ_info(%struct.TYPE_14__* %14)
  store i32 0, i32* %6, align 4
  br label %229

229:                                              ; preds = %227, %212, %196, %181, %70, %35, %29
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @setup_differ_info(%struct.TYPE_12__*, i8*, i8*, %struct.TYPE_14__*) #2

declare dso_local i32 @teardown_differ_info(%struct.TYPE_14__*) #2

declare dso_local i64 @pipe(i32*) #2

declare dso_local i32 @zfs_error_aux(%struct.TYPE_15__*, i8*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i32 @zfs_error(%struct.TYPE_15__*, i32, i8*) #2

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, %struct.TYPE_14__*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @strlcpy(i32, i32, i64) #2

declare dso_local i64 @strlen(i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
