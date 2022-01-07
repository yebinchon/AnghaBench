; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_amfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_autil.c_amfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i8* }
%struct.sockaddr_in = type { i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32* }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@MFF_ON_AUTOFS = common dso_local global i32 0, align 4
@nfs_dispatcher = common dso_local global i32 0, align 4
@pid_fsname = common dso_local global i32 0, align 4
@MOUNT_TYPE_NFS = common dso_local global i32 0, align 4
@HIDE_MOUNT_TYPE = common dso_local global i8* null, align 8
@MNTTAB_OPT_RETRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"pid%ld@%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Can't find root file handle for %s\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@myipaddr = common dso_local global i32 0, align 4
@MNTTAB_OPT_PORT = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"no port number specified for %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@D_TRACE = common dso_local global i32 0, align 4
@XLOG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Generic mount flags 0x%x\00", align 1
@mnttab_file_name = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@CFM_FORCED_UNMOUNTS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"Mount %s failed (%m); force unmount.\00", align 1
@AMU_UMOUNT_FORCE = common dso_local global i32 0, align 4
@AMU_UMOUNT_DETACH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Forced umount %s failed: %m.\00", align 1
@HOSTNAMESZ = common dso_local global i32 0, align 4
@MOUNT_TYPE_AUTOFS = common dso_local global i32 0, align 4
@nfsncp = common dso_local global i32* null, align 8
@nfsxprt = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amfs_mount(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.sockaddr_in, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.sockaddr_in, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %25 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %26 = load i32, i32* @MAXPATHLEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = add nsw i32 %27, 1
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %8, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MFF_ON_AUTOFS, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %14, align 8
  store i32 0, i32* %17, align 4
  %40 = load i32, i32* @nfs_dispatcher, align 4
  %41 = call i32 @get_nfs_dispatcher_version(i32 %40)
  store i32 %41, i32* %18, align 4
  %42 = call i32 @memset(%struct.sockaddr_in* %15, i32 0, i32 40)
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* @pid_fsname, align 4
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* @MOUNT_TYPE_NFS, align 4
  store i32 %49, i32* %16, align 4
  %50 = load i8*, i8** @HIDE_MOUNT_TYPE, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* @MNTTAB_OPT_RETRY, align 4
  %53 = call i32 @hasmntval(%struct.sockaddr_in* %15, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sle i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %3
  %58 = trunc i64 %29 to i32
  %59 = call i32 (...) @get_server_pid()
  %60 = call i32 (...) @am_get_hostname()
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @xsnprintf(i8* %31, i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60, i8* %61)
  %63 = call i32 @strlen(i8* %31)
  %64 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %57
  %67 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %31, i64 %68
  %70 = getelementptr inbounds i8, i8* %69, i64 -3
  %71 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 %29, %72
  %74 = add i64 %73, 3
  %75 = trunc i64 %74 to i32
  %76 = call i32 @xstrlcpy(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %66, %57
  %78 = call i32 @compute_mount_flags(%struct.sockaddr_in* %15)
  store i32 %78, i32* %12, align 4
  %79 = call i32 @compute_automounter_mount_flags(%struct.sockaddr_in* %15)
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %179, %77
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MFF_IS_AUTOFS, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %141, label %89

89:                                               ; preds = %82
  %90 = load i8*, i8** %14, align 8
  %91 = call i32* @get_root_nfs_fh(i8* %90, i32* %21)
  store i32* %91, i32** %20, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %99, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* @XLOG_FATAL, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = call i32 (i32, i8*, ...) @plog(i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %185

99:                                               ; preds = %89
  %100 = call i32 @memset(%struct.sockaddr_in* %23, i32 0, i32 40)
  %101 = load i32, i32* @AF_INET, align 4
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 5
  store i32 %101, i32* %102, align 8
  %103 = load i32, i32* @myipaddr, align 4
  %104 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 4
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @MNTTAB_OPT_PORT, align 4
  %106 = call i32 @hasmntval(%struct.sockaddr_in* %15, i32 %105)
  store i32 %106, i32* %22, align 4
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %99
  %110 = load i32, i32* %22, align 4
  %111 = call i32 @htons(i32 %110)
  %112 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 3
  store i32 %111, i32* %112, align 8
  br label %118

113:                                              ; preds = %99
  %114 = load i32, i32* @XLOG_ERROR, align 4
  %115 = load i8*, i8** %14, align 8
  %116 = call i32 (i32, i8*, ...) @plog(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %115)
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %185

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %18, align 4
  %121 = load i32*, i32** %20, align 8
  %122 = load i32, i32* @pid_fsname, align 4
  %123 = call i32 @compute_nfs_args(%struct.TYPE_11__* %19, %struct.sockaddr_in* %15, i32 %119, i32* null, %struct.sockaddr_in* %23, i32 %120, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %121, i8* %31, i32 %122)
  %124 = call i32 @compute_automounter_nfs_args(%struct.TYPE_11__* %19, %struct.sockaddr_in* %15)
  %125 = load i32, i32* @D_TRACE, align 4
  %126 = call i64 @amuDebug(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = call i32 @print_nfs_args(%struct.TYPE_11__* %19, i32 0)
  %130 = load i32, i32* @XLOG_DEBUG, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i32 (i32, i8*, ...) @plog(i32 %130, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %128, %118
  %134 = load i32, i32* %12, align 4
  %135 = ptrtoint %struct.TYPE_11__* %19 to i32
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* @mnttab_file_name, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @mount_fs(%struct.sockaddr_in* %15, i32 %134, i32 %135, i32 %136, i32 %137, i32 0, i32* null, i32 %138, i32 %139)
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %133, %82
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %17, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144, %141
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %185

149:                                              ; preds = %144
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @gopt, i32 0, i32 0), align 4
  %151 = load i32, i32* @CFM_FORCED_UNMOUNTS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %183

154:                                              ; preds = %149
  %155 = load i32, i32* @errno, align 4
  switch i32 %155, label %181 [
    i32 128, label %156
    i32 129, label %156
  ]

156:                                              ; preds = %154, %154
  %157 = load i32, i32* @errno, align 4
  store i32 %157, i32* %17, align 4
  %158 = load i32, i32* @XLOG_WARNING, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @plog(i32 %158, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @mnttab_file_name, align 4
  %167 = load i32, i32* @AMU_UMOUNT_FORCE, align 4
  %168 = load i32, i32* @AMU_UMOUNT_DETACH, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @UMOUNT_FS(i32 %165, i32 %166, i32 %169)
  store i32 %170, i32* %11, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %179

172:                                              ; preds = %156
  %173 = load i32, i32* @XLOG_WARNING, align 4
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 (i32, i8*, ...) @plog(i32 %173, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %17, align 4
  store i32 %178, i32* @errno, align 4
  br label %180

179:                                              ; preds = %156
  br label %82

180:                                              ; preds = %172
  br label %181

181:                                              ; preds = %154, %180
  br label %182

182:                                              ; preds = %181
  br label %183

183:                                              ; preds = %182, %149
  %184 = load i32, i32* %11, align 4
  store i32 %184, i32* %4, align 4
  store i32 1, i32* %24, align 4
  br label %185

185:                                              ; preds = %183, %147, %113, %94
  %186 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %186)
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_nfs_dispatcher_version(i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @hasmntval(%struct.sockaddr_in*, i32) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @get_server_pid(...) #2

declare dso_local i32 @am_get_hostname(...) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #2

declare dso_local i32 @compute_mount_flags(%struct.sockaddr_in*) #2

declare dso_local i32 @compute_automounter_mount_flags(%struct.sockaddr_in*) #2

declare dso_local i32* @get_root_nfs_fh(i8*, i32*) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @compute_nfs_args(%struct.TYPE_11__*, %struct.sockaddr_in*, i32, i32*, %struct.sockaddr_in*, i32, i8*, i32*, i8*, i32) #2

declare dso_local i32 @compute_automounter_nfs_args(%struct.TYPE_11__*, %struct.sockaddr_in*) #2

declare dso_local i64 @amuDebug(i32) #2

declare dso_local i32 @print_nfs_args(%struct.TYPE_11__*, i32) #2

declare dso_local i32 @mount_fs(%struct.sockaddr_in*, i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @UMOUNT_FS(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
