; ModuleID = '/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/chio/extr_chio.c_do_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.changer_params = type { i32, i32, i32, i32 }
%struct.changer_element_status_request = type { i32, i32, i32, %struct.changer_element_status*, i32 }
%struct.changer_element_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }

@optreset = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vVsSbaI\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: bad option\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: too many arguments\00", align 1
@changer_fd = common dso_local global i32 0, align 4
@CHIOGPARAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"%s: CHIOGPARAMS\00", align 1
@changer_name = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"not that many pickers in device\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"picker\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"not that many slots in device\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"slot\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"not that many portals in device\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"portal\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"not that many drives in device\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"drive\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%s: no %s elements\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"can't allocate status storage\00", align 1
@CESR_VOLTAGS = common dso_local global i32 0, align 4
@CHIOGSTATUS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"%s: CHIOGSTATUS\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"%s %d: %s\00", align 1
@CESTATUS_BITS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [24 x i8] c" sense: <0x%02x/0x%02x>\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c" voltag: <%s:%d>\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c" avoltag: <%s:%d>\00", align 1
@CES_SOURCE_VALID = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c" source: <%s %d>\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c" source: <>\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c" intaddr: <%d>\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" scsi: <\00", align 1
@CES_SCSIID_VALID = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CES_LUN_VALID = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [72 x i8] c"usage: %s %s [-vVsSbaA] [<element type> [<start-addr> [<end-addr>] ] ]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_status(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.changer_params, align 4
  %9 = alloca %struct.changer_element_status_request, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.changer_element_status*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %16, align 8
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  br label %25

25:                                               ; preds = %42, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i8**, i8*** %7, align 8
  %28 = call i32 @getopt(i32 %26, i8** %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %23, align 4
  %29 = icmp ne i32 %28, -1
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i32, i32* %23, align 4
  switch i32 %31, label %39 [
    i32 118, label %32
    i32 86, label %33
    i32 115, label %34
    i32 83, label %35
    i32 98, label %36
    i32 73, label %37
    i32 97, label %38
  ]

32:                                               ; preds = %30
  store i32 1, i32* %17, align 4
  br label %42

33:                                               ; preds = %30
  store i32 1, i32* %18, align 4
  br label %42

34:                                               ; preds = %30
  store i32 1, i32* %19, align 4
  br label %42

35:                                               ; preds = %30
  store i32 1, i32* %21, align 4
  br label %42

36:                                               ; preds = %30
  store i32 1, i32* %20, align 4
  br label %42

37:                                               ; preds = %30
  store i32 1, i32* %22, align 4
  br label %42

38:                                               ; preds = %30
  store i32 1, i32* %22, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %19, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %18, align 4
  store i32 1, i32* %17, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %367

42:                                               ; preds = %38, %37, %36, %35, %34, %33, %32
  br label %25

43:                                               ; preds = %25
  %44 = load i32, i32* @optind, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @optind, align 4
  %48 = load i8**, i8*** %7, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  store i8** %50, i8*** %7, align 8
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 3
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %54)
  br label %367

56:                                               ; preds = %43
  %57 = load i32, i32* @changer_fd, align 4
  %58 = load i32, i32* @CHIOGPARAMS, align 4
  %59 = bitcast %struct.changer_params* %8 to i8*
  %60 = call i64 @ioctl(i32 %57, i32 %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i8*, i8** @changer_name, align 8
  %64 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i8**, i8*** %7, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @parse_element_type(i8* %71)
  store i32 %72, i32* %15, align 4
  store i32 %72, i32* %14, align 4
  br label %74

73:                                               ; preds = %65
  store i32 129, i32* %14, align 4
  store i32 131, i32* %15, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i32, i32* %6, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i8**, i8*** %7, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 1
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @atol(i8* %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %84, 2
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load i8**, i8*** %7, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 2
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @atol(i8* %89)
  %91 = trunc i64 %90 to i32
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %91, %92
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %86, %83
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %363, %95
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %101, label %366

101:                                              ; preds = %97
  %102 = load i32, i32* %13, align 4
  switch i32 %102, label %163 [
    i32 129, label %103
    i32 128, label %118
    i32 130, label %133
    i32 131, label %148
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %12, align 4
  br label %117

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  %111 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %106
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %16, align 8
  br label %164

118:                                              ; preds = %101
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  br label %132

124:                                              ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp sgt i32 %125, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  br label %132

132:                                              ; preds = %131, %121
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %16, align 8
  br label %164

133:                                              ; preds = %101
  %134 = load i32, i32* %12, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %12, align 4
  br label %147

139:                                              ; preds = %133
  %140 = load i32, i32* %12, align 4
  %141 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp sgt i32 %140, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 @errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  br label %147

147:                                              ; preds = %146, %136
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %16, align 8
  br label %164

148:                                              ; preds = %101
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %12, align 4
  br label %162

154:                                              ; preds = %148
  %155 = load i32, i32* %12, align 4
  %156 = getelementptr inbounds %struct.changer_params, %struct.changer_params* %8, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp sgt i32 %155, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = call i32 @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %154
  br label %162

162:                                              ; preds = %161, %151
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %16, align 8
  br label %164

163:                                              ; preds = %101
  store i32 0, i32* %12, align 4
  store i8* null, i8** %16, align 8
  br label %164

164:                                              ; preds = %163, %162, %147, %132, %117
  %165 = load i32, i32* %12, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %363

171:                                              ; preds = %167
  %172 = load i8*, i8** @changer_name, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %172, i8* %173)
  store i32 0, i32* %4, align 4
  br label %372

175:                                              ; preds = %164
  %176 = call i32 @bzero(%struct.changer_element_status_request* %9, i32 32)
  %177 = load i32, i32* %13, align 4
  %178 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 0
  store i32 %177, i32* %178, align 8
  %179 = load i32, i32* %11, align 4
  %180 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 1
  store i32 %179, i32* %180, align 4
  %181 = load i32, i32* %12, align 4
  %182 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 2
  store i32 %181, i32* %182, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = call i64 @calloc(i64 %184, i32 88)
  %186 = inttoptr i64 %185 to %struct.changer_element_status*
  %187 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 3
  store %struct.changer_element_status* %186, %struct.changer_element_status** %187, align 8
  %188 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 3
  %189 = load %struct.changer_element_status*, %struct.changer_element_status** %188, align 8
  %190 = icmp ne %struct.changer_element_status* %189, null
  br i1 %190, label %193, label %191

191:                                              ; preds = %175
  %192 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %175
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %17, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %196, %193
  %200 = load i32, i32* @CESR_VOLTAGS, align 4
  %201 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %200
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %199, %196
  %205 = load i32, i32* @changer_fd, align 4
  %206 = load i32, i32* @CHIOGSTATUS, align 4
  %207 = bitcast %struct.changer_element_status_request* %9 to i8*
  %208 = call i64 @ioctl(i32 %205, i32 %206, i8* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 3
  %212 = load %struct.changer_element_status*, %struct.changer_element_status** %211, align 8
  %213 = call i32 @free(%struct.changer_element_status* %212)
  %214 = load i8*, i8** @changer_name, align 8
  %215 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i8* %214)
  br label %216

216:                                              ; preds = %210, %204
  store i32 0, i32* %10, align 4
  br label %217

217:                                              ; preds = %356, %216
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %359

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 3
  %223 = load %struct.changer_element_status*, %struct.changer_element_status** %222, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %223, i64 %225
  store %struct.changer_element_status* %226, %struct.changer_element_status** %24, align 8
  %227 = load i8*, i8** %16, align 8
  %228 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %229 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %232 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @CESTATUS_BITS, align 4
  %235 = call i8* @bits_to_string(i32 %233, i32 %234)
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %227, i32 %230, i8* %235)
  %237 = load i32, i32* %19, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %221
  %240 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %241 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %244 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %242, i32 %245)
  br label %247

247:                                              ; preds = %239, %221
  %248 = load i32, i32* %17, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %247
  %251 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %252 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %251, i32 0, i32 13
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %256 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %255, i32 0, i32 13
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i8* %254, i32 %258)
  br label %260

260:                                              ; preds = %250, %247
  %261 = load i32, i32* %18, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %273

263:                                              ; preds = %260
  %264 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %265 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %264, i32 0, i32 12
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %269 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %268, i32 0, i32 12
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i8* %267, i32 %271)
  br label %273

273:                                              ; preds = %263, %260
  %274 = load i32, i32* %21, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %295

276:                                              ; preds = %273
  %277 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %278 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @CES_SOURCE_VALID, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %276
  %284 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %285 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %284, i32 0, i32 11
  %286 = load i32, i32* %285, align 8
  %287 = call i8* @element_type_name(i32 %286)
  %288 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %289 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i8* %287, i32 %290)
  br label %294

292:                                              ; preds = %276
  %293 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0))
  br label %294

294:                                              ; preds = %292, %283
  br label %295

295:                                              ; preds = %294, %273
  %296 = load i32, i32* %22, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %300 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %301)
  br label %303

303:                                              ; preds = %298, %295
  %304 = load i32, i32* %20, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %338

306:                                              ; preds = %303
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  %308 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %309 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @CES_SCSIID_VALID, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %306
  %315 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %316 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %315, i32 0, i32 6
  %317 = load i32, i32* %316, align 8
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %317)
  br label %321

319:                                              ; preds = %306
  %320 = call i32 @putchar(i8 signext 63)
  br label %321

321:                                              ; preds = %319, %314
  %322 = call i32 @putchar(i8 signext 58)
  %323 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %324 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @CES_LUN_VALID, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %321
  %330 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %331 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i64 0, i64 0), i32 %332)
  br label %336

334:                                              ; preds = %321
  %335 = call i32 @putchar(i8 signext 63)
  br label %336

336:                                              ; preds = %334, %329
  %337 = call i32 @putchar(i8 signext 62)
  br label %338

338:                                              ; preds = %336, %303
  %339 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %340 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %339, i32 0, i32 8
  %341 = load i64, i64* %340, align 8
  %342 = icmp sgt i64 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %338
  %344 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %345 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %344, i32 0, i32 10
  %346 = load i32, i32* %345, align 4
  %347 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %348 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %347, i32 0, i32 9
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.changer_element_status*, %struct.changer_element_status** %24, align 8
  %351 = getelementptr inbounds %struct.changer_element_status, %struct.changer_element_status* %350, i32 0, i32 8
  %352 = load i64, i64* %351, align 8
  %353 = call i32 @print_designator(i32 %346, i32 %349, i64 %352)
  br label %354

354:                                              ; preds = %343, %338
  %355 = call i32 @putchar(i8 signext 10)
  br label %356

356:                                              ; preds = %354
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %10, align 4
  br label %217

359:                                              ; preds = %217
  %360 = getelementptr inbounds %struct.changer_element_status_request, %struct.changer_element_status_request* %9, i32 0, i32 3
  %361 = load %struct.changer_element_status*, %struct.changer_element_status** %360, align 8
  %362 = call i32 @free(%struct.changer_element_status* %361)
  store i32 0, i32* %12, align 4
  br label %363

363:                                              ; preds = %359, %170
  %364 = load i32, i32* %13, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %13, align 4
  br label %97

366:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %372

367:                                              ; preds = %53, %39
  %368 = load i32, i32* @stderr, align 4
  %369 = call i8* (...) @getprogname()
  %370 = load i8*, i8** %5, align 8
  %371 = call i32 @fprintf(i32 %368, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.24, i64 0, i64 0), i8* %369, i8* %370)
  store i32 1, i32* %4, align 4
  br label %372

372:                                              ; preds = %367, %366, %171
  %373 = load i32, i32* %4, align 4
  ret i32 %373
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @parse_element_type(i8*) #1

declare dso_local i64 @atol(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bzero(%struct.changer_element_status_request*, i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.changer_element_status*) #1

declare dso_local i8* @bits_to_string(i32, i32) #1

declare dso_local i8* @element_type_name(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @print_designator(i32, i32, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
