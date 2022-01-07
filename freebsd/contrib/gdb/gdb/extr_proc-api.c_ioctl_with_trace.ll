; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_ioctl_with_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_ioctl_with_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i8* }
%struct.TYPE_3__ = type { i64 }

@procfs_trace = common dso_local global i64 0, align 8
@ioctl_table = common dso_local global %struct.TYPE_4__* null, align 8
@info_verbose = common dso_local global i64 0, align 8
@procfs_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d -- \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"ioctl (PIOCSET,   %s) %s\0A\00", align 1
@PR_FORK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"PR_FORK\00", align 1
@PR_RLC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"PR_RLC\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"<unknown flag>\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"ioctl (PIOCRESET, %s) %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"ioctl (PIOCSTRACE) \00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"ioctl (%s) \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"PIOCSFAULT\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"PIOCGFAULT\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"PIOCSENTRY\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"PIOCGENTRY\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"PIOCSEXIT\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PIOCGEXIT\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"PIOCSHOLD\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"PIOCGHOLD\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"ioctl (PIOCSSIG) \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"ioctl (PIOCRUN) \00", align 1
@PRCSIG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [10 x i8] c"clearSig \00", align 1
@PRCFAULT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [10 x i8] c"clearFlt \00", align 1
@PRSTRACE = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [10 x i8] c"setTrace \00", align 1
@PRSHOLD = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [9 x i8] c"setHold \00", align 1
@PRSFAULT = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [8 x i8] c"setFlt \00", align 1
@PRSVADDR = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [10 x i8] c"setVaddr \00", align 1
@PRSTEP = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [6 x i8] c"step \00", align 1
@PRSABORT = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [14 x i8] c"syscallAbort \00", align 1
@PRSTOP = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"stopReq \00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"ioctl (PIOCKILL) \00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"ioctl (PIOCSSPCACT) \00", align 1
@PRFS_STOPFORK = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [10 x i8] c"stopFork \00", align 1
@PRFS_STOPEXEC = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"stopExec \00", align 1
@PRFS_STOPTERM = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"stopTerm \00", align 1
@PRFS_STOPTCR = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [18 x i8] c"stopThreadCreate \00", align 1
@PRFS_STOPTTERM = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [16 x i8] c"stopThreadTerm \00", align 1
@PRFS_KOLC = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [17 x i8] c"killOnLastClose \00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"ioctl (%s) %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [31 x i8] c"ioctl (<unknown %ld (0x%lx)) \0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.39 = private unnamed_addr constant [27 x i8] c"[ioctl (%s) FAILED! (%s)]\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@PR_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioctl_with_trace(i32 %0, i64 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = call i32 (...) @prepare_to_trace()
  %15 = load i64, i64* @procfs_trace, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %680

17:                                               ; preds = %5
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %37, %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %11, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  br label %18

40:                                               ; preds = %35, %18
  %41 = load i64, i64* @info_verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i64, i64* @procfs_file, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @procfs_file, align 8
  br label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @stdout, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i64, i8*, ...) @fprintf(i64 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %40
  %56 = load i64, i64* %7, align 8
  switch i64 %56, label %624 [
    i64 134, label %57
    i64 137, label %101
    i64 128, label %145
    i64 132, label %166
    i64 135, label %191
    i64 133, label %216
    i64 131, label %241
    i64 130, label %266
    i64 136, label %304
    i64 138, label %468
    i64 129, label %505
  ]

57:                                               ; preds = %55
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8*, i8** %8, align 8
  %62 = bitcast i8* %61 to i64*
  %63 = load i64, i64* %62, align 8
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %60
  %66 = phi i64 [ %63, %60 ], [ 0, %64 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i64, i64* @procfs_file, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @procfs_file, align 8
  br label %74

72:                                               ; preds = %65
  %73 = load i64, i64* @stdout, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i64 [ %71, %70 ], [ %73, %72 ]
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @PR_FORK, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %86

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* @PR_RLC, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  br label %86

86:                                               ; preds = %80, %79
  %87 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %79 ], [ %85, %80 ]
  %88 = load i64, i64* @info_verbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %86
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  br label %98

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %90
  %99 = phi i8* [ %96, %90 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %97 ]
  %100 = call i32 (i64, i8*, ...) @fprintf(i64 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %99)
  br label %673

101:                                              ; preds = %55
  %102 = load i8*, i8** %8, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i8*, i8** %8, align 8
  %106 = bitcast i8* %105 to i64*
  %107 = load i64, i64* %106, align 8
  br label %109

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %104
  %110 = phi i64 [ %107, %104 ], [ 0, %108 ]
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %13, align 4
  %112 = load i64, i64* @procfs_file, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @procfs_file, align 8
  br label %118

116:                                              ; preds = %109
  %117 = load i64, i64* @stdout, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @PR_FORK, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %130

124:                                              ; preds = %118
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @PR_RLC, align 4
  %127 = icmp eq i32 %125, %126
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)
  br label %130

130:                                              ; preds = %124, %123
  %131 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %123 ], [ %129, %124 ]
  %132 = load i64, i64* @info_verbose, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i8*, i8** %139, align 8
  br label %142

141:                                              ; preds = %130
  br label %142

142:                                              ; preds = %141, %134
  %143 = phi i8* [ %140, %134 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %141 ]
  %144 = call i32 (i64, i8*, ...) @fprintf(i64 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %131, i8* %143)
  br label %673

145:                                              ; preds = %55
  %146 = load i64, i64* @procfs_file, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = load i64, i64* @procfs_file, align 8
  br label %152

150:                                              ; preds = %145
  %151 = load i64, i64* @stdout, align 8
  br label %152

152:                                              ; preds = %150, %148
  %153 = phi i64 [ %149, %148 ], [ %151, %150 ]
  %154 = call i32 (i64, i8*, ...) @fprintf(i64 %153, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i64, i64* @procfs_file, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i64, i64* @procfs_file, align 8
  br label %161

159:                                              ; preds = %152
  %160 = load i64, i64* @stdout, align 8
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i64 [ %158, %157 ], [ %160, %159 ]
  %163 = load i8*, i8** %8, align 8
  %164 = bitcast i8* %163 to i32*
  %165 = call i32 @proc_prettyfprint_signalset(i64 %162, i32* %164, i32 0)
  br label %673

166:                                              ; preds = %55
  %167 = load i64, i64* @procfs_file, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i64, i64* @procfs_file, align 8
  br label %173

171:                                              ; preds = %166
  %172 = load i64, i64* @stdout, align 8
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i64 [ %170, %169 ], [ %172, %171 ]
  %175 = load i64, i64* %7, align 8
  %176 = icmp eq i64 %175, 132
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)
  %179 = call i32 (i64, i8*, ...) @fprintf(i64 %174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %178)
  %180 = load i64, i64* @procfs_file, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load i64, i64* @procfs_file, align 8
  br label %186

184:                                              ; preds = %173
  %185 = load i64, i64* @stdout, align 8
  br label %186

186:                                              ; preds = %184, %182
  %187 = phi i64 [ %183, %182 ], [ %185, %184 ]
  %188 = load i8*, i8** %8, align 8
  %189 = bitcast i8* %188 to i32*
  %190 = call i32 @proc_prettyfprint_faultset(i64 %187, i32* %189, i32 0)
  br label %673

191:                                              ; preds = %55
  %192 = load i64, i64* @procfs_file, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i64, i64* @procfs_file, align 8
  br label %198

196:                                              ; preds = %191
  %197 = load i64, i64* @stdout, align 8
  br label %198

198:                                              ; preds = %196, %194
  %199 = phi i64 [ %195, %194 ], [ %197, %196 ]
  %200 = load i64, i64* %7, align 8
  %201 = icmp eq i64 %200, 135
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0)
  %204 = call i32 (i64, i8*, ...) @fprintf(i64 %199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %203)
  %205 = load i64, i64* @procfs_file, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %198
  %208 = load i64, i64* @procfs_file, align 8
  br label %211

209:                                              ; preds = %198
  %210 = load i64, i64* @stdout, align 8
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i64 [ %208, %207 ], [ %210, %209 ]
  %213 = load i8*, i8** %8, align 8
  %214 = bitcast i8* %213 to i32*
  %215 = call i32 @proc_prettyfprint_syscalls(i64 %212, i32* %214, i32 0)
  br label %673

216:                                              ; preds = %55
  %217 = load i64, i64* @procfs_file, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i64, i64* @procfs_file, align 8
  br label %223

221:                                              ; preds = %216
  %222 = load i64, i64* @stdout, align 8
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i64 [ %220, %219 ], [ %222, %221 ]
  %225 = load i64, i64* %7, align 8
  %226 = icmp eq i64 %225, 133
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0)
  %229 = call i32 (i64, i8*, ...) @fprintf(i64 %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %228)
  %230 = load i64, i64* @procfs_file, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = load i64, i64* @procfs_file, align 8
  br label %236

234:                                              ; preds = %223
  %235 = load i64, i64* @stdout, align 8
  br label %236

236:                                              ; preds = %234, %232
  %237 = phi i64 [ %233, %232 ], [ %235, %234 ]
  %238 = load i8*, i8** %8, align 8
  %239 = bitcast i8* %238 to i32*
  %240 = call i32 @proc_prettyfprint_syscalls(i64 %237, i32* %239, i32 0)
  br label %673

241:                                              ; preds = %55
  %242 = load i64, i64* @procfs_file, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = load i64, i64* @procfs_file, align 8
  br label %248

246:                                              ; preds = %241
  %247 = load i64, i64* @stdout, align 8
  br label %248

248:                                              ; preds = %246, %244
  %249 = phi i64 [ %245, %244 ], [ %247, %246 ]
  %250 = load i64, i64* %7, align 8
  %251 = icmp eq i64 %250, 131
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0)
  %254 = call i32 (i64, i8*, ...) @fprintf(i64 %249, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %253)
  %255 = load i64, i64* @procfs_file, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = load i64, i64* @procfs_file, align 8
  br label %261

259:                                              ; preds = %248
  %260 = load i64, i64* @stdout, align 8
  br label %261

261:                                              ; preds = %259, %257
  %262 = phi i64 [ %258, %257 ], [ %260, %259 ]
  %263 = load i8*, i8** %8, align 8
  %264 = bitcast i8* %263 to i32*
  %265 = call i32 @proc_prettyfprint_signalset(i64 %262, i32* %264, i32 0)
  br label %673

266:                                              ; preds = %55
  %267 = load i64, i64* @procfs_file, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = load i64, i64* @procfs_file, align 8
  br label %273

271:                                              ; preds = %266
  %272 = load i64, i64* @stdout, align 8
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi i64 [ %270, %269 ], [ %272, %271 ]
  %275 = call i32 (i64, i8*, ...) @fprintf(i64 %274, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %276 = load i64, i64* @procfs_file, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %273
  %279 = load i64, i64* @procfs_file, align 8
  br label %282

280:                                              ; preds = %273
  %281 = load i64, i64* @stdout, align 8
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i64 [ %279, %278 ], [ %281, %280 ]
  %284 = load i8*, i8** %8, align 8
  %285 = icmp ne i8* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %282
  %287 = load i8*, i8** %8, align 8
  %288 = bitcast i8* %287 to %struct.TYPE_3__*
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  br label %292

291:                                              ; preds = %282
  br label %292

292:                                              ; preds = %291, %286
  %293 = phi i64 [ %290, %286 ], [ 0, %291 ]
  %294 = call i32 @proc_prettyfprint_signal(i64 %283, i64 %293, i32 0)
  %295 = load i64, i64* @procfs_file, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %292
  %298 = load i64, i64* @procfs_file, align 8
  br label %301

299:                                              ; preds = %292
  %300 = load i64, i64* @stdout, align 8
  br label %301

301:                                              ; preds = %299, %297
  %302 = phi i64 [ %298, %297 ], [ %300, %299 ]
  %303 = call i32 (i64, i8*, ...) @fprintf(i64 %302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %673

304:                                              ; preds = %55
  %305 = load i64, i64* @procfs_file, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %304
  %308 = load i64, i64* @procfs_file, align 8
  br label %311

309:                                              ; preds = %304
  %310 = load i64, i64* @stdout, align 8
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i64 [ %308, %307 ], [ %310, %309 ]
  %313 = call i32 (i64, i8*, ...) @fprintf(i64 %312, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %314 = load i8*, i8** %8, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %311
  %317 = load i8*, i8** %8, align 8
  %318 = bitcast i8* %317 to i64*
  %319 = load i64, i64* %318, align 8
  br label %321

320:                                              ; preds = %311
  br label %321

321:                                              ; preds = %320, %316
  %322 = phi i64 [ %319, %316 ], [ 0, %320 ]
  %323 = trunc i64 %322 to i32
  store i32 %323, i32* %13, align 4
  %324 = load i32, i32* %13, align 4
  %325 = load i32, i32* @PRCSIG, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %338

328:                                              ; preds = %321
  %329 = load i64, i64* @procfs_file, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  %332 = load i64, i64* @procfs_file, align 8
  br label %335

333:                                              ; preds = %328
  %334 = load i64, i64* @stdout, align 8
  br label %335

335:                                              ; preds = %333, %331
  %336 = phi i64 [ %332, %331 ], [ %334, %333 ]
  %337 = call i32 (i64, i8*, ...) @fprintf(i64 %336, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %338

338:                                              ; preds = %335, %321
  %339 = load i32, i32* %13, align 4
  %340 = load i32, i32* @PRCFAULT, align 4
  %341 = and i32 %339, %340
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %353

343:                                              ; preds = %338
  %344 = load i64, i64* @procfs_file, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %343
  %347 = load i64, i64* @procfs_file, align 8
  br label %350

348:                                              ; preds = %343
  %349 = load i64, i64* @stdout, align 8
  br label %350

350:                                              ; preds = %348, %346
  %351 = phi i64 [ %347, %346 ], [ %349, %348 ]
  %352 = call i32 (i64, i8*, ...) @fprintf(i64 %351, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %338
  %354 = load i32, i32* %13, align 4
  %355 = load i32, i32* @PRSTRACE, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %368

358:                                              ; preds = %353
  %359 = load i64, i64* @procfs_file, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %358
  %362 = load i64, i64* @procfs_file, align 8
  br label %365

363:                                              ; preds = %358
  %364 = load i64, i64* @stdout, align 8
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i64 [ %362, %361 ], [ %364, %363 ]
  %367 = call i32 (i64, i8*, ...) @fprintf(i64 %366, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  br label %368

368:                                              ; preds = %365, %353
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* @PRSHOLD, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %383

373:                                              ; preds = %368
  %374 = load i64, i64* @procfs_file, align 8
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %373
  %377 = load i64, i64* @procfs_file, align 8
  br label %380

378:                                              ; preds = %373
  %379 = load i64, i64* @stdout, align 8
  br label %380

380:                                              ; preds = %378, %376
  %381 = phi i64 [ %377, %376 ], [ %379, %378 ]
  %382 = call i32 (i64, i8*, ...) @fprintf(i64 %381, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  br label %383

383:                                              ; preds = %380, %368
  %384 = load i32, i32* %13, align 4
  %385 = load i32, i32* @PRSFAULT, align 4
  %386 = and i32 %384, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %398

388:                                              ; preds = %383
  %389 = load i64, i64* @procfs_file, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %393

391:                                              ; preds = %388
  %392 = load i64, i64* @procfs_file, align 8
  br label %395

393:                                              ; preds = %388
  %394 = load i64, i64* @stdout, align 8
  br label %395

395:                                              ; preds = %393, %391
  %396 = phi i64 [ %392, %391 ], [ %394, %393 ]
  %397 = call i32 (i64, i8*, ...) @fprintf(i64 %396, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %398

398:                                              ; preds = %395, %383
  %399 = load i32, i32* %13, align 4
  %400 = load i32, i32* @PRSVADDR, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %413

403:                                              ; preds = %398
  %404 = load i64, i64* @procfs_file, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %408

406:                                              ; preds = %403
  %407 = load i64, i64* @procfs_file, align 8
  br label %410

408:                                              ; preds = %403
  %409 = load i64, i64* @stdout, align 8
  br label %410

410:                                              ; preds = %408, %406
  %411 = phi i64 [ %407, %406 ], [ %409, %408 ]
  %412 = call i32 (i64, i8*, ...) @fprintf(i64 %411, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0))
  br label %413

413:                                              ; preds = %410, %398
  %414 = load i32, i32* %13, align 4
  %415 = load i32, i32* @PRSTEP, align 4
  %416 = and i32 %414, %415
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %428

418:                                              ; preds = %413
  %419 = load i64, i64* @procfs_file, align 8
  %420 = icmp ne i64 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = load i64, i64* @procfs_file, align 8
  br label %425

423:                                              ; preds = %418
  %424 = load i64, i64* @stdout, align 8
  br label %425

425:                                              ; preds = %423, %421
  %426 = phi i64 [ %422, %421 ], [ %424, %423 ]
  %427 = call i32 (i64, i8*, ...) @fprintf(i64 %426, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  br label %428

428:                                              ; preds = %425, %413
  %429 = load i32, i32* %13, align 4
  %430 = load i32, i32* @PRSABORT, align 4
  %431 = and i32 %429, %430
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %443

433:                                              ; preds = %428
  %434 = load i64, i64* @procfs_file, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %433
  %437 = load i64, i64* @procfs_file, align 8
  br label %440

438:                                              ; preds = %433
  %439 = load i64, i64* @stdout, align 8
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i64 [ %437, %436 ], [ %439, %438 ]
  %442 = call i32 (i64, i8*, ...) @fprintf(i64 %441, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0))
  br label %443

443:                                              ; preds = %440, %428
  %444 = load i32, i32* %13, align 4
  %445 = load i32, i32* @PRSTOP, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %458

448:                                              ; preds = %443
  %449 = load i64, i64* @procfs_file, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %453

451:                                              ; preds = %448
  %452 = load i64, i64* @procfs_file, align 8
  br label %455

453:                                              ; preds = %448
  %454 = load i64, i64* @stdout, align 8
  br label %455

455:                                              ; preds = %453, %451
  %456 = phi i64 [ %452, %451 ], [ %454, %453 ]
  %457 = call i32 (i64, i8*, ...) @fprintf(i64 %456, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  br label %458

458:                                              ; preds = %455, %443
  %459 = load i64, i64* @procfs_file, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %458
  %462 = load i64, i64* @procfs_file, align 8
  br label %465

463:                                              ; preds = %458
  %464 = load i64, i64* @stdout, align 8
  br label %465

465:                                              ; preds = %463, %461
  %466 = phi i64 [ %462, %461 ], [ %464, %463 ]
  %467 = call i32 (i64, i8*, ...) @fprintf(i64 %466, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %673

468:                                              ; preds = %55
  %469 = load i64, i64* @procfs_file, align 8
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %473

471:                                              ; preds = %468
  %472 = load i64, i64* @procfs_file, align 8
  br label %475

473:                                              ; preds = %468
  %474 = load i64, i64* @stdout, align 8
  br label %475

475:                                              ; preds = %473, %471
  %476 = phi i64 [ %472, %471 ], [ %474, %473 ]
  %477 = call i32 (i64, i8*, ...) @fprintf(i64 %476, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %478 = load i64, i64* @procfs_file, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %482

480:                                              ; preds = %475
  %481 = load i64, i64* @procfs_file, align 8
  br label %484

482:                                              ; preds = %475
  %483 = load i64, i64* @stdout, align 8
  br label %484

484:                                              ; preds = %482, %480
  %485 = phi i64 [ %481, %480 ], [ %483, %482 ]
  %486 = load i8*, i8** %8, align 8
  %487 = icmp ne i8* %486, null
  br i1 %487, label %488, label %492

488:                                              ; preds = %484
  %489 = load i8*, i8** %8, align 8
  %490 = bitcast i8* %489 to i64*
  %491 = load i64, i64* %490, align 8
  br label %493

492:                                              ; preds = %484
  br label %493

493:                                              ; preds = %492, %488
  %494 = phi i64 [ %491, %488 ], [ 0, %492 ]
  %495 = call i32 @proc_prettyfprint_signal(i64 %485, i64 %494, i32 0)
  %496 = load i64, i64* @procfs_file, align 8
  %497 = icmp ne i64 %496, 0
  br i1 %497, label %498, label %500

498:                                              ; preds = %493
  %499 = load i64, i64* @procfs_file, align 8
  br label %502

500:                                              ; preds = %493
  %501 = load i64, i64* @stdout, align 8
  br label %502

502:                                              ; preds = %500, %498
  %503 = phi i64 [ %499, %498 ], [ %501, %500 ]
  %504 = call i32 (i64, i8*, ...) @fprintf(i64 %503, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %673

505:                                              ; preds = %55
  %506 = load i64, i64* @procfs_file, align 8
  %507 = icmp ne i64 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %505
  %509 = load i64, i64* @procfs_file, align 8
  br label %512

510:                                              ; preds = %505
  %511 = load i64, i64* @stdout, align 8
  br label %512

512:                                              ; preds = %510, %508
  %513 = phi i64 [ %509, %508 ], [ %511, %510 ]
  %514 = call i32 (i64, i8*, ...) @fprintf(i64 %513, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.30, i64 0, i64 0))
  %515 = load i8*, i8** %8, align 8
  %516 = icmp ne i8* %515, null
  br i1 %516, label %517, label %521

517:                                              ; preds = %512
  %518 = load i8*, i8** %8, align 8
  %519 = bitcast i8* %518 to i64*
  %520 = load i64, i64* %519, align 8
  br label %522

521:                                              ; preds = %512
  br label %522

522:                                              ; preds = %521, %517
  %523 = phi i64 [ %520, %517 ], [ 0, %521 ]
  %524 = trunc i64 %523 to i32
  store i32 %524, i32* %13, align 4
  %525 = load i32, i32* %13, align 4
  %526 = load i32, i32* @PRFS_STOPFORK, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %539

529:                                              ; preds = %522
  %530 = load i64, i64* @procfs_file, align 8
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %534

532:                                              ; preds = %529
  %533 = load i64, i64* @procfs_file, align 8
  br label %536

534:                                              ; preds = %529
  %535 = load i64, i64* @stdout, align 8
  br label %536

536:                                              ; preds = %534, %532
  %537 = phi i64 [ %533, %532 ], [ %535, %534 ]
  %538 = call i32 (i64, i8*, ...) @fprintf(i64 %537, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i64 0, i64 0))
  br label %539

539:                                              ; preds = %536, %522
  %540 = load i32, i32* %13, align 4
  %541 = load i32, i32* @PRFS_STOPEXEC, align 4
  %542 = and i32 %540, %541
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %554

544:                                              ; preds = %539
  %545 = load i64, i64* @procfs_file, align 8
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  %548 = load i64, i64* @procfs_file, align 8
  br label %551

549:                                              ; preds = %544
  %550 = load i64, i64* @stdout, align 8
  br label %551

551:                                              ; preds = %549, %547
  %552 = phi i64 [ %548, %547 ], [ %550, %549 ]
  %553 = call i32 (i64, i8*, ...) @fprintf(i64 %552, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i64 0, i64 0))
  br label %554

554:                                              ; preds = %551, %539
  %555 = load i32, i32* %13, align 4
  %556 = load i32, i32* @PRFS_STOPTERM, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %569

559:                                              ; preds = %554
  %560 = load i64, i64* @procfs_file, align 8
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %564

562:                                              ; preds = %559
  %563 = load i64, i64* @procfs_file, align 8
  br label %566

564:                                              ; preds = %559
  %565 = load i64, i64* @stdout, align 8
  br label %566

566:                                              ; preds = %564, %562
  %567 = phi i64 [ %563, %562 ], [ %565, %564 ]
  %568 = call i32 (i64, i8*, ...) @fprintf(i64 %567, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0))
  br label %569

569:                                              ; preds = %566, %554
  %570 = load i32, i32* %13, align 4
  %571 = load i32, i32* @PRFS_STOPTCR, align 4
  %572 = and i32 %570, %571
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %584

574:                                              ; preds = %569
  %575 = load i64, i64* @procfs_file, align 8
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %574
  %578 = load i64, i64* @procfs_file, align 8
  br label %581

579:                                              ; preds = %574
  %580 = load i64, i64* @stdout, align 8
  br label %581

581:                                              ; preds = %579, %577
  %582 = phi i64 [ %578, %577 ], [ %580, %579 ]
  %583 = call i32 (i64, i8*, ...) @fprintf(i64 %582, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.34, i64 0, i64 0))
  br label %584

584:                                              ; preds = %581, %569
  %585 = load i32, i32* %13, align 4
  %586 = load i32, i32* @PRFS_STOPTTERM, align 4
  %587 = and i32 %585, %586
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %599

589:                                              ; preds = %584
  %590 = load i64, i64* @procfs_file, align 8
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %594

592:                                              ; preds = %589
  %593 = load i64, i64* @procfs_file, align 8
  br label %596

594:                                              ; preds = %589
  %595 = load i64, i64* @stdout, align 8
  br label %596

596:                                              ; preds = %594, %592
  %597 = phi i64 [ %593, %592 ], [ %595, %594 ]
  %598 = call i32 (i64, i8*, ...) @fprintf(i64 %597, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0))
  br label %599

599:                                              ; preds = %596, %584
  %600 = load i32, i32* %13, align 4
  %601 = load i32, i32* @PRFS_KOLC, align 4
  %602 = and i32 %600, %601
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %604, label %614

604:                                              ; preds = %599
  %605 = load i64, i64* @procfs_file, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %609

607:                                              ; preds = %604
  %608 = load i64, i64* @procfs_file, align 8
  br label %611

609:                                              ; preds = %604
  %610 = load i64, i64* @stdout, align 8
  br label %611

611:                                              ; preds = %609, %607
  %612 = phi i64 [ %608, %607 ], [ %610, %609 ]
  %613 = call i32 (i64, i8*, ...) @fprintf(i64 %612, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0))
  br label %614

614:                                              ; preds = %611, %599
  %615 = load i64, i64* @procfs_file, align 8
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %619

617:                                              ; preds = %614
  %618 = load i64, i64* @procfs_file, align 8
  br label %621

619:                                              ; preds = %614
  %620 = load i64, i64* @stdout, align 8
  br label %621

621:                                              ; preds = %619, %617
  %622 = phi i64 [ %618, %617 ], [ %620, %619 ]
  %623 = call i32 (i64, i8*, ...) @fprintf(i64 %622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %673

624:                                              ; preds = %55
  %625 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %626 = load i32, i32* %11, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %625, i64 %627
  %629 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %628, i32 0, i32 0
  %630 = load i8*, i8** %629, align 8
  %631 = icmp ne i8* %630, null
  br i1 %631, label %632, label %660

632:                                              ; preds = %624
  %633 = load i64, i64* @procfs_file, align 8
  %634 = icmp ne i64 %633, 0
  br i1 %634, label %635, label %637

635:                                              ; preds = %632
  %636 = load i64, i64* @procfs_file, align 8
  br label %639

637:                                              ; preds = %632
  %638 = load i64, i64* @stdout, align 8
  br label %639

639:                                              ; preds = %637, %635
  %640 = phi i64 [ %636, %635 ], [ %638, %637 ]
  %641 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %642 = load i32, i32* %11, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %641, i64 %643
  %645 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %644, i32 0, i32 0
  %646 = load i8*, i8** %645, align 8
  %647 = load i64, i64* @info_verbose, align 8
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %656

649:                                              ; preds = %639
  %650 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %651 = load i32, i32* %11, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %650, i64 %652
  %654 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %653, i32 0, i32 2
  %655 = load i8*, i8** %654, align 8
  br label %657

656:                                              ; preds = %639
  br label %657

657:                                              ; preds = %656, %649
  %658 = phi i8* [ %655, %649 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %656 ]
  %659 = call i32 (i64, i8*, ...) @fprintf(i64 %640, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i64 0, i64 0), i8* %646, i8* %658)
  br label %672

660:                                              ; preds = %624
  %661 = load i64, i64* @procfs_file, align 8
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %665

663:                                              ; preds = %660
  %664 = load i64, i64* @procfs_file, align 8
  br label %667

665:                                              ; preds = %660
  %666 = load i64, i64* @stdout, align 8
  br label %667

667:                                              ; preds = %665, %663
  %668 = phi i64 [ %664, %663 ], [ %666, %665 ]
  %669 = load i64, i64* %7, align 8
  %670 = load i64, i64* %7, align 8
  %671 = call i32 (i64, i8*, ...) @fprintf(i64 %668, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.38, i64 0, i64 0), i64 %669, i64 %670)
  br label %672

672:                                              ; preds = %667, %657
  br label %673

673:                                              ; preds = %672, %621, %502, %465, %301, %261, %236, %211, %186, %161, %142, %98
  %674 = load i64, i64* @procfs_file, align 8
  %675 = icmp ne i64 %674, 0
  br i1 %675, label %676, label %679

676:                                              ; preds = %673
  %677 = load i64, i64* @procfs_file, align 8
  %678 = call i32 @fflush(i64 %677)
  br label %679

679:                                              ; preds = %676, %673
  br label %680

680:                                              ; preds = %679, %5
  store i64 0, i64* @errno, align 8
  %681 = load i32, i32* %6, align 4
  %682 = load i64, i64* %7, align 8
  %683 = load i8*, i8** %8, align 8
  %684 = call i32 @ioctl(i32 %681, i64 %682, i8* %683)
  store i32 %684, i32* %12, align 4
  %685 = load i64, i64* @procfs_trace, align 8
  %686 = icmp ne i64 %685, 0
  br i1 %686, label %687, label %725

687:                                              ; preds = %680
  %688 = load i32, i32* %12, align 4
  %689 = icmp slt i32 %688, 0
  br i1 %689, label %690, label %725

690:                                              ; preds = %687
  %691 = load i64, i64* @procfs_file, align 8
  %692 = icmp ne i64 %691, 0
  br i1 %692, label %693, label %695

693:                                              ; preds = %690
  %694 = load i64, i64* @procfs_file, align 8
  br label %697

695:                                              ; preds = %690
  %696 = load i64, i64* @stdout, align 8
  br label %697

697:                                              ; preds = %695, %693
  %698 = phi i64 [ %694, %693 ], [ %696, %695 ]
  %699 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %700 = load i32, i32* %11, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %699, i64 %701
  %703 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %702, i32 0, i32 0
  %704 = load i8*, i8** %703, align 8
  %705 = icmp ne i8* %704, null
  br i1 %705, label %706, label %713

706:                                              ; preds = %697
  %707 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioctl_table, align 8
  %708 = load i32, i32* %11, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %707, i64 %709
  %711 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %710, i32 0, i32 0
  %712 = load i8*, i8** %711, align 8
  br label %714

713:                                              ; preds = %697
  br label %714

714:                                              ; preds = %713, %706
  %715 = phi i8* [ %712, %706 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), %713 ]
  %716 = load i64, i64* @errno, align 8
  %717 = call i8* @safe_strerror(i64 %716)
  %718 = call i32 (i64, i8*, ...) @fprintf(i64 %698, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i8* %715, i8* %717)
  %719 = load i64, i64* @procfs_file, align 8
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %724

721:                                              ; preds = %714
  %722 = load i64, i64* @procfs_file, align 8
  %723 = call i32 @fflush(i64 %722)
  br label %724

724:                                              ; preds = %721, %714
  br label %725

725:                                              ; preds = %724, %687, %680
  %726 = load i32, i32* %12, align 4
  ret i32 %726
}

declare dso_local i32 @prepare_to_trace(...) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @proc_prettyfprint_signalset(i64, i32*, i32) #1

declare dso_local i32 @proc_prettyfprint_faultset(i64, i32*, i32) #1

declare dso_local i32 @proc_prettyfprint_syscalls(i64, i32*, i32) #1

declare dso_local i32 @proc_prettyfprint_signal(i64, i64, i32) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @ioctl(i32, i64, i8*) #1

declare dso_local i8* @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
