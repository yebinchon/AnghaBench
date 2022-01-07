; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_do_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_vwsnd_audio_do_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i32, i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.audio_buf_info = type { i32, i32, i32, i32, i32, i32 }
%struct.count_info = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"(inode=0x%p, file=0x%p, cmd=0x%x, arg=0x%lx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"OSS_GETVERSION\0A\00", align 1
@SOUND_VERSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_GETCAPS\0A\00", align 1
@DSP_CAP_DUPLEX = common dso_local global i32 0, align 4
@DSP_CAP_REALTIME = common dso_local global i32 0, align 4
@DSP_CAP_TRIGGER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_GETFMTS\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SOUND_PCM_READ_RATE\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"SOUND_PCM_READ_CHANNELS\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_SPEED %d\0A\00", align 1
@SW_INITIAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"SNDCTL_DSP_SPEED failed: swstate = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MIN_SPEED = common dso_local global i32 0, align 4
@MAX_SPEED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_STEREO %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"SNDCTL_DSP_CHANNELS %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"SNDCTL_DSP_GETBLKSIZE failed, errno %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"SNDCTL_DSP_GETBLKSIZE returning %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"SNDCTL_DSP_SETFRAGMENT %d:%d\0A\00", align 1
@MIN_FRAGSHIFT = common dso_local global i32 0, align 4
@MAX_FRAGSHIFT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"sw_fragshift = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"rport = 0x%p, wport = 0x%p\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"SNDCTL_DSP_SETFRAGMENT returns %d:%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"SNDCTL_DSP_SUBDIVIDE %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_SETFMT %d\0A\00", align 1
@AFMT_QUERY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [29 x i8] c"SETFMT failed, swstate = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_GETOSPACE\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"SNDCTL_DSP_GETOSPACE returns { %d %d %d %d }\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_GETISPACE\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"SNDCTL_DSP_GETISPACE returns { %d %d %d %d }\0A\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"SNDCTL_DSP_NONBLOCK\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"SNDCTL_DSP_RESET\0A\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"SNDCTL_DSP_SYNC\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"SNDCTL_DSP_POST\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_GETIPTR\0A\00", align 1
@HW_RUNNING = common dso_local global i32 0, align 4
@SW_RUN = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_GETOPTR\0A\00", align 1
@.str.29 = private unnamed_addr constant [22 x i8] c"SNDCTL_DSP_GETODELAY\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"SNDCTL_DSP_PROFILE\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"SNDCTL_DSP_GETTRIGGER\0A\00", align 1
@DISABLED = common dso_local global i32 0, align 4
@PCM_ENABLE_INPUT = common dso_local global i32 0, align 4
@PCM_ENABLE_OUTPUT = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [26 x i8] c"SNDCTL_DSP_SETTRIGGER %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"unknown ioctl 0x%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"unimplemented ioctl 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32, i64)* @vwsnd_audio_do_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vwsnd_audio_do_ioctl(%struct.inode* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.audio_buf_info, align 4
  %15 = alloca %struct.count_info, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_17__, align 4
  %28 = alloca %struct.TYPE_17__, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_17__, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = getelementptr inbounds %struct.file, %struct.file* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %42, %struct.TYPE_16__** %10, align 8
  %43 = load %struct.file*, %struct.file** %7, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FMODE_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %4
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  br label %53

52:                                               ; preds = %4
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi %struct.TYPE_15__* [ %51, %49 ], [ null, %52 ]
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %11, align 8
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @FMODE_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  br label %65

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi %struct.TYPE_15__* [ %63, %61 ], [ null, %64 ]
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %12, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %68 = icmp ne %struct.TYPE_15__* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  br label %73

71:                                               ; preds = %65
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi %struct.TYPE_15__* [ %70, %69 ], [ %72, %71 ]
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %13, align 8
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load %struct.file*, %struct.file** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @DBGEV(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.inode* %75, %struct.file* %76, i32 %77, i64 %78)
  %80 = load i32, i32* %8, align 4
  switch i32 %80, label %1119 [
    i32 151, label %81
    i32 148, label %88
    i32 147, label %99
    i32 128, label %105
    i32 129, label %114
    i32 133, label %123
    i32 132, label %186
    i32 150, label %236
    i32 149, label %284
    i32 135, label %306
    i32 131, label %414
    i32 136, label %493
    i32 142, label %550
    i32 145, label %604
    i32 140, label %658
    i32 137, label %671
    i32 130, label %693
    i32 139, label %707
    i32 146, label %717
    i32 143, label %783
    i32 144, label %849
    i32 138, label %917
    i32 141, label %919
    i32 134, label %971
  ]

81:                                               ; preds = %73
  %82 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %83 = load i32, i32* @SOUND_VERSION, align 4
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = load i64, i64* %9, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = call i32 @put_user(i32 %84, i32* %86)
  store i32 %87, i32* %5, align 4
  br label %1129

88:                                               ; preds = %73
  %89 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* @DSP_CAP_DUPLEX, align 4
  %91 = load i32, i32* @DSP_CAP_REALTIME, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @DSP_CAP_TRIGGER, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i64, i64* %9, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = call i32 @put_user(i32 %95, i32* %97)
  store i32 %98, i32* %5, align 4
  br label %1129

99:                                               ; preds = %73
  %100 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 159, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = load i64, i64* %9, align 8
  %103 = inttoptr i64 %102 to i32*
  %104 = call i32 @put_user(i32 %101, i32* %103)
  store i32 %104, i32* %5, align 4
  br label %1129

105:                                              ; preds = %73
  %106 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %17, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i64, i64* %9, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = call i32 @put_user(i32 %110, i32* %112)
  store i32 %113, i32* %5, align 4
  br label %1129

114:                                              ; preds = %73
  %115 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %17, align 4
  %120 = load i64, i64* %9, align 8
  %121 = inttoptr i64 %120 to i32*
  %122 = call i32 @put_user(i32 %119, i32* %121)
  store i32 %122, i32* %5, align 4
  br label %1129

123:                                              ; preds = %73
  %124 = load i32, i32* %17, align 4
  %125 = load i64, i64* %9, align 8
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @get_user(i32 %124, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32, i32* @EFAULT, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %5, align 4
  br label %1129

132:                                              ; preds = %123
  %133 = load i32, i32* %17, align 4
  %134 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %177

137:                                              ; preds = %132
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SW_INITIAL, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %5, align 4
  br label %1129

150:                                              ; preds = %137
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* @MIN_SPEED, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @MIN_SPEED, align 4
  store i32 %155, i32* %17, align 4
  br label %156

156:                                              ; preds = %154, %150
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @MAX_SPEED, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @MAX_SPEED, align 4
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %160, %156
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %164 = icmp ne %struct.TYPE_15__* %163, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* %17, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %165, %162
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %171 = icmp ne %struct.TYPE_15__* %170, null
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i32, i32* %17, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %172, %169
  br label %181

177:                                              ; preds = %132
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %17, align 4
  br label %181

181:                                              ; preds = %177, %176
  %182 = load i32, i32* %17, align 4
  %183 = load i64, i64* %9, align 8
  %184 = inttoptr i64 %183 to i32*
  %185 = call i32 @put_user(i32 %182, i32* %184)
  store i32 %185, i32* %5, align 4
  br label %1129

186:                                              ; preds = %73
  %187 = load i32, i32* %17, align 4
  %188 = load i64, i64* %9, align 8
  %189 = inttoptr i64 %188 to i32*
  %190 = call i32 @get_user(i32 %187, i32* %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* @EFAULT, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %5, align 4
  br label %1129

195:                                              ; preds = %186
  %196 = load i32, i32* %17, align 4
  %197 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %17, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load i32, i32* %17, align 4
  %202 = icmp ne i32 %201, 1
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load i32, i32* @EINVAL, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %5, align 4
  br label %1129

206:                                              ; preds = %200, %195
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @SW_INITIAL, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* @EINVAL, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %5, align 4
  br label %1129

215:                                              ; preds = %206
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %217 = icmp ne %struct.TYPE_15__* %216, null
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load i32, i32* %17, align 4
  %220 = add nsw i32 %219, 1
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %218, %215
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %225 = icmp ne %struct.TYPE_15__* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %223
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 1
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 1
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %226, %223
  %232 = load i32, i32* %17, align 4
  %233 = load i64, i64* %9, align 8
  %234 = inttoptr i64 %233 to i32*
  %235 = call i32 @put_user(i32 %232, i32* %234)
  store i32 %235, i32* %5, align 4
  br label %1129

236:                                              ; preds = %73
  %237 = load i32, i32* %17, align 4
  %238 = load i64, i64* %9, align 8
  %239 = inttoptr i64 %238 to i32*
  %240 = call i32 @get_user(i32 %237, i32* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load i32, i32* @EFAULT, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %5, align 4
  br label %1129

245:                                              ; preds = %236
  %246 = load i32, i32* %17, align 4
  %247 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %246)
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, 1
  br i1 %249, label %250, label %256

250:                                              ; preds = %245
  %251 = load i32, i32* %17, align 4
  %252 = icmp ne i32 %251, 2
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %5, align 4
  br label %1129

256:                                              ; preds = %250, %245
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @SW_INITIAL, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i32, i32* @EINVAL, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %5, align 4
  br label %1129

265:                                              ; preds = %256
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %267 = icmp ne %struct.TYPE_15__* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i32, i32* %17, align 4
  %270 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %268, %265
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %274 = icmp ne %struct.TYPE_15__* %273, null
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load i32, i32* %17, align 4
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 4
  br label %279

279:                                              ; preds = %275, %272
  %280 = load i32, i32* %17, align 4
  %281 = load i64, i64* %9, align 8
  %282 = inttoptr i64 %281 to i32*
  %283 = call i32 @put_user(i32 %280, i32* %282)
  store i32 %283, i32* %5, align 4
  br label %1129

284:                                              ; preds = %73
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %288 = call i32 @pcm_setup(%struct.TYPE_16__* %285, %struct.TYPE_15__* %286, %struct.TYPE_15__* %287)
  store i32 %288, i32* %17, align 4
  %289 = load i32, i32* %17, align 4
  %290 = icmp slt i32 %289, 0
  br i1 %290, label %291, label %295

291:                                              ; preds = %284
  %292 = load i32, i32* %17, align 4
  %293 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* %17, align 4
  store i32 %294, i32* %5, align 4
  br label %1129

295:                                              ; preds = %284
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 1, %298
  store i32 %299, i32* %17, align 4
  %300 = load i32, i32* %17, align 4
  %301 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %300)
  %302 = load i32, i32* %17, align 4
  %303 = load i64, i64* %9, align 8
  %304 = inttoptr i64 %303 to i32*
  %305 = call i32 @put_user(i32 %302, i32* %304)
  store i32 %305, i32* %5, align 4
  br label %1129

306:                                              ; preds = %73
  %307 = load i32, i32* %17, align 4
  %308 = load i64, i64* %9, align 8
  %309 = inttoptr i64 %308 to i32*
  %310 = call i32 @get_user(i32 %307, i32* %309)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %306
  %313 = load i32, i32* @EFAULT, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %5, align 4
  br label %1129

315:                                              ; preds = %306
  %316 = load i32, i32* %17, align 4
  %317 = ashr i32 %316, 16
  %318 = load i32, i32* %17, align 4
  %319 = and i32 %318, 65535
  %320 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0), i32 %317, i32 %319)
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @SW_INITIAL, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %329

326:                                              ; preds = %315
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %5, align 4
  br label %1129

329:                                              ; preds = %315
  %330 = load i32, i32* %17, align 4
  %331 = and i32 %330, 65535
  store i32 %331, i32* %18, align 4
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %19, align 4
  %335 = load i32, i32* %18, align 4
  %336 = load i32, i32* %19, align 4
  %337 = sub nsw i32 %335, %336
  store i32 %337, i32* %20, align 4
  %338 = load i32, i32* %17, align 4
  %339 = ashr i32 %338, 16
  %340 = and i32 %339, 65535
  store i32 %340, i32* %21, align 4
  %341 = load i32, i32* %20, align 4
  %342 = load i32, i32* @MIN_FRAGSHIFT, align 4
  %343 = icmp slt i32 %341, %342
  br i1 %343, label %344, label %346

344:                                              ; preds = %329
  %345 = load i32, i32* @MIN_FRAGSHIFT, align 4
  store i32 %345, i32* %20, align 4
  br label %346

346:                                              ; preds = %344, %329
  %347 = load i32, i32* %20, align 4
  %348 = load i32, i32* @MAX_FRAGSHIFT, align 4
  %349 = icmp sgt i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  %351 = load i32, i32* @MAX_FRAGSHIFT, align 4
  store i32 %351, i32* %20, align 4
  br label %352

352:                                              ; preds = %350, %346
  %353 = load i32, i32* %20, align 4
  %354 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %355 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %353, %356
  store i32 %357, i32* %18, align 4
  %358 = load i32, i32* %20, align 4
  %359 = shl i32 1, %358
  store i32 %359, i32* %22, align 4
  %360 = load i32, i32* %21, align 4
  %361 = load i32, i32* %22, align 4
  %362 = call i32 @MIN_FRAGCOUNT(i32 %361)
  %363 = icmp slt i32 %360, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %352
  %365 = load i32, i32* %22, align 4
  %366 = call i32 @MIN_FRAGCOUNT(i32 %365)
  store i32 %366, i32* %21, align 4
  br label %367

367:                                              ; preds = %364, %352
  %368 = load i32, i32* %21, align 4
  %369 = load i32, i32* %22, align 4
  %370 = call i32 @MAX_FRAGCOUNT(i32 %369)
  %371 = icmp sgt i32 %368, %370
  br i1 %371, label %372, label %375

372:                                              ; preds = %367
  %373 = load i32, i32* %22, align 4
  %374 = call i32 @MAX_FRAGCOUNT(i32 %373)
  store i32 %374, i32* %21, align 4
  br label %375

375:                                              ; preds = %372, %367
  %376 = load i32, i32* %18, align 4
  %377 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %376)
  %378 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %379 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %380 = call i32 (i8*, ...) @DBGPV(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), %struct.TYPE_15__* %378, %struct.TYPE_15__* %379)
  %381 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %382 = icmp ne %struct.TYPE_15__* %381, null
  br i1 %382, label %383, label %390

383:                                              ; preds = %375
  %384 = load i32, i32* %18, align 4
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 3
  store i32 %384, i32* %386, align 4
  %387 = load i32, i32* %21, align 4
  %388 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %389 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %388, i32 0, i32 5
  store i32 %387, i32* %389, align 4
  br label %390

390:                                              ; preds = %383, %375
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %392 = icmp ne %struct.TYPE_15__* %391, null
  br i1 %392, label %393, label %400

393:                                              ; preds = %390
  %394 = load i32, i32* %18, align 4
  %395 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %395, i32 0, i32 3
  store i32 %394, i32* %396, align 4
  %397 = load i32, i32* %21, align 4
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 5
  store i32 %397, i32* %399, align 4
  br label %400

400:                                              ; preds = %393, %390
  %401 = load i32, i32* %21, align 4
  %402 = shl i32 %401, 16
  %403 = load i32, i32* %18, align 4
  %404 = or i32 %402, %403
  store i32 %404, i32* %17, align 4
  %405 = load i32, i32* %17, align 4
  %406 = ashr i32 %405, 16
  %407 = load i32, i32* %17, align 4
  %408 = and i32 %407, 65535
  %409 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %406, i32 %408)
  %410 = load i32, i32* %17, align 4
  %411 = load i64, i64* %9, align 8
  %412 = inttoptr i64 %411 to i32*
  %413 = call i32 @put_user(i32 %410, i32* %412)
  store i32 %413, i32* %5, align 4
  br label %1129

414:                                              ; preds = %73
  %415 = load i32, i32* %17, align 4
  %416 = load i64, i64* %9, align 8
  %417 = inttoptr i64 %416 to i32*
  %418 = call i32 @get_user(i32 %415, i32* %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %423

420:                                              ; preds = %414
  %421 = load i32, i32* @EFAULT, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %5, align 4
  br label %1129

423:                                              ; preds = %414
  %424 = load i32, i32* %17, align 4
  %425 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %424)
  %426 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %427 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 4
  %429 = load i32, i32* @SW_INITIAL, align 4
  %430 = icmp ne i32 %428, %429
  br i1 %430, label %431, label %434

431:                                              ; preds = %423
  %432 = load i32, i32* @EINVAL, align 4
  %433 = sub nsw i32 0, %432
  store i32 %433, i32* %5, align 4
  br label %1129

434:                                              ; preds = %423
  %435 = load i32, i32* %17, align 4
  switch i32 %435, label %439 [
    i32 1, label %436
    i32 2, label %437
    i32 4, label %438
  ]

436:                                              ; preds = %434
  store i32 0, i32* %23, align 4
  br label %442

437:                                              ; preds = %434
  store i32 1, i32* %23, align 4
  br label %442

438:                                              ; preds = %434
  store i32 2, i32* %23, align 4
  br label %442

439:                                              ; preds = %434
  %440 = load i32, i32* @EINVAL, align 4
  %441 = sub nsw i32 0, %440
  store i32 %441, i32* %5, align 4
  br label %1129

442:                                              ; preds = %438, %437, %436
  %443 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* %23, align 4
  %447 = sub nsw i32 %445, %446
  store i32 %447, i32* %24, align 4
  %448 = load i32, i32* %24, align 4
  %449 = load i32, i32* @MIN_FRAGSHIFT, align 4
  %450 = icmp slt i32 %448, %449
  br i1 %450, label %455, label %451

451:                                              ; preds = %442
  %452 = load i32, i32* %24, align 4
  %453 = load i32, i32* @MAX_FRAGSHIFT, align 4
  %454 = icmp sgt i32 %452, %453
  br i1 %454, label %455, label %458

455:                                              ; preds = %451, %442
  %456 = load i32, i32* @EINVAL, align 4
  %457 = sub nsw i32 0, %456
  store i32 %457, i32* %5, align 4
  br label %1129

458:                                              ; preds = %451
  %459 = load i32, i32* %24, align 4
  %460 = shl i32 1, %459
  store i32 %460, i32* %25, align 4
  %461 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %462 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %461, i32 0, i32 5
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* %23, align 4
  %465 = ashr i32 %463, %464
  store i32 %465, i32* %26, align 4
  %466 = load i32, i32* %26, align 4
  %467 = load i32, i32* %25, align 4
  %468 = call i32 @MIN_FRAGCOUNT(i32 %467)
  %469 = icmp slt i32 %466, %468
  br i1 %469, label %475, label %470

470:                                              ; preds = %458
  %471 = load i32, i32* %26, align 4
  %472 = load i32, i32* %25, align 4
  %473 = call i32 @MAX_FRAGCOUNT(i32 %472)
  %474 = icmp sgt i32 %471, %473
  br i1 %474, label %475, label %478

475:                                              ; preds = %470, %458
  %476 = load i32, i32* @EINVAL, align 4
  %477 = sub nsw i32 0, %476
  store i32 %477, i32* %5, align 4
  br label %1129

478:                                              ; preds = %470
  %479 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %480 = icmp ne %struct.TYPE_15__* %479, null
  br i1 %480, label %481, label %485

481:                                              ; preds = %478
  %482 = load i32, i32* %23, align 4
  %483 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 4
  store i32 %482, i32* %484, align 4
  br label %485

485:                                              ; preds = %481, %478
  %486 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %487 = icmp ne %struct.TYPE_15__* %486, null
  br i1 %487, label %488, label %492

488:                                              ; preds = %485
  %489 = load i32, i32* %23, align 4
  %490 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %491 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %490, i32 0, i32 4
  store i32 %489, i32* %491, align 4
  br label %492

492:                                              ; preds = %488, %485
  store i32 0, i32* %5, align 4
  br label %1129

493:                                              ; preds = %73
  %494 = load i32, i32* %17, align 4
  %495 = load i64, i64* %9, align 8
  %496 = inttoptr i64 %495 to i32*
  %497 = call i32 @get_user(i32 %494, i32* %496)
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %502

499:                                              ; preds = %493
  %500 = load i32, i32* @EFAULT, align 4
  %501 = sub nsw i32 0, %500
  store i32 %501, i32* %5, align 4
  br label %1129

502:                                              ; preds = %493
  %503 = load i32, i32* %17, align 4
  %504 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %503)
  %505 = load i32, i32* %17, align 4
  %506 = load i32, i32* @AFMT_QUERY, align 4
  %507 = icmp ne i32 %505, %506
  br i1 %507, label %508, label %542

508:                                              ; preds = %502
  %509 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %510 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 4
  %512 = load i32, i32* @SW_INITIAL, align 4
  %513 = icmp ne i32 %511, %512
  br i1 %513, label %514, label %521

514:                                              ; preds = %508
  %515 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %516 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @DBGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %517)
  %519 = load i32, i32* @EINVAL, align 4
  %520 = sub nsw i32 0, %519
  store i32 %520, i32* %5, align 4
  br label %1129

521:                                              ; preds = %508
  %522 = load i32, i32* %17, align 4
  switch i32 %522, label %538 [
    i32 155, label %523
    i32 156, label %523
    i32 152, label %523
    i32 153, label %523
    i32 154, label %523
  ]

523:                                              ; preds = %521, %521, %521, %521, %521
  %524 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %525 = icmp ne %struct.TYPE_15__* %524, null
  br i1 %525, label %526, label %530

526:                                              ; preds = %523
  %527 = load i32, i32* %17, align 4
  %528 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %529 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %528, i32 0, i32 6
  store i32 %527, i32* %529, align 4
  br label %530

530:                                              ; preds = %526, %523
  %531 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %532 = icmp ne %struct.TYPE_15__* %531, null
  br i1 %532, label %533, label %537

533:                                              ; preds = %530
  %534 = load i32, i32* %17, align 4
  %535 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %536 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %535, i32 0, i32 6
  store i32 %534, i32* %536, align 4
  br label %537

537:                                              ; preds = %533, %530
  br label %541

538:                                              ; preds = %521
  %539 = load i32, i32* @EINVAL, align 4
  %540 = sub nsw i32 0, %539
  store i32 %540, i32* %5, align 4
  br label %1129

541:                                              ; preds = %537
  br label %542

542:                                              ; preds = %541, %502
  %543 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %544 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %543, i32 0, i32 6
  %545 = load i32, i32* %544, align 4
  store i32 %545, i32* %17, align 4
  %546 = load i32, i32* %17, align 4
  %547 = load i64, i64* %9, align 8
  %548 = inttoptr i64 %547 to i32*
  %549 = call i32 @put_user(i32 %546, i32* %548)
  store i32 %549, i32* %5, align 4
  br label %1129

550:                                              ; preds = %73
  %551 = call i32 (i8*, ...) @DBGXV(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %552 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %553 = icmp ne %struct.TYPE_15__* %552, null
  br i1 %553, label %557, label %554

554:                                              ; preds = %550
  %555 = load i32, i32* @EINVAL, align 4
  %556 = sub nsw i32 0, %555
  store i32 %556, i32* %5, align 4
  br label %1129

557:                                              ; preds = %550
  %558 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %559 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %560 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %561 = call i32 @pcm_setup(%struct.TYPE_16__* %558, %struct.TYPE_15__* %559, %struct.TYPE_15__* %560)
  store i32 %561, i32* %17, align 4
  %562 = load i32, i32* %17, align 4
  %563 = icmp slt i32 %562, 0
  br i1 %563, label %564, label %566

564:                                              ; preds = %557
  %565 = load i32, i32* %17, align 4
  store i32 %565, i32* %5, align 4
  br label %1129

566:                                              ; preds = %557
  %567 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %568 = call i32 @swb_inc_u(%struct.TYPE_15__* %567, i32 0)
  store i32 %568, i32* %17, align 4
  %569 = load i32, i32* %17, align 4
  %570 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %571 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %570, i32 0, i32 3
  %572 = load i32, i32* %571, align 4
  %573 = ashr i32 %569, %572
  %574 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 0
  store i32 %573, i32* %574, align 4
  %575 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %576 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %575, i32 0, i32 5
  %577 = load i32, i32* %576, align 4
  %578 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 1
  store i32 %577, i32* %578, align 4
  %579 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %580 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %579, i32 0, i32 3
  %581 = load i32, i32* %580, align 4
  %582 = shl i32 1, %581
  %583 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 2
  store i32 %582, i32* %583, align 4
  %584 = load i32, i32* %17, align 4
  %585 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 3
  store i32 %584, i32* %585, align 4
  %586 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 0
  %587 = load i32, i32* %586, align 4
  %588 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  %590 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 2
  %591 = load i32, i32* %590, align 4
  %592 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 3
  %593 = load i32, i32* %592, align 4
  %594 = call i32 (i8*, ...) @DBGXV(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 %587, i32 %589, i32 %591, i32 %593)
  %595 = load i64, i64* %9, align 8
  %596 = inttoptr i64 %595 to i8*
  %597 = bitcast %struct.audio_buf_info* %14 to %struct.count_info*
  %598 = call i32 @copy_to_user(i8* %596, %struct.count_info* %597, i32 24)
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %603

600:                                              ; preds = %566
  %601 = load i32, i32* @EFAULT, align 4
  %602 = sub nsw i32 0, %601
  store i32 %602, i32* %5, align 4
  br label %1129

603:                                              ; preds = %566
  store i32 0, i32* %5, align 4
  br label %1129

604:                                              ; preds = %73
  %605 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0))
  %606 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %607 = icmp ne %struct.TYPE_15__* %606, null
  br i1 %607, label %611, label %608

608:                                              ; preds = %604
  %609 = load i32, i32* @EINVAL, align 4
  %610 = sub nsw i32 0, %609
  store i32 %610, i32* %5, align 4
  br label %1129

611:                                              ; preds = %604
  %612 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %613 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %614 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %615 = call i32 @pcm_setup(%struct.TYPE_16__* %612, %struct.TYPE_15__* %613, %struct.TYPE_15__* %614)
  store i32 %615, i32* %17, align 4
  %616 = load i32, i32* %17, align 4
  %617 = icmp slt i32 %616, 0
  br i1 %617, label %618, label %620

618:                                              ; preds = %611
  %619 = load i32, i32* %17, align 4
  store i32 %619, i32* %5, align 4
  br label %1129

620:                                              ; preds = %611
  %621 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %622 = call i32 @swb_inc_u(%struct.TYPE_15__* %621, i32 0)
  store i32 %622, i32* %17, align 4
  %623 = load i32, i32* %17, align 4
  %624 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %625 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %624, i32 0, i32 3
  %626 = load i32, i32* %625, align 4
  %627 = ashr i32 %623, %626
  %628 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 0
  store i32 %627, i32* %628, align 4
  %629 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %630 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %629, i32 0, i32 5
  %631 = load i32, i32* %630, align 4
  %632 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 1
  store i32 %631, i32* %632, align 4
  %633 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %634 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %633, i32 0, i32 3
  %635 = load i32, i32* %634, align 4
  %636 = shl i32 1, %635
  %637 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 2
  store i32 %636, i32* %637, align 4
  %638 = load i32, i32* %17, align 4
  %639 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 3
  store i32 %638, i32* %639, align 4
  %640 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 0
  %641 = load i32, i32* %640, align 4
  %642 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 2
  %645 = load i32, i32* %644, align 4
  %646 = getelementptr inbounds %struct.audio_buf_info, %struct.audio_buf_info* %14, i32 0, i32 3
  %647 = load i32, i32* %646, align 4
  %648 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i32 %641, i32 %643, i32 %645, i32 %647)
  %649 = load i64, i64* %9, align 8
  %650 = inttoptr i64 %649 to i8*
  %651 = bitcast %struct.audio_buf_info* %14 to %struct.count_info*
  %652 = call i32 @copy_to_user(i8* %650, %struct.count_info* %651, i32 24)
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %657

654:                                              ; preds = %620
  %655 = load i32, i32* @EFAULT, align 4
  %656 = sub nsw i32 0, %655
  store i32 %656, i32* %5, align 4
  br label %1129

657:                                              ; preds = %620
  store i32 0, i32* %5, align 4
  br label %1129

658:                                              ; preds = %73
  %659 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %660 = load %struct.file*, %struct.file** %7, align 8
  %661 = getelementptr inbounds %struct.file, %struct.file* %660, i32 0, i32 1
  %662 = call i32 @spin_lock(i32* %661)
  %663 = load i32, i32* @O_NONBLOCK, align 4
  %664 = load %struct.file*, %struct.file** %7, align 8
  %665 = getelementptr inbounds %struct.file, %struct.file* %664, i32 0, i32 2
  %666 = load i32, i32* %665, align 8
  %667 = or i32 %666, %663
  store i32 %667, i32* %665, align 8
  %668 = load %struct.file*, %struct.file** %7, align 8
  %669 = getelementptr inbounds %struct.file, %struct.file* %668, i32 0, i32 1
  %670 = call i32 @spin_unlock(i32* %669)
  store i32 0, i32* %5, align 4
  br label %1129

671:                                              ; preds = %73
  %672 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %673 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %674 = icmp ne %struct.TYPE_15__* %673, null
  br i1 %674, label %675, label %688

675:                                              ; preds = %671
  %676 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %677 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %676, i32 0, i32 17
  %678 = load i32, i32* %677, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %688

680:                                              ; preds = %675
  %681 = load i32, i32* @SW_INITIAL, align 4
  %682 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %683 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %682, i32 0, i32 2
  store i32 %681, i32* %683, align 4
  %684 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %685 = call i32 @pcm_output(%struct.TYPE_16__* %684, i32 0, i32 0)
  %686 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %687 = call i32 @pcm_write_sync(%struct.TYPE_16__* %686)
  br label %688

688:                                              ; preds = %680, %675, %671
  %689 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %690 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %691 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %692 = call i32 @pcm_shutdown(%struct.TYPE_16__* %689, %struct.TYPE_15__* %690, %struct.TYPE_15__* %691)
  store i32 0, i32* %5, align 4
  br label %1129

693:                                              ; preds = %73
  %694 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %695 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %696 = icmp ne %struct.TYPE_15__* %695, null
  br i1 %696, label %697, label %702

697:                                              ; preds = %693
  %698 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %699 = call i32 @pcm_flush_frag(%struct.TYPE_16__* %698)
  %700 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %701 = call i32 @pcm_write_sync(%struct.TYPE_16__* %700)
  br label %702

702:                                              ; preds = %697, %693
  %703 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %704 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %705 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %706 = call i32 @pcm_shutdown(%struct.TYPE_16__* %703, %struct.TYPE_15__* %704, %struct.TYPE_15__* %705)
  store i32 0, i32* %5, align 4
  br label %1129

707:                                              ; preds = %73
  %708 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0))
  %709 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %710 = icmp ne %struct.TYPE_15__* %709, null
  br i1 %710, label %714, label %711

711:                                              ; preds = %707
  %712 = load i32, i32* @EINVAL, align 4
  %713 = sub nsw i32 0, %712
  store i32 %713, i32* %5, align 4
  br label %1129

714:                                              ; preds = %707
  %715 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %716 = call i32 @pcm_flush_frag(%struct.TYPE_16__* %715)
  store i32 0, i32* %5, align 4
  br label %1129

717:                                              ; preds = %73
  %718 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  %719 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %720 = icmp ne %struct.TYPE_15__* %719, null
  br i1 %720, label %724, label %721

721:                                              ; preds = %717
  %722 = load i32, i32* @EINVAL, align 4
  %723 = sub nsw i32 0, %722
  store i32 %723, i32* %5, align 4
  br label %1129

724:                                              ; preds = %717
  %725 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %726 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %725, i32 0, i32 13
  %727 = load i64, i64* %16, align 8
  %728 = call i32 @spin_lock_irqsave(i32* %726, i64 %727)
  %729 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %730 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %729, i32 0, i32 15
  %731 = load i32, i32* %730, align 4
  %732 = load i32, i32* @HW_RUNNING, align 4
  %733 = icmp eq i32 %731, %732
  br i1 %733, label %734, label %758

734:                                              ; preds = %724
  %735 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %736 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %735, i32 0, i32 2
  %737 = load i32, i32* %736, align 4
  %738 = load i32, i32* @SW_RUN, align 4
  %739 = icmp eq i32 %737, %738
  %740 = zext i1 %739 to i32
  %741 = call i32 @ASSERT(i32 %740)
  %742 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %743 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %742, i32 0, i32 14
  %744 = call i32 @li_read_USTMSC(i32* %743, %struct.TYPE_17__* %27)
  %745 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %746 = load i32, i32* %745, align 4
  %747 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %748 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %747, i32 0, i32 7
  %749 = load i32, i32* %748, align 4
  %750 = sub nsw i32 %746, %749
  %751 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 3
  store i32 %750, i32* %751, align 4
  %752 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %753 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %752, i32 0, i32 8
  %754 = load i32, i32* %753, align 4
  %755 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 3
  %756 = load i32, i32* %755, align 4
  %757 = mul nsw i32 %756, %754
  store i32 %757, i32* %755, align 4
  br label %763

758:                                              ; preds = %724
  %759 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %760 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %759, i32 0, i32 9
  %761 = load i32, i32* %760, align 4
  %762 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 3
  store i32 %761, i32* %762, align 4
  br label %763

763:                                              ; preds = %758, %734
  %764 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %765 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %764, i32 0, i32 16
  %766 = load i32, i32* %765, align 4
  %767 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 5
  store i32 %766, i32* %767, align 4
  %768 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 4
  store i32 0, i32* %768, align 4
  %769 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %770 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %769, i32 0, i32 16
  store i32 0, i32* %770, align 4
  %771 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %772 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %771, i32 0, i32 13
  %773 = load i64, i64* %16, align 8
  %774 = call i32 @spin_unlock_irqrestore(i32* %772, i64 %773)
  %775 = load i64, i64* %9, align 8
  %776 = inttoptr i64 %775 to i8*
  %777 = call i32 @copy_to_user(i8* %776, %struct.count_info* %15, i32 24)
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %779, label %782

779:                                              ; preds = %763
  %780 = load i32, i32* @EFAULT, align 4
  %781 = sub nsw i32 0, %780
  store i32 %781, i32* %5, align 4
  br label %1129

782:                                              ; preds = %763
  store i32 0, i32* %5, align 4
  br label %1129

783:                                              ; preds = %73
  %784 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0))
  %785 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %786 = icmp ne %struct.TYPE_15__* %785, null
  br i1 %786, label %790, label %787

787:                                              ; preds = %783
  %788 = load i32, i32* @EINVAL, align 4
  %789 = sub nsw i32 0, %788
  store i32 %789, i32* %5, align 4
  br label %1129

790:                                              ; preds = %783
  %791 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %792 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %791, i32 0, i32 13
  %793 = load i64, i64* %16, align 8
  %794 = call i32 @spin_lock_irqsave(i32* %792, i64 %793)
  %795 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %796 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %795, i32 0, i32 15
  %797 = load i32, i32* %796, align 4
  %798 = load i32, i32* @HW_RUNNING, align 4
  %799 = icmp eq i32 %797, %798
  br i1 %799, label %800, label %824

800:                                              ; preds = %790
  %801 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %802 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %801, i32 0, i32 2
  %803 = load i32, i32* %802, align 4
  %804 = load i32, i32* @SW_RUN, align 4
  %805 = icmp eq i32 %803, %804
  %806 = zext i1 %805 to i32
  %807 = call i32 @ASSERT(i32 %806)
  %808 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %809 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %808, i32 0, i32 14
  %810 = call i32 @li_read_USTMSC(i32* %809, %struct.TYPE_17__* %28)
  %811 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %812 = load i32, i32* %811, align 4
  %813 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %814 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %813, i32 0, i32 7
  %815 = load i32, i32* %814, align 4
  %816 = sub nsw i32 %812, %815
  %817 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 3
  store i32 %816, i32* %817, align 4
  %818 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %819 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %818, i32 0, i32 8
  %820 = load i32, i32* %819, align 4
  %821 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 3
  %822 = load i32, i32* %821, align 4
  %823 = mul nsw i32 %822, %820
  store i32 %823, i32* %821, align 4
  br label %829

824:                                              ; preds = %790
  %825 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %826 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %825, i32 0, i32 9
  %827 = load i32, i32* %826, align 4
  %828 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 3
  store i32 %827, i32* %828, align 4
  br label %829

829:                                              ; preds = %824, %800
  %830 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %831 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %830, i32 0, i32 16
  %832 = load i32, i32* %831, align 4
  %833 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 5
  store i32 %832, i32* %833, align 4
  %834 = getelementptr inbounds %struct.count_info, %struct.count_info* %15, i32 0, i32 4
  store i32 0, i32* %834, align 4
  %835 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %836 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %835, i32 0, i32 16
  store i32 0, i32* %836, align 4
  %837 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %838 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %837, i32 0, i32 13
  %839 = load i64, i64* %16, align 8
  %840 = call i32 @spin_unlock_irqrestore(i32* %838, i64 %839)
  %841 = load i64, i64* %9, align 8
  %842 = inttoptr i64 %841 to i8*
  %843 = call i32 @copy_to_user(i8* %842, %struct.count_info* %15, i32 24)
  %844 = icmp ne i32 %843, 0
  br i1 %844, label %845, label %848

845:                                              ; preds = %829
  %846 = load i32, i32* @EFAULT, align 4
  %847 = sub nsw i32 0, %846
  store i32 %847, i32* %5, align 4
  br label %1129

848:                                              ; preds = %829
  store i32 0, i32* %5, align 4
  br label %1129

849:                                              ; preds = %73
  %850 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0))
  %851 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %852 = icmp ne %struct.TYPE_15__* %851, null
  br i1 %852, label %856, label %853

853:                                              ; preds = %849
  %854 = load i32, i32* @EINVAL, align 4
  %855 = sub nsw i32 0, %854
  store i32 %855, i32* %5, align 4
  br label %1129

856:                                              ; preds = %849
  %857 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %858 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %857, i32 0, i32 13
  %859 = load i64, i64* %16, align 8
  %860 = call i32 @spin_lock_irqsave(i32* %858, i64 %859)
  %861 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %862 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %861, i32 0, i32 8
  %863 = load i32, i32* %862, align 4
  store i32 %863, i32* %29, align 4
  %864 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %865 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %864, i32 0, i32 10
  %866 = load i32, i32* %865, align 4
  %867 = load i32, i32* %29, align 4
  %868 = sdiv i32 %866, %867
  store i32 %868, i32* %17, align 4
  %869 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %870 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %869, i32 0, i32 15
  %871 = load i32, i32* %870, align 4
  %872 = load i32, i32* @HW_RUNNING, align 4
  %873 = icmp eq i32 %871, %872
  br i1 %873, label %874, label %908

874:                                              ; preds = %856
  %875 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %876 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %875, i32 0, i32 11
  %877 = load i32, i32* %876, align 4
  store i32 %877, i32* %34, align 4
  %878 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %879 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %878, i32 0, i32 14
  %880 = call i32 @li_read_swptr(i32* %879)
  store i32 %880, i32* %30, align 4
  %881 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %882 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %881, i32 0, i32 14
  %883 = call i32 @li_read_USTMSC(i32* %882, %struct.TYPE_17__* %36)
  %884 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %885 = load i32, i32* %884, align 4
  %886 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %887 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %886, i32 0, i32 7
  %888 = load i32, i32* %887, align 4
  %889 = sub nsw i32 %885, %888
  store i32 %889, i32* %32, align 4
  %890 = load i32, i32* %32, align 4
  %891 = load i32, i32* %29, align 4
  %892 = mul nsw i32 %890, %891
  store i32 %892, i32* %35, align 4
  %893 = load i32, i32* %35, align 4
  %894 = load i32, i32* %34, align 4
  %895 = srem i32 %893, %894
  store i32 %895, i32* %31, align 4
  %896 = load i32, i32* %30, align 4
  %897 = load i32, i32* %31, align 4
  %898 = sub nsw i32 %896, %897
  %899 = load i32, i32* %34, align 4
  %900 = add nsw i32 %898, %899
  %901 = load i32, i32* %34, align 4
  %902 = srem i32 %900, %901
  store i32 %902, i32* %33, align 4
  %903 = load i32, i32* %33, align 4
  %904 = load i32, i32* %29, align 4
  %905 = sdiv i32 %903, %904
  %906 = load i32, i32* %17, align 4
  %907 = add nsw i32 %906, %905
  store i32 %907, i32* %17, align 4
  br label %908

908:                                              ; preds = %874, %856
  %909 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %910 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %909, i32 0, i32 13
  %911 = load i64, i64* %16, align 8
  %912 = call i32 @spin_unlock_irqrestore(i32* %910, i64 %911)
  %913 = load i32, i32* %17, align 4
  %914 = load i64, i64* %9, align 8
  %915 = inttoptr i64 %914 to i32*
  %916 = call i32 @put_user(i32 %913, i32* %915)
  store i32 %916, i32* %5, align 4
  br label %1129

917:                                              ; preds = %73
  %918 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  br label %1124

919:                                              ; preds = %73
  %920 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  %921 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %922 = icmp ne %struct.TYPE_15__* %921, null
  br i1 %922, label %923, label %943

923:                                              ; preds = %919
  %924 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %925 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %924, i32 0, i32 13
  %926 = load i64, i64* %16, align 8
  %927 = call i32 @spin_lock_irqsave(i32* %925, i64 %926)
  %928 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %929 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %928, i32 0, i32 12
  %930 = load i32, i32* %929, align 4
  %931 = load i32, i32* @DISABLED, align 4
  %932 = and i32 %930, %931
  %933 = icmp ne i32 %932, 0
  br i1 %933, label %938, label %934

934:                                              ; preds = %923
  %935 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %936 = load i32, i32* %17, align 4
  %937 = or i32 %936, %935
  store i32 %937, i32* %17, align 4
  br label %938

938:                                              ; preds = %934, %923
  %939 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %940 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %939, i32 0, i32 13
  %941 = load i64, i64* %16, align 8
  %942 = call i32 @spin_unlock_irqrestore(i32* %940, i64 %941)
  br label %943

943:                                              ; preds = %938, %919
  %944 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %945 = icmp ne %struct.TYPE_15__* %944, null
  br i1 %945, label %946, label %966

946:                                              ; preds = %943
  %947 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %948 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %947, i32 0, i32 13
  %949 = load i64, i64* %16, align 8
  %950 = call i32 @spin_lock_irqsave(i32* %948, i64 %949)
  %951 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %952 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %951, i32 0, i32 12
  %953 = load i32, i32* %952, align 4
  %954 = load i32, i32* @DISABLED, align 4
  %955 = and i32 %953, %954
  %956 = icmp ne i32 %955, 0
  br i1 %956, label %961, label %957

957:                                              ; preds = %946
  %958 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %959 = load i32, i32* %17, align 4
  %960 = or i32 %959, %958
  store i32 %960, i32* %17, align 4
  br label %961

961:                                              ; preds = %957, %946
  %962 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %963 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %962, i32 0, i32 13
  %964 = load i64, i64* %16, align 8
  %965 = call i32 @spin_unlock_irqrestore(i32* %963, i64 %964)
  br label %966

966:                                              ; preds = %961, %943
  %967 = load i32, i32* %17, align 4
  %968 = load i64, i64* %9, align 8
  %969 = inttoptr i64 %968 to i32*
  %970 = call i32 @put_user(i32 %967, i32* %969)
  store i32 %970, i32* %5, align 4
  br label %1129

971:                                              ; preds = %73
  %972 = load i32, i32* %17, align 4
  %973 = load i64, i64* %9, align 8
  %974 = inttoptr i64 %973 to i32*
  %975 = call i32 @get_user(i32 %972, i32* %974)
  %976 = icmp ne i32 %975, 0
  br i1 %976, label %977, label %980

977:                                              ; preds = %971
  %978 = load i32, i32* @EFAULT, align 4
  %979 = sub nsw i32 0, %978
  store i32 %979, i32* %5, align 4
  br label %1129

980:                                              ; preds = %971
  %981 = load i32, i32* %17, align 4
  %982 = call i32 (i8*, ...) @DBGX(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %981)
  %983 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %984 = icmp ne %struct.TYPE_15__* %983, null
  br i1 %984, label %985, label %990

985:                                              ; preds = %980
  %986 = load i32, i32* %17, align 4
  %987 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %988 = and i32 %986, %987
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %990, label %998

990:                                              ; preds = %985, %980
  %991 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %992 = icmp ne %struct.TYPE_15__* %991, null
  br i1 %992, label %993, label %1007

993:                                              ; preds = %990
  %994 = load i32, i32* %17, align 4
  %995 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %996 = and i32 %994, %995
  %997 = icmp ne i32 %996, 0
  br i1 %997, label %1007, label %998

998:                                              ; preds = %993, %985
  %999 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %1000 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %999, i32 0, i32 2
  %1001 = load i32, i32* %1000, align 4
  %1002 = load i32, i32* @SW_INITIAL, align 4
  %1003 = icmp ne i32 %1001, %1002
  br i1 %1003, label %1004, label %1007

1004:                                             ; preds = %998
  %1005 = load i32, i32* @EINVAL, align 4
  %1006 = sub nsw i32 0, %1005
  store i32 %1006, i32* %5, align 4
  br label %1129

1007:                                             ; preds = %998, %993, %990
  %1008 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1009 = icmp ne %struct.TYPE_15__* %1008, null
  br i1 %1009, label %1010, label %1065

1010:                                             ; preds = %1007
  %1011 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1012 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1011, i32 0, i32 13
  %1013 = load i64, i64* %16, align 8
  %1014 = call i32 @spin_lock_irqsave(i32* %1012, i64 %1013)
  %1015 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1016 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1015, i32 0, i32 15
  %1017 = load i32, i32* %1016, align 4
  store i32 %1017, i32* %37, align 4
  %1018 = load i32, i32* %17, align 4
  %1019 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %1020 = and i32 %1018, %1019
  %1021 = icmp ne i32 %1020, 0
  br i1 %1021, label %1022, label %1029

1022:                                             ; preds = %1010
  %1023 = load i32, i32* @DISABLED, align 4
  %1024 = xor i32 %1023, -1
  %1025 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1026 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1025, i32 0, i32 12
  %1027 = load i32, i32* %1026, align 4
  %1028 = and i32 %1027, %1024
  store i32 %1028, i32* %1026, align 4
  br label %1035

1029:                                             ; preds = %1010
  %1030 = load i32, i32* @DISABLED, align 4
  %1031 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1032 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1031, i32 0, i32 12
  %1033 = load i32, i32* %1032, align 4
  %1034 = or i32 %1033, %1030
  store i32 %1034, i32* %1032, align 4
  br label %1035

1035:                                             ; preds = %1029, %1022
  %1036 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1037 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1036, i32 0, i32 13
  %1038 = load i64, i64* %16, align 8
  %1039 = call i32 @spin_unlock_irqrestore(i32* %1037, i64 %1038)
  %1040 = load i32, i32* %37, align 4
  %1041 = load i32, i32* @HW_RUNNING, align 4
  %1042 = icmp ne i32 %1040, %1041
  br i1 %1042, label %1043, label %1064

1043:                                             ; preds = %1035
  %1044 = load i32, i32* %17, align 4
  %1045 = load i32, i32* @PCM_ENABLE_INPUT, align 4
  %1046 = and i32 %1044, %1045
  %1047 = icmp ne i32 %1046, 0
  br i1 %1047, label %1048, label %1064

1048:                                             ; preds = %1043
  %1049 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1050 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1049, i32 0, i32 2
  %1051 = load i32, i32* %1050, align 4
  %1052 = load i32, i32* @SW_INITIAL, align 4
  %1053 = icmp eq i32 %1051, %1052
  br i1 %1053, label %1054, label %1059

1054:                                             ; preds = %1048
  %1055 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %1056 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1057 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1058 = call i32 @pcm_setup(%struct.TYPE_16__* %1055, %struct.TYPE_15__* %1056, %struct.TYPE_15__* %1057)
  br label %1063

1059:                                             ; preds = %1048
  %1060 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %1061 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1060, i32 0, i32 14
  %1062 = call i32 @li_activate_dma(i32* %1061)
  br label %1063

1063:                                             ; preds = %1059, %1054
  br label %1064

1064:                                             ; preds = %1063, %1043, %1035
  br label %1065

1065:                                             ; preds = %1064, %1007
  %1066 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1067 = icmp ne %struct.TYPE_15__* %1066, null
  br i1 %1067, label %1068, label %1118

1068:                                             ; preds = %1065
  %1069 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1070 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1069, i32 0, i32 13
  %1071 = load i64, i64* %16, align 8
  %1072 = call i32 @spin_lock_irqsave(i32* %1070, i64 %1071)
  %1073 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1074 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1073, i32 0, i32 12
  %1075 = load i32, i32* %1074, align 4
  store i32 %1075, i32* %38, align 4
  %1076 = load i32, i32* %17, align 4
  %1077 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %1078 = and i32 %1076, %1077
  %1079 = icmp ne i32 %1078, 0
  br i1 %1079, label %1080, label %1087

1080:                                             ; preds = %1068
  %1081 = load i32, i32* @DISABLED, align 4
  %1082 = xor i32 %1081, -1
  %1083 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1084 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1083, i32 0, i32 12
  %1085 = load i32, i32* %1084, align 4
  %1086 = and i32 %1085, %1082
  store i32 %1086, i32* %1084, align 4
  br label %1093

1087:                                             ; preds = %1068
  %1088 = load i32, i32* @DISABLED, align 4
  %1089 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1090 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1089, i32 0, i32 12
  %1091 = load i32, i32* %1090, align 4
  %1092 = or i32 %1091, %1088
  store i32 %1092, i32* %1090, align 4
  br label %1093

1093:                                             ; preds = %1087, %1080
  %1094 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1095 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1094, i32 0, i32 13
  %1096 = load i64, i64* %16, align 8
  %1097 = call i32 @spin_unlock_irqrestore(i32* %1095, i64 %1096)
  %1098 = load i32, i32* %38, align 4
  %1099 = load i32, i32* @DISABLED, align 4
  %1100 = and i32 %1098, %1099
  %1101 = icmp ne i32 %1100, 0
  br i1 %1101, label %1102, label %1117

1102:                                             ; preds = %1093
  %1103 = load i32, i32* %17, align 4
  %1104 = load i32, i32* @PCM_ENABLE_OUTPUT, align 4
  %1105 = and i32 %1103, %1104
  %1106 = icmp ne i32 %1105, 0
  br i1 %1106, label %1107, label %1117

1107:                                             ; preds = %1102
  %1108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %1109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %1108, i32 0, i32 2
  %1110 = load i32, i32* %1109, align 4
  %1111 = load i32, i32* @SW_RUN, align 4
  %1112 = icmp eq i32 %1110, %1111
  br i1 %1112, label %1113, label %1116

1113:                                             ; preds = %1107
  %1114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %1115 = call i32 @pcm_output(%struct.TYPE_16__* %1114, i32 0, i32 0)
  br label %1116

1116:                                             ; preds = %1113, %1107
  br label %1117

1117:                                             ; preds = %1116, %1102, %1093
  br label %1118

1118:                                             ; preds = %1117, %1065
  store i32 0, i32* %5, align 4
  br label %1129

1119:                                             ; preds = %73
  %1120 = load i32, i32* %8, align 4
  %1121 = call i32 @DBGP(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0), i32 %1120)
  %1122 = load i32, i32* @EINVAL, align 4
  %1123 = sub nsw i32 0, %1122
  store i32 %1123, i32* %5, align 4
  br label %1129

1124:                                             ; preds = %917
  %1125 = load i32, i32* %8, align 4
  %1126 = call i32 @DBGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i32 %1125)
  %1127 = load i32, i32* @EINVAL, align 4
  %1128 = sub nsw i32 0, %1127
  store i32 %1128, i32* %5, align 4
  br label %1129

1129:                                             ; preds = %1124, %1119, %1118, %1004, %977, %966, %908, %853, %848, %845, %787, %782, %779, %721, %714, %711, %702, %688, %658, %657, %654, %618, %608, %603, %600, %564, %554, %542, %538, %514, %499, %492, %475, %455, %439, %431, %420, %400, %326, %312, %295, %291, %279, %262, %253, %242, %231, %212, %203, %192, %181, %143, %129, %114, %105, %99, %88, %81
  %1130 = load i32, i32* %5, align 4
  ret i32 %1130
}

declare dso_local i32 @DBGEV(i8*, %struct.inode*, %struct.file*, i32, i64) #1

declare dso_local i32 @DBGX(i8*, ...) #1

declare dso_local i32 @put_user(i32, i32*) #1

declare dso_local i32 @get_user(i32, i32*) #1

declare dso_local i32 @pcm_setup(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @MIN_FRAGCOUNT(i32) #1

declare dso_local i32 @MAX_FRAGCOUNT(i32) #1

declare dso_local i32 @DBGPV(i8*, ...) #1

declare dso_local i32 @DBGP(i8*, i32) #1

declare dso_local i32 @DBGXV(i8*, ...) #1

declare dso_local i32 @swb_inc_u(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @copy_to_user(i8*, %struct.count_info*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pcm_output(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @pcm_write_sync(%struct.TYPE_16__*) #1

declare dso_local i32 @pcm_shutdown(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @pcm_flush_frag(%struct.TYPE_16__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @li_read_USTMSC(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @li_read_swptr(i32*) #1

declare dso_local i32 @li_activate_dma(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
