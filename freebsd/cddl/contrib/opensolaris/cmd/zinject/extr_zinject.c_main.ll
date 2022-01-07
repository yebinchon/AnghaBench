; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zinject/extr_zinject.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zinject/extr_zinject.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64, i32, i32, i8*, i32, i32, i32, i32, i32 }

@ZIO_TYPES = common dso_local global i32 0, align 4
@VDEV_STATE_UNKNOWN = common dso_local global i32 0, align 4
@TYPE_INVAL = common dso_local global i64 0, align 8
@MAXNAMELEN = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"internal error: failed to initialize ZFS library\0A\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@ZFS_DEV = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@zfs_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to open ZFS device\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"No handlers registered.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Run 'zinject -h' for usage information.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c":aA:b:d:D:f:Fg:qhIc:t:T:l:mr:s:e:uL:p:\00", align 1
@ZINJECT_FLUSH_ARC = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"degrade\00", align 1
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"fault\00", align 1
@VDEV_STATE_FAULTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [51 x i8] c"invalid action '%s': must be 'degrade' or 'fault'\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"invalid i/o delay value: '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"checksum\00", align 1
@ECKSUM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [5 x i8] c"nxio\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"dtl\00", align 1
@ECHILD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [61 x i8] c"invalid error type '%s': must be 'io', 'checksum' or 'nxio'\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"frequency range must be in the range (0, 100]\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"invalid duration '%s': must be a positive integer\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"invalid level '%s': must be an integer\0A\00", align 1
@ZINJECT_PANIC = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@ZIO_TYPE_READ = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@ZIO_TYPE_WRITE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [5 x i8] c"free\00", align 1
@ZIO_TYPE_FREE = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [6 x i8] c"claim\00", align 1
@ZIO_TYPE_CLAIM = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"invalid I/O type '%s': must be 'read', 'write', 'free', 'claim' or 'all'\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"invalid type '%s'\0A\00", align 1
@ZINJECT_UNLOAD_SPA = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [25 x i8] c"invalid label type '%s'\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"option -%c requires an operand\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@ZINJECT_IGNORED_WRITES = common dso_local global i64 0, align 8
@ZINJECT_UNINITIALIZED = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [49 x i8] c"cancel (-c) incompatible with any other options\0A\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"extraneous argument to '-c'\0A\00", align 1
@.str.29 = private unnamed_addr constant [53 x i8] c"invalid handle id '%s': must be an integer or 'all'\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"device (-d) incompatible with data error injection\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"device (-d) injection requires a single pool name\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"device error type must be 'io' or 'nxio'\0A\00", align 1
@.str.33 = private unnamed_addr constant [40 x i8] c"raw (-b) format with any other options\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"raw (-b) format expects a single pool name\0A\00", align 1
@.str.35 = private unnamed_addr constant [44 x i8] c"data error type must be 'checksum' or 'io'\0A\00", align 1
@ZINJECT_DATA_FAULT = common dso_local global i8* null, align 8
@.str.36 = private unnamed_addr constant [44 x i8] c"panic (-p) incompatible with other options\0A\00", align 1
@.str.37 = private unnamed_addr constant [69 x i8] c"panic (-p) injection requires a single pool name and an optional id\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"-s or -g meaningless without -I (ignore writes)\0A\00", align 1
@.str.39 = private unnamed_addr constant [80 x i8] c"choose a duration either in seconds (-s) or a number of txgs (-g) but not both\0A\00", align 1
@.str.40 = private unnamed_addr constant [58 x i8] c"ignore writes (-I) injection requires a single pool name\0A\00", align 1
@.str.41 = private unnamed_addr constant [78 x i8] c"at least one of '-b', '-d', '-t', '-a', '-p', '-I' or '-u' must be specified\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"extraneous argument for '-f'\0A\00", align 1
@ZINJECT_NULL = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [16 x i8] c"missing object\0A\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %32 = load i32, i32* @ZIO_TYPES, align 4
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* @VDEV_STATE_UNKNOWN, align 4
  store i32 %33, i32* %17, align 4
  %34 = load i64, i64* @TYPE_INVAL, align 8
  store i64 %34, i64* %18, align 8
  %35 = load i64, i64* @TYPE_INVAL, align 8
  store i64 %35, i64* %19, align 8
  %36 = bitcast %struct.TYPE_7__* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 56, i1 false)
  %37 = load i32, i32* @MAXNAMELEN, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %21, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %22, align 8
  %41 = load i32, i32* @MAXNAMELEN, align 4
  %42 = zext i32 %41 to i64
  %43 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %23, align 8
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %29, align 4
  %44 = call i32* (...) @libzfs_init()
  store i32* %44, i32** @g_zfs, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

49:                                               ; preds = %2
  %50 = load i32*, i32** @g_zfs, align 8
  %51 = load i32, i32* @B_TRUE, align 4
  %52 = call i32 @libzfs_print_on_error(i32* %50, i32 %51)
  %53 = load i32, i32* @ZFS_DEV, align 4
  %54 = load i32, i32* @O_RDWR, align 4
  %55 = call i32 @open(i32 %53, i32 %54)
  store i32 %55, i32* @zfs_fd, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @stderr, align 4
  %59 = call i32 (i32, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

60:                                               ; preds = %49
  %61 = load i32, i32* %4, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = call i64 (...) @print_all_handlers()
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %63
  store i32 0, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %333, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = call i32 @getopt(i32 %72, i8** %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 %74, i32* %6, align 4
  %75 = icmp ne i32 %74, -1
  br i1 %75, label %76, label %334

76:                                               ; preds = %71
  %77 = load i32, i32* %6, align 4
  switch i32 %77, label %333 [
    i32 97, label %78
    i32 65, label %82
    i32 98, label %101
    i32 99, label %103
    i32 100, label %105
    i32 68, label %107
    i32 101, label %120
    i32 102, label %153
    i32 70, label %169
    i32 103, label %172
    i32 104, label %194
    i32 73, label %196
    i32 108, label %205
    i32 109, label %219
    i32 112, label %220
    i32 113, label %227
    i32 114, label %228
    i32 115, label %230
    i32 84, label %249
    i32 116, label %289
    i32 117, label %304
    i32 76, label %308
    i32 58, label %323
    i32 63, label %328
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* @ZINJECT_FLUSH_ARC, align 4
  %80 = load i32, i32* %29, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %29, align 4
  br label %333

82:                                               ; preds = %76
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i32 @strcasecmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  store i32 %87, i32* %17, align 4
  br label %100

88:                                               ; preds = %82
  %89 = load i8*, i8** @optarg, align 8
  %90 = call i32 @strcasecmp(i8* %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @VDEV_STATE_FAULTED, align 4
  store i32 %93, i32* %17, align 4
  br label %99

94:                                               ; preds = %88
  %95 = load i32, i32* @stderr, align 4
  %96 = load i8*, i8** @optarg, align 8
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %95, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i8* %96)
  %98 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %86
  br label %333

101:                                              ; preds = %76
  %102 = load i8*, i8** @optarg, align 8
  store i8* %102, i8** %10, align 8
  br label %333

103:                                              ; preds = %76
  %104 = load i8*, i8** @optarg, align 8
  store i8* %104, i8** %8, align 8
  br label %333

105:                                              ; preds = %76
  %106 = load i8*, i8** @optarg, align 8
  store i8* %106, i8** %11, align 8
  br label %333

107:                                              ; preds = %76
  %108 = load i8*, i8** @optarg, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 9
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 8
  %111 = call i32 @parse_delay(i8* %108, i32* %109, i32* %110)
  store i32 %111, i32* %28, align 4
  %112 = load i32, i32* %28, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* @stderr, align 4
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %116)
  %118 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

119:                                              ; preds = %107
  br label %333

120:                                              ; preds = %76
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i32 @strcasecmp(i8* %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* @EIO, align 4
  store i32 %125, i32* %14, align 4
  br label %152

126:                                              ; preds = %120
  %127 = load i8*, i8** @optarg, align 8
  %128 = call i32 @strcasecmp(i8* %127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0))
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i32, i32* @ECKSUM, align 4
  store i32 %131, i32* %14, align 4
  br label %151

132:                                              ; preds = %126
  %133 = load i8*, i8** @optarg, align 8
  %134 = call i32 @strcasecmp(i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @ENXIO, align 4
  store i32 %137, i32* %14, align 4
  br label %150

138:                                              ; preds = %132
  %139 = load i8*, i8** @optarg, align 8
  %140 = call i32 @strcasecmp(i8* %139, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = load i32, i32* @ECHILD, align 4
  store i32 %143, i32* %14, align 4
  br label %149

144:                                              ; preds = %138
  %145 = load i32, i32* @stderr, align 4
  %146 = load i8*, i8** @optarg, align 8
  %147 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0), i8* %146)
  %148 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

149:                                              ; preds = %142
  br label %150

150:                                              ; preds = %149, %136
  br label %151

151:                                              ; preds = %150, %130
  br label %152

152:                                              ; preds = %151, %124
  br label %333

153:                                              ; preds = %76
  %154 = load i8*, i8** @optarg, align 8
  %155 = call i8* @atoi(i8* %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %156, i32* %157, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %165, label %161

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp sgt i32 %163, 100
  br i1 %164, label %165, label %168

165:                                              ; preds = %161, %153
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.14, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

168:                                              ; preds = %161
  br label %333

169:                                              ; preds = %76
  %170 = load i32, i32* @B_TRUE, align 4
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  store i32 %170, i32* %171, align 4
  br label %333

172:                                              ; preds = %76
  store i32 1, i32* %26, align 4
  %173 = load i8*, i8** @optarg, align 8
  %174 = call i64 @strtol(i8* %173, i8** %9, i32 10)
  %175 = trunc i64 %174 to i32
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %175, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %172
  %181 = load i8*, i8** %9, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %180, %172
  %186 = load i32, i32* @stderr, align 4
  %187 = load i8*, i8** @optarg, align 8
  %188 = call i32 (i32, i8*, ...) @fprintf(i32 %186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i8* %187)
  %189 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %192, -1
  store i32 %193, i32* %191, align 4
  br label %333

194:                                              ; preds = %76
  %195 = call i32 (...) @usage()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

196:                                              ; preds = %76
  store i32 1, i32* %25, align 4
  %197 = load i32, i32* %27, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load i32, i32* %26, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 30, i32* %203, align 4
  br label %204

204:                                              ; preds = %202, %199, %196
  br label %333

205:                                              ; preds = %76
  %206 = load i8*, i8** @optarg, align 8
  %207 = call i64 @strtol(i8* %206, i8** %9, i32 10)
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %12, align 4
  %209 = load i8*, i8** %9, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %205
  %214 = load i32, i32* @stderr, align 4
  %215 = load i8*, i8** @optarg, align 8
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0), i8* %215)
  %217 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

218:                                              ; preds = %205
  br label %333

219:                                              ; preds = %76
  store i32 1, i32* %15, align 4
  br label %333

220:                                              ; preds = %76
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** @optarg, align 8
  %224 = call i32 @strlcpy(i32 %222, i8* %223, i32 4)
  %225 = load i64, i64* @ZINJECT_PANIC, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i64 %225, i64* %226, align 8
  br label %333

227:                                              ; preds = %76
  store i32 1, i32* %13, align 4
  br label %333

228:                                              ; preds = %76
  %229 = load i8*, i8** @optarg, align 8
  store i8* %229, i8** %7, align 8
  br label %333

230:                                              ; preds = %76
  store i32 1, i32* %27, align 4
  %231 = load i8*, i8** @optarg, align 8
  %232 = call i64 @strtol(i8* %231, i8** %9, i32 10)
  %233 = trunc i64 %232 to i32
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32 %233, i32* %234, align 4
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %243, label %238

238:                                              ; preds = %230
  %239 = load i8*, i8** %9, align 8
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238, %230
  %244 = load i32, i32* @stderr, align 4
  %245 = load i8*, i8** @optarg, align 8
  %246 = call i32 (i32, i8*, ...) @fprintf(i32 %244, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0), i8* %245)
  %247 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

248:                                              ; preds = %238
  br label %333

249:                                              ; preds = %76
  %250 = load i8*, i8** @optarg, align 8
  %251 = call i32 @strcasecmp(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %249
  %254 = load i32, i32* @ZIO_TYPE_READ, align 4
  store i32 %254, i32* %16, align 4
  br label %288

255:                                              ; preds = %249
  %256 = load i8*, i8** @optarg, align 8
  %257 = call i32 @strcasecmp(i8* %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0))
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i32, i32* @ZIO_TYPE_WRITE, align 4
  store i32 %260, i32* %16, align 4
  br label %287

261:                                              ; preds = %255
  %262 = load i8*, i8** @optarg, align 8
  %263 = call i32 @strcasecmp(i8* %262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i64 0, i64 0))
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load i32, i32* @ZIO_TYPE_FREE, align 4
  store i32 %266, i32* %16, align 4
  br label %286

267:                                              ; preds = %261
  %268 = load i8*, i8** @optarg, align 8
  %269 = call i32 @strcasecmp(i8* %268, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0))
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %267
  %272 = load i32, i32* @ZIO_TYPE_CLAIM, align 4
  store i32 %272, i32* %16, align 4
  br label %285

273:                                              ; preds = %267
  %274 = load i8*, i8** @optarg, align 8
  %275 = call i32 @strcasecmp(i8* %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %273
  %278 = load i32, i32* @ZIO_TYPES, align 4
  store i32 %278, i32* %16, align 4
  br label %284

279:                                              ; preds = %273
  %280 = load i32, i32* @stderr, align 4
  %281 = load i8*, i8** @optarg, align 8
  %282 = call i32 (i32, i8*, ...) @fprintf(i32 %280, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.22, i64 0, i64 0), i8* %281)
  %283 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

284:                                              ; preds = %277
  br label %285

285:                                              ; preds = %284, %271
  br label %286

286:                                              ; preds = %285, %265
  br label %287

287:                                              ; preds = %286, %259
  br label %288

288:                                              ; preds = %287, %253
  br label %333

289:                                              ; preds = %76
  %290 = load i8*, i8** @optarg, align 8
  %291 = call i64 @name_to_type(i8* %290)
  store i64 %291, i64* %18, align 8
  %292 = load i64, i64* @TYPE_INVAL, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %303

294:                                              ; preds = %289
  %295 = load i64, i64* %18, align 8
  %296 = call i32 @MOS_TYPE(i64 %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %303, label %298

298:                                              ; preds = %294
  %299 = load i32, i32* @stderr, align 4
  %300 = load i8*, i8** @optarg, align 8
  %301 = call i32 (i32, i8*, ...) @fprintf(i32 %299, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i8* %300)
  %302 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

303:                                              ; preds = %294, %289
  br label %333

304:                                              ; preds = %76
  %305 = load i32, i32* @ZINJECT_UNLOAD_SPA, align 4
  %306 = load i32, i32* %29, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %29, align 4
  br label %333

308:                                              ; preds = %76
  %309 = load i8*, i8** @optarg, align 8
  %310 = call i64 @name_to_type(i8* %309)
  store i64 %310, i64* %19, align 8
  %311 = load i64, i64* @TYPE_INVAL, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %322

313:                                              ; preds = %308
  %314 = load i64, i64* %18, align 8
  %315 = call i32 @LABEL_TYPE(i64 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %313
  %318 = load i32, i32* @stderr, align 4
  %319 = load i8*, i8** @optarg, align 8
  %320 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i8* %319)
  %321 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

322:                                              ; preds = %313, %308
  br label %333

323:                                              ; preds = %76
  %324 = load i32, i32* @stderr, align 4
  %325 = load i32, i32* @optopt, align 4
  %326 = call i32 (i32, i8*, ...) @fprintf(i32 %324, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 %325)
  %327 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

328:                                              ; preds = %76
  %329 = load i32, i32* @stderr, align 4
  %330 = load i32, i32* @optopt, align 4
  %331 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 %330)
  %332 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

333:                                              ; preds = %76, %322, %304, %303, %288, %248, %228, %227, %220, %219, %218, %204, %190, %169, %168, %152, %119, %105, %103, %101, %100, %78
  br label %71

334:                                              ; preds = %71
  %335 = load i64, i64* @optind, align 8
  %336 = load i32, i32* %4, align 4
  %337 = sext i32 %336 to i64
  %338 = sub nsw i64 %337, %335
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %4, align 4
  %340 = load i64, i64* @optind, align 8
  %341 = load i8**, i8*** %5, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 %340
  store i8** %342, i8*** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %349

346:                                              ; preds = %334
  %347 = load i64, i64* @ZINJECT_IGNORED_WRITES, align 8
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i64 %347, i64* %348, align 8
  br label %349

349:                                              ; preds = %346, %334
  %350 = load i8*, i8** %8, align 8
  %351 = icmp ne i8* %350, null
  br i1 %351, label %352, label %403

352:                                              ; preds = %349
  %353 = load i8*, i8** %10, align 8
  %354 = icmp ne i8* %353, null
  br i1 %354, label %370, label %355

355:                                              ; preds = %352
  %356 = load i8*, i8** %7, align 8
  %357 = icmp ne i8* %356, null
  br i1 %357, label %370, label %358

358:                                              ; preds = %355
  %359 = load i64, i64* %18, align 8
  %360 = load i64, i64* @TYPE_INVAL, align 8
  %361 = icmp ne i64 %359, %360
  br i1 %361, label %370, label %362

362:                                              ; preds = %358
  %363 = load i32, i32* %12, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %370, label %365

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* @ZINJECT_UNINITIALIZED, align 8
  %369 = icmp ne i64 %367, %368
  br i1 %369, label %370, label %374

370:                                              ; preds = %365, %362, %358, %355, %352
  %371 = load i32, i32* @stderr, align 4
  %372 = call i32 (i32, i8*, ...) @fprintf(i32 %371, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.27, i64 0, i64 0))
  %373 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

374:                                              ; preds = %365
  %375 = load i32, i32* %4, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load i32, i32* @stderr, align 4
  %379 = call i32 (i32, i8*, ...) @fprintf(i32 %378, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  %380 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

381:                                              ; preds = %374
  %382 = load i8*, i8** %8, align 8
  %383 = call i64 @strcmp(i8* %382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %381
  %386 = call i32 (...) @cancel_all_handlers()
  store i32 %386, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

387:                                              ; preds = %381
  %388 = load i8*, i8** %8, align 8
  %389 = call i64 @strtol(i8* %388, i8** %9, i32 10)
  %390 = trunc i64 %389 to i32
  store i32 %390, i32* %31, align 4
  %391 = load i8*, i8** %9, align 8
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %400

395:                                              ; preds = %387
  %396 = load i32, i32* @stderr, align 4
  %397 = load i8*, i8** %8, align 8
  %398 = call i32 (i32, i8*, ...) @fprintf(i32 %396, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.29, i64 0, i64 0), i8* %397)
  %399 = call i32 (...) @usage()
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

400:                                              ; preds = %387
  %401 = load i32, i32* %31, align 4
  %402 = call i32 @cancel_handler(i32 %401)
  store i32 %402, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

403:                                              ; preds = %349
  %404 = load i8*, i8** %11, align 8
  %405 = icmp ne i8* %404, null
  br i1 %405, label %406, label %468

406:                                              ; preds = %403
  %407 = load i8*, i8** %10, align 8
  %408 = icmp ne i8* %407, null
  br i1 %408, label %424, label %409

409:                                              ; preds = %406
  %410 = load i8*, i8** %7, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %424, label %412

412:                                              ; preds = %409
  %413 = load i64, i64* %18, align 8
  %414 = load i64, i64* @TYPE_INVAL, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %424, label %416

416:                                              ; preds = %412
  %417 = load i32, i32* %12, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %424, label %419

419:                                              ; preds = %416
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @ZINJECT_UNINITIALIZED, align 8
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %419, %416, %412, %409, %406
  %425 = load i32, i32* @stderr, align 4
  %426 = call i32 (i32, i8*, ...) @fprintf(i32 %425, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  %427 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

428:                                              ; preds = %419
  %429 = load i32, i32* %4, align 4
  %430 = icmp ne i32 %429, 1
  br i1 %430, label %431, label %435

431:                                              ; preds = %428
  %432 = load i32, i32* @stderr, align 4
  %433 = call i32 (i32, i8*, ...) @fprintf(i32 %432, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0))
  %434 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

435:                                              ; preds = %428
  %436 = load i8**, i8*** %5, align 8
  %437 = getelementptr inbounds i8*, i8** %436, i64 0
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @strcpy(i8* %40, i8* %438)
  %440 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %440, align 16
  %441 = load i32, i32* %14, align 4
  %442 = load i32, i32* @ECKSUM, align 4
  %443 = icmp eq i32 %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %435
  %445 = load i32, i32* @stderr, align 4
  %446 = call i32 (i32, i8*, ...) @fprintf(i32 %445, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

447:                                              ; preds = %435
  %448 = load i32, i32* %16, align 4
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i32 %448, i32* %449, align 8
  %450 = load i8*, i8** %11, align 8
  %451 = load i64, i64* %19, align 8
  %452 = call i64 @translate_device(i8* %40, i8* %450, i64 %451, %struct.TYPE_7__* %20)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %447
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

455:                                              ; preds = %447
  %456 = load i32, i32* %14, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = load i32, i32* @ENXIO, align 4
  store i32 %459, i32* %14, align 4
  br label %460

460:                                              ; preds = %458, %455
  %461 = load i32, i32* %17, align 4
  %462 = load i32, i32* @VDEV_STATE_UNKNOWN, align 4
  %463 = icmp ne i32 %461, %462
  br i1 %463, label %464, label %467

464:                                              ; preds = %460
  %465 = load i32, i32* %17, align 4
  %466 = call i32 @perform_action(i8* %40, %struct.TYPE_7__* %20, i32 %465)
  store i32 %466, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

467:                                              ; preds = %460
  br label %686

468:                                              ; preds = %403
  %469 = load i8*, i8** %10, align 8
  %470 = icmp ne i8* %469, null
  br i1 %470, label %471, label %523

471:                                              ; preds = %468
  %472 = load i8*, i8** %7, align 8
  %473 = icmp ne i8* %472, null
  br i1 %473, label %486, label %474

474:                                              ; preds = %471
  %475 = load i64, i64* %18, align 8
  %476 = load i64, i64* @TYPE_INVAL, align 8
  %477 = icmp ne i64 %475, %476
  br i1 %477, label %486, label %478

478:                                              ; preds = %474
  %479 = load i32, i32* %12, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %486, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %483 = load i64, i64* %482, align 8
  %484 = load i64, i64* @ZINJECT_UNINITIALIZED, align 8
  %485 = icmp ne i64 %483, %484
  br i1 %485, label %486, label %490

486:                                              ; preds = %481, %478, %474, %471
  %487 = load i32, i32* @stderr, align 4
  %488 = call i32 (i32, i8*, ...) @fprintf(i32 %487, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0))
  %489 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

490:                                              ; preds = %481
  %491 = load i32, i32* %4, align 4
  %492 = icmp ne i32 %491, 1
  br i1 %492, label %493, label %497

493:                                              ; preds = %490
  %494 = load i32, i32* @stderr, align 4
  %495 = call i32 (i32, i8*, ...) @fprintf(i32 %494, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0))
  %496 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

497:                                              ; preds = %490
  %498 = load i8**, i8*** %5, align 8
  %499 = getelementptr inbounds i8*, i8** %498, i64 0
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 @strcpy(i8* %40, i8* %500)
  %502 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %502, align 16
  %503 = load i32, i32* %14, align 4
  %504 = load i32, i32* @ENXIO, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %509

506:                                              ; preds = %497
  %507 = load i32, i32* @stderr, align 4
  %508 = call i32 (i32, i8*, ...) @fprintf(i32 %507, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

509:                                              ; preds = %497
  %510 = load i8*, i8** @ZINJECT_DATA_FAULT, align 8
  %511 = ptrtoint i8* %510 to i64
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i64 %511, i64* %512, align 8
  %513 = load i8*, i8** %10, align 8
  %514 = call i64 @translate_raw(i8* %513, %struct.TYPE_7__* %20)
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %517

516:                                              ; preds = %509
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

517:                                              ; preds = %509
  %518 = load i32, i32* %14, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %517
  %521 = load i32, i32* @EIO, align 4
  store i32 %521, i32* %14, align 4
  br label %522

522:                                              ; preds = %520, %517
  br label %685

523:                                              ; preds = %468
  %524 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @ZINJECT_PANIC, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %528, label %575

528:                                              ; preds = %523
  %529 = load i8*, i8** %10, align 8
  %530 = icmp ne i8* %529, null
  br i1 %530, label %544, label %531

531:                                              ; preds = %528
  %532 = load i8*, i8** %7, align 8
  %533 = icmp ne i8* %532, null
  br i1 %533, label %544, label %534

534:                                              ; preds = %531
  %535 = load i64, i64* %18, align 8
  %536 = load i64, i64* @TYPE_INVAL, align 8
  %537 = icmp ne i64 %535, %536
  br i1 %537, label %544, label %538

538:                                              ; preds = %534
  %539 = load i32, i32* %12, align 4
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %544, label %541

541:                                              ; preds = %538
  %542 = load i8*, i8** %11, align 8
  %543 = icmp ne i8* %542, null
  br i1 %543, label %544, label %548

544:                                              ; preds = %541, %538, %534, %531, %528
  %545 = load i32, i32* @stderr, align 4
  %546 = call i32 (i32, i8*, ...) @fprintf(i32 %545, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.36, i64 0, i64 0))
  %547 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

548:                                              ; preds = %541
  %549 = load i32, i32* %4, align 4
  %550 = icmp slt i32 %549, 1
  br i1 %550, label %554, label %551

551:                                              ; preds = %548
  %552 = load i32, i32* %4, align 4
  %553 = icmp sgt i32 %552, 2
  br i1 %553, label %554, label %558

554:                                              ; preds = %551, %548
  %555 = load i32, i32* @stderr, align 4
  %556 = call i32 (i32, i8*, ...) @fprintf(i32 %555, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.37, i64 0, i64 0))
  %557 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

558:                                              ; preds = %551
  %559 = load i8**, i8*** %5, align 8
  %560 = getelementptr inbounds i8*, i8** %559, i64 0
  %561 = load i8*, i8** %560, align 8
  %562 = call i32 @strcpy(i8* %40, i8* %561)
  %563 = load i8**, i8*** %5, align 8
  %564 = getelementptr inbounds i8*, i8** %563, i64 1
  %565 = load i8*, i8** %564, align 8
  %566 = icmp ne i8* %565, null
  br i1 %566, label %567, label %573

567:                                              ; preds = %558
  %568 = load i8**, i8*** %5, align 8
  %569 = getelementptr inbounds i8*, i8** %568, i64 1
  %570 = load i8*, i8** %569, align 8
  %571 = call i8* @atoi(i8* %570)
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 5
  store i8* %571, i8** %572, align 8
  br label %573

573:                                              ; preds = %567, %558
  %574 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %574, align 16
  br label %684

575:                                              ; preds = %523
  %576 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %577 = load i64, i64* %576, align 8
  %578 = load i64, i64* @ZINJECT_IGNORED_WRITES, align 8
  %579 = icmp eq i64 %577, %578
  br i1 %579, label %580, label %612

580:                                              ; preds = %575
  %581 = load i32, i32* %25, align 4
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %587

583:                                              ; preds = %580
  %584 = load i32, i32* @stderr, align 4
  %585 = call i32 (i32, i8*, ...) @fprintf(i32 %584, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i64 0, i64 0))
  %586 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

587:                                              ; preds = %580
  %588 = load i32, i32* %27, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %597

590:                                              ; preds = %587
  %591 = load i32, i32* %26, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %597

593:                                              ; preds = %590
  %594 = load i32, i32* @stderr, align 4
  %595 = call i32 (i32, i8*, ...) @fprintf(i32 %594, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.39, i64 0, i64 0))
  %596 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

597:                                              ; preds = %590, %587
  %598 = load i32, i32* %4, align 4
  %599 = icmp ne i32 %598, 1
  br i1 %599, label %600, label %604

600:                                              ; preds = %597
  %601 = load i32, i32* @stderr, align 4
  %602 = call i32 (i32, i8*, ...) @fprintf(i32 %601, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.40, i64 0, i64 0))
  %603 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

604:                                              ; preds = %597
  br label %605

605:                                              ; preds = %604
  br label %606

606:                                              ; preds = %605
  %607 = load i8**, i8*** %5, align 8
  %608 = getelementptr inbounds i8*, i8** %607, i64 0
  %609 = load i8*, i8** %608, align 8
  %610 = call i32 @strcpy(i8* %40, i8* %609)
  %611 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %611, align 16
  br label %683

612:                                              ; preds = %575
  %613 = load i64, i64* %18, align 8
  %614 = load i64, i64* @TYPE_INVAL, align 8
  %615 = icmp eq i64 %613, %614
  br i1 %615, label %616, label %649

616:                                              ; preds = %612
  %617 = load i32, i32* %29, align 4
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %623

619:                                              ; preds = %616
  %620 = load i32, i32* @stderr, align 4
  %621 = call i32 (i32, i8*, ...) @fprintf(i32 %620, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.41, i64 0, i64 0))
  %622 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

623:                                              ; preds = %616
  %624 = load i32, i32* %4, align 4
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %626, label %637

626:                                              ; preds = %623
  %627 = load i32, i32* %29, align 4
  %628 = load i32, i32* @ZINJECT_UNLOAD_SPA, align 4
  %629 = and i32 %627, %628
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %637

631:                                              ; preds = %626
  %632 = load i8**, i8*** %5, align 8
  %633 = getelementptr inbounds i8*, i8** %632, i64 0
  %634 = load i8*, i8** %633, align 8
  %635 = call i32 @strcpy(i8* %40, i8* %634)
  %636 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 0, i8* %636, align 16
  br label %645

637:                                              ; preds = %626, %623
  %638 = load i32, i32* %4, align 4
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %644

640:                                              ; preds = %637
  %641 = load i32, i32* @stderr, align 4
  %642 = call i32 (i32, i8*, ...) @fprintf(i32 %641, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i64 0, i64 0))
  %643 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

644:                                              ; preds = %637
  br label %645

645:                                              ; preds = %644, %631
  %646 = load i32, i32* @ZINJECT_NULL, align 4
  %647 = load i32, i32* %29, align 4
  %648 = or i32 %647, %646
  store i32 %648, i32* %29, align 4
  br label %682

649:                                              ; preds = %612
  %650 = load i32, i32* %4, align 4
  %651 = icmp ne i32 %650, 1
  br i1 %651, label %652, label %656

652:                                              ; preds = %649
  %653 = load i32, i32* @stderr, align 4
  %654 = call i32 (i32, i8*, ...) @fprintf(i32 %653, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0))
  %655 = call i32 (...) @usage()
  store i32 2, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

656:                                              ; preds = %649
  %657 = load i32, i32* %14, align 4
  %658 = load i32, i32* @ENXIO, align 4
  %659 = icmp eq i32 %657, %658
  br i1 %659, label %660, label %663

660:                                              ; preds = %656
  %661 = load i32, i32* @stderr, align 4
  %662 = call i32 (i32, i8*, ...) @fprintf(i32 %661, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.35, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

663:                                              ; preds = %656
  %664 = load i8*, i8** @ZINJECT_DATA_FAULT, align 8
  %665 = ptrtoint i8* %664 to i64
  %666 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  store i64 %665, i64* %666, align 8
  %667 = load i64, i64* %18, align 8
  %668 = load i8**, i8*** %5, align 8
  %669 = getelementptr inbounds i8*, i8** %668, i64 0
  %670 = load i8*, i8** %669, align 8
  %671 = load i8*, i8** %7, align 8
  %672 = load i32, i32* %12, align 4
  %673 = call i64 @translate_record(i64 %667, i8* %670, i8* %671, i32 %672, %struct.TYPE_7__* %20, i8* %40, i8* %43)
  %674 = icmp ne i64 %673, 0
  br i1 %674, label %675, label %676

675:                                              ; preds = %663
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

676:                                              ; preds = %663
  %677 = load i32, i32* %14, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %676
  %680 = load i32, i32* @EIO, align 4
  store i32 %680, i32* %14, align 4
  br label %681

681:                                              ; preds = %679, %676
  br label %682

682:                                              ; preds = %681, %645
  br label %683

683:                                              ; preds = %682, %606
  br label %684

684:                                              ; preds = %683, %573
  br label %685

685:                                              ; preds = %684, %522
  br label %686

686:                                              ; preds = %685, %467
  %687 = getelementptr inbounds i8, i8* %43, i64 0
  %688 = load i8, i8* %687, align 16
  %689 = sext i8 %688 to i32
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %691, label %706

691:                                              ; preds = %686
  %692 = load i32, i32* %15, align 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %694, label %706

694:                                              ; preds = %691
  %695 = load i32*, i32** @g_zfs, align 8
  %696 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %697 = call i32* @zfs_open(i32* %695, i8* %43, i32 %696)
  store i32* %697, i32** %24, align 8
  %698 = icmp eq i32* %697, null
  br i1 %698, label %699, label %700

699:                                              ; preds = %694
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

700:                                              ; preds = %694
  %701 = load i32*, i32** %24, align 8
  %702 = call i64 @zfs_unmount(i32* %701, i32* null, i32 0)
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %705

704:                                              ; preds = %700
  store i32 1, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

705:                                              ; preds = %700
  br label %706

706:                                              ; preds = %705, %691, %686
  %707 = load i32, i32* %14, align 4
  %708 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  store i32 %707, i32* %708, align 4
  %709 = load i32, i32* %29, align 4
  %710 = load i32, i32* %13, align 4
  %711 = call i32 @register_handler(i8* %40, i32 %709, %struct.TYPE_7__* %20, i32 %710)
  store i32 %711, i32* %28, align 4
  %712 = getelementptr inbounds i8, i8* %43, i64 0
  %713 = load i8, i8* %712, align 16
  %714 = sext i8 %713 to i32
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %724

716:                                              ; preds = %706
  %717 = load i32, i32* %15, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %724

719:                                              ; preds = %716
  %720 = load i32*, i32** %24, align 8
  %721 = call i64 @zfs_mount(i32* %720, i32* null, i32 0)
  %722 = icmp ne i64 %721, 0
  %723 = zext i1 %722 to i32
  store i32 %723, i32* %28, align 4
  br label %724

724:                                              ; preds = %719, %716, %706
  %725 = load i32*, i32** @g_zfs, align 8
  %726 = call i32 @libzfs_fini(i32* %725)
  %727 = load i32, i32* %28, align 4
  store i32 %727, i32* %3, align 4
  store i32 1, i32* %30, align 4
  br label %728

728:                                              ; preds = %724, %704, %699, %675, %660, %652, %640, %619, %600, %593, %583, %554, %544, %516, %506, %493, %486, %464, %454, %444, %431, %424, %400, %395, %385, %377, %370, %328, %323, %317, %298, %279, %243, %213, %194, %185, %165, %144, %114, %94, %69, %57, %46
  %729 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %729)
  %730 = load i32, i32* %3, align 4
  ret i32 %730
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @libzfs_init(...) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i32 @libzfs_print_on_error(i32*, i32) #3

declare dso_local i32 @open(i32, i32) #3

declare dso_local i64 @print_all_handlers(...) #3

declare dso_local i32 @printf(i8*) #3

declare dso_local i32 @getopt(i32, i8**, i8*) #3

declare dso_local i32 @strcasecmp(i8*, i8*) #3

declare dso_local i32 @usage(...) #3

declare dso_local i32 @parse_delay(i8*, i32*, i32*) #3

declare dso_local i8* @atoi(i8*) #3

declare dso_local i64 @strtol(i8*, i8**, i32) #3

declare dso_local i32 @strlcpy(i32, i8*, i32) #3

declare dso_local i64 @name_to_type(i8*) #3

declare dso_local i32 @MOS_TYPE(i64) #3

declare dso_local i32 @LABEL_TYPE(i64) #3

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @cancel_all_handlers(...) #3

declare dso_local i32 @cancel_handler(i32) #3

declare dso_local i32 @strcpy(i8*, i8*) #3

declare dso_local i64 @translate_device(i8*, i8*, i64, %struct.TYPE_7__*) #3

declare dso_local i32 @perform_action(i8*, %struct.TYPE_7__*, i32) #3

declare dso_local i64 @translate_raw(i8*, %struct.TYPE_7__*) #3

declare dso_local i64 @translate_record(i64, i8*, i8*, i32, %struct.TYPE_7__*, i8*, i8*) #3

declare dso_local i32* @zfs_open(i32*, i8*, i32) #3

declare dso_local i64 @zfs_unmount(i32*, i32*, i32) #3

declare dso_local i32 @register_handler(i8*, i32, %struct.TYPE_7__*, i32) #3

declare dso_local i64 @zfs_mount(i32*, i32*, i32) #3

declare dso_local i32 @libzfs_fini(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
