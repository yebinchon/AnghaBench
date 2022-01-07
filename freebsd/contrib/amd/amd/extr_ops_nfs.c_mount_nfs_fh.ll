; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_mount_nfs_fh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_ops_nfs.c_mount_nfs_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64*, i64* }
%struct.TYPE_15__ = type { i32, i64*, i64*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i8*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i8*, i8*, i8* }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@MFF_ON_AUTOFS = common dso_local global i32 0, align 4
@AMU_TYPE_NONE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@AMU_TYPE_UDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@AMU_TYPE_TCP = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s=%d,\00", align 1
@MNTTAB_OPT_TIMEO = common dso_local global i32 0, align 4
@MNTTAB_OPT_RETRANS = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Using remopts=\22%s\22\00", align 1
@MOUNT_TYPE_NFS = common dso_local global i32 0, align 4
@MNTTAB_TYPE_NFS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"mount_nfs_fh: NFS version %d\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"mount_nfs_fh: using NFS transport %s\00", align 1
@MNTTAB_OPT_RETRY = common dso_local global i32 0, align 4
@D_TRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"Generic mount flags 0x%x used for NFS mount\00", align 1
@mnttab_file_name = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MNTTAB_TYPE_NFS3 = common dso_local global i8* null, align 8
@MNTTAB_TYPE_NFS4 = common dso_local global i8* null, align 8
@MOUNT_TYPE_NFS3 = common dso_local global i32 0, align 4
@MOUNT_TYPE_NFS4 = common dso_local global i32 0, align 4
@NFS_VERSION3 = common dso_local global i64 0, align 8
@NFS_VERSION4 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_nfs_fh(i32* %0, i8* %1, i8* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [40 x i8], align 16
  %14 = alloca [40 x i8], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.TYPE_16__, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  store i8* null, i8** %12, align 8
  %29 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %30 = load i32, i32* @MAXPATHLEN, align 4
  %31 = add nsw i32 %29, %30
  %32 = add nsw i32 %31, 2
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 3
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %17, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %18, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %19, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MFF_ON_AUTOFS, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* @AMU_TYPE_NONE, align 4
  store i32 %50, i32* %24, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @strchr(i8* %51, i8 signext 58)
  store i8* %52, i8** %11, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %4
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %216

56:                                               ; preds = %4
  %57 = load i8*, i8** %8, align 8
  %58 = trunc i64 %33 to i32
  %59 = call i32 @xstrlcpy(i8* %35, i8* %57, i32 %58)
  %60 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %60, align 16
  %61 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %61, align 16
  %62 = load i8*, i8** %19, align 8
  %63 = call i64 @STREQ(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @AMU_TYPE_UDP, align 4
  store i32 %66, i32* %24, align 4
  br label %74

67:                                               ; preds = %56
  %68 = load i8*, i8** %19, align 8
  %69 = call i64 @STREQ(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @AMU_TYPE_TCP, align 4
  store i32 %72, i32* %24, align 4
  br label %73

73:                                               ; preds = %71, %67
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32, i32* %24, align 4
  %76 = load i32, i32* @AMU_TYPE_NONE, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %74
  %79 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gopt, i32 0, i32 0), align 8
  %80 = load i32, i32* %24, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %78
  %86 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %87 = load i32, i32* @MNTTAB_OPT_TIMEO, align 4
  %88 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gopt, i32 0, i32 0), align 8
  %89 = load i32, i32* %24, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @xsnprintf(i8* %86, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %92)
  br label %94

94:                                               ; preds = %85, %78
  %95 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gopt, i32 0, i32 1), align 8
  %96 = load i32, i32* %24, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %94
  %102 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %103 = load i32, i32* @MNTTAB_OPT_RETRANS, align 4
  %104 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @gopt, i32 0, i32 1), align 8
  %105 = load i32, i32* %24, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @xsnprintf(i8* %102, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %103, i64 %108)
  br label %110

110:                                              ; preds = %101, %94
  br label %111

111:                                              ; preds = %110, %74
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i64*, i64** %113, align 8
  %115 = icmp ne i64* %114, null
  br i1 %115, label %116, label %144

116:                                              ; preds = %111
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 2
  %119 = load i64*, i64** %118, align 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @islocalnet(i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %144, label %131

131:                                              ; preds = %122
  %132 = load i32, i32* @XLOG_INFO, align 4
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 2
  %135 = load i64*, i64** %134, align 8
  %136 = call i32 (i32, i8*, ...) @plog(i32 %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %135)
  %137 = load i8*, i8** %12, align 8
  %138 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %139 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 2
  %142 = load i64*, i64** %141, align 8
  %143 = call i8* @str3cat(i8* %137, i8* %138, i8* %139, i64* %142)
  store i8* %143, i8** %12, align 8
  br label %152

144:                                              ; preds = %122, %116, %111
  %145 = load i8*, i8** %12, align 8
  %146 = getelementptr inbounds [40 x i8], [40 x i8]* %13, i64 0, i64 0
  %147 = getelementptr inbounds [40 x i8], [40 x i8]* %14, i64 0, i64 0
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = call i8* @str3cat(i8* %145, i8* %146, i8* %147, i64* %150)
  store i8* %151, i8** %12, align 8
  br label %152

152:                                              ; preds = %144, %131
  %153 = ptrtoint %struct.TYPE_16__* %25 to i32
  %154 = call i32 @memset(i32 %153, i32 0, i32 32)
  %155 = load i8*, i8** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i8* %155, i8** %156, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  store i8* %157, i8** %158, align 8
  %159 = load i8*, i8** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  store i8* %159, i8** %160, align 8
  %161 = bitcast i32* %27 to i8*
  store i8* %161, i8** %26, align 8
  %162 = load i32, i32* @MOUNT_TYPE_NFS, align 4
  store i32 %162, i32* %10, align 4
  %163 = load i8*, i8** @MNTTAB_TYPE_NFS, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  store i8* %163, i8** %164, align 8
  %165 = load i32, i32* @XLOG_INFO, align 4
  %166 = load i64, i64* %18, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 (i32, i8*, ...) @plog(i32 %165, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @XLOG_INFO, align 4
  %170 = load i8*, i8** %19, align 8
  %171 = call i32 (i32, i8*, ...) @plog(i32 %169, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %170)
  %172 = load i32, i32* @MNTTAB_OPT_RETRY, align 4
  %173 = call i32 @hasmntval(%struct.TYPE_16__* %25, i32 %172)
  store i32 %173, i32* %23, align 4
  %174 = load i32, i32* %23, align 4
  %175 = icmp sle i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %152
  store i32 1, i32* %23, align 4
  br label %177

177:                                              ; preds = %176, %152
  %178 = call i32 @compute_mount_flags(%struct.TYPE_16__* %25)
  store i32 %178, i32* %22, align 4
  %179 = load i8*, i8** %26, align 8
  %180 = load i32, i32* %22, align 4
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %182, align 8
  %184 = load i64, i64* %18, align 8
  %185 = load i8*, i8** %19, align 8
  %186 = load i32*, i32** %6, align 8
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @compute_nfs_args(i8* %179, %struct.TYPE_16__* %25, i32 %180, i32* null, %struct.TYPE_13__* %183, i64 %184, i8* %185, i32* %186, i8* %35, i8* %187)
  %189 = load i32, i32* @D_TRACE, align 4
  %190 = call i64 @amuDebug(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %177
  %193 = load i8*, i8** %26, align 8
  %194 = load i64, i64* %18, align 8
  %195 = call i32 @print_nfs_args(i8* %193, i64 %194)
  %196 = load i32, i32* @XLOG_DEBUG, align 4
  %197 = load i32, i32* %22, align 4
  %198 = call i32 (i32, i8*, ...) @plog(i32 %196, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %192, %177
  %200 = load i32, i32* %22, align 4
  %201 = load i8*, i8** %26, align 8
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %10, align 4
  %204 = load i64, i64* %18, align 8
  %205 = load i8*, i8** %19, align 8
  %206 = load i32, i32* @mnttab_file_name, align 4
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @mount_fs(%struct.TYPE_16__* %25, i32 %200, i8* %201, i32 %202, i32 %203, i64 %204, i8* %205, i32 %206, i32 %207)
  store i32 %208, i32* %21, align 4
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 2
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @XFREE(i8* %210)
  %212 = load i8*, i8** %26, align 8
  %213 = load i64, i64* %18, align 8
  %214 = call i32 @discard_nfs_args(i8* %212, i64 %213)
  %215 = load i32, i32* %21, align 4
  store i32 %215, i32* %5, align 4
  store i32 1, i32* %28, align 4
  br label %216

216:                                              ; preds = %199, %54
  %217 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %5, align 4
  ret i32 %218
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #2

declare dso_local i64 @STREQ(i8*, i8*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, i64) #2

declare dso_local i32 @islocalnet(i32) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i8* @str3cat(i8*, i8*, i8*, i64*) #2

declare dso_local i32 @memset(i32, i32, i32) #2

declare dso_local i32 @hasmntval(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @compute_mount_flags(%struct.TYPE_16__*) #2

declare dso_local i32 @compute_nfs_args(i8*, %struct.TYPE_16__*, i32, i32*, %struct.TYPE_13__*, i64, i8*, i32*, i8*, i8*) #2

declare dso_local i64 @amuDebug(i32) #2

declare dso_local i32 @print_nfs_args(i8*, i64) #2

declare dso_local i32 @mount_fs(%struct.TYPE_16__*, i32, i8*, i32, i32, i64, i8*, i32, i32) #2

declare dso_local i32 @XFREE(i8*) #2

declare dso_local i32 @discard_nfs_args(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
