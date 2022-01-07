; ModuleID = '/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_prtstat.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/df/extr_df.c_prtstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.maxwidths = type { i32, i32, i32, i32, i32, i32, i32 }

@prtstat.blocksize = internal global i64 0, align 8
@prtstat.headerlen = internal global i32 0, align 4
@prtstat.timesthrough = internal global i32 0, align 4
@prtstat.header = internal global i8* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"Filesystem\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@thousands = common dso_local global i64 0, align 8
@hflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"   Size\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Used\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Avail\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"{T:/%-*s}\00", align 1
@Tflag = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"  {T:/%-*s}\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c" {T:/%*s} {T:/%*s} {T:/%*s} {T:Capacity}\00", align 1
@iflag = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"  iused\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"ifree\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" {T:/%*s} {T:/%*s} {T:%iused}\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"iused\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"  {T:Mounted on}\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"filesystem\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"File system %s does not have a block size, assuming 512.\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"{tk:name/%-*s}\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"  {:type/%-*s}\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c" {t:total-blocks/%*j'd} {t:used-blocks/%*j'd} {t:available-blocks/%*j'd}\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c" {t:total-blocks/%*jd} {t:used-blocks/%*jd} {t:available-blocks/%*jd}\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c" {:used-percent/%5.0f}{U:%%}\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c" {:inodes-used/%5s}\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c" {:inodes-free/%5s}\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c" {:inodes-used/%*j'd} {:inodes-free/%*j'd}\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c" {:inodes-used/%*jd} {:inodes-free/%*jd}\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c" {:inodes-used-percent/%4.0f}{U:%%} \00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@MNAMELEN = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"  {:mounted-on}\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.statfs*, %struct.maxwidths*)* @prtstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prtstat(%struct.statfs* %0, %struct.maxwidths* %1) #0 {
  %3 = alloca %struct.statfs*, align 8
  %4 = alloca %struct.maxwidths*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct.statfs* %0, %struct.statfs** %3, align 8
  store %struct.maxwidths* %1, %struct.maxwidths** %4, align 8
  %9 = load i32, i32* @prtstat.timesthrough, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @prtstat.timesthrough, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %187

12:                                               ; preds = %2
  %13 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %14 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = trunc i64 %16 to i32
  %18 = call i8* @imax(i32 %15, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %21 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %23 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %26 = trunc i64 %25 to i32
  %27 = call i8* @imax(i32 %24, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %30 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* @thousands, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %12
  %34 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %35 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sdiv i32 %37, 3
  %39 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %40 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %44 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sdiv i32 %46, 3
  %48 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %49 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %53 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sdiv i32 %55, 3
  %57 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %58 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %62 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sdiv i32 %64, 3
  %66 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %67 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %71 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sdiv i32 %73, 3
  %75 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %76 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %33, %12
  %80 = load i64, i64* @hflag, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** @prtstat.header, align 8
  %83 = load i8*, i8** @prtstat.header, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = trunc i64 %84 to i32
  %86 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %87 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %89 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %88, i32 0, i32 3
  store i32 %85, i32* %89, align 4
  %90 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %91 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %90, i32 0, i32 2
  store i32 %85, i32* %91, align 4
  br label %102

92:                                               ; preds = %79
  %93 = call i8* @getbsize(i32* @prtstat.headerlen, i64* @prtstat.blocksize)
  store i8* %93, i8** @prtstat.header, align 8
  %94 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %95 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @prtstat.headerlen, align 4
  %98 = call i8* @imax(i32 %96, i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %101 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 4
  br label %102

102:                                              ; preds = %92, %82
  %103 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %104 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %107 = trunc i64 %106 to i32
  %108 = call i8* @imax(i32 %105, i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %111 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %113 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %116 = trunc i64 %115 to i32
  %117 = call i8* @imax(i32 %114, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %120 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %122 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %123, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %125 = load i64, i64* @Tflag, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %102
  %128 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %129 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %127, %102
  %133 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %134 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i8*, i8** @prtstat.header, align 8
  %137 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %138 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %141 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %135, i8* %136, i32 %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %144 = load i64, i64* @iflag, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %185

146:                                              ; preds = %132
  %147 = load i64, i64* @hflag, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  br label %154

150:                                              ; preds = %146
  %151 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %152 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  br label %154

154:                                              ; preds = %150, %149
  %155 = phi i32 [ 0, %149 ], [ %153, %150 ]
  %156 = call i64 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %157 = trunc i64 %156 to i32
  %158 = call i8* @imax(i32 %155, i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %161 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %160, i32 0, i32 5
  store i32 %159, i32* %161, align 4
  %162 = load i64, i64* @hflag, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  br label %169

165:                                              ; preds = %154
  %166 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %167 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  br label %169

169:                                              ; preds = %165, %164
  %170 = phi i32 [ 0, %164 ], [ %168, %165 ]
  %171 = call i64 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %172 = trunc i64 %171 to i32
  %173 = call i8* @imax(i32 %170, i32 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %176 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %175, i32 0, i32 6
  store i32 %174, i32* %176, align 4
  %177 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %178 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = sub nsw i32 %179, 2
  %181 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %182 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %185

185:                                              ; preds = %169, %132
  %186 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %2
  %188 = call i32 @xo_open_instance(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %189 = load %struct.statfs*, %struct.statfs** %3, align 8
  %190 = getelementptr inbounds %struct.statfs, %struct.statfs* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %187
  %194 = load %struct.statfs*, %struct.statfs** %3, align 8
  %195 = getelementptr inbounds %struct.statfs, %struct.statfs* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @xo_warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i32 %196)
  %198 = load %struct.statfs*, %struct.statfs** %3, align 8
  %199 = getelementptr inbounds %struct.statfs, %struct.statfs* %198, i32 0, i32 0
  store i32 512, i32* %199, align 8
  br label %200

200:                                              ; preds = %193, %187
  %201 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %202 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.statfs*, %struct.statfs** %3, align 8
  %205 = getelementptr inbounds %struct.statfs, %struct.statfs* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %203, i32 %206)
  %208 = load i64, i64* @Tflag, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %200
  %211 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %212 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.statfs*, %struct.statfs** %3, align 8
  %215 = getelementptr inbounds %struct.statfs, %struct.statfs* %214, i32 0, i32 8
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0), i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %210, %200
  %219 = load %struct.statfs*, %struct.statfs** %3, align 8
  %220 = getelementptr inbounds %struct.statfs, %struct.statfs* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.statfs*, %struct.statfs** %3, align 8
  %223 = getelementptr inbounds %struct.statfs, %struct.statfs* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = sub nsw i64 %221, %224
  store i64 %225, i64* %5, align 8
  %226 = load %struct.statfs*, %struct.statfs** %3, align 8
  %227 = getelementptr inbounds %struct.statfs, %struct.statfs* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* %5, align 8
  %230 = add nsw i64 %228, %229
  store i64 %230, i64* %6, align 8
  %231 = load i64, i64* @hflag, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %218
  %234 = load %struct.statfs*, %struct.statfs** %3, align 8
  %235 = load i64, i64* %5, align 8
  %236 = call i32 @prthuman(%struct.statfs* %234, i64 %235)
  br label %276

237:                                              ; preds = %218
  %238 = load i64, i64* @thousands, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i64 0, i64 0), i8** %8, align 8
  br label %242

241:                                              ; preds = %237
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.18, i64 0, i64 0), i8** %8, align 8
  br label %242

242:                                              ; preds = %241, %240
  %243 = load i8*, i8** %8, align 8
  %244 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %245 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.statfs*, %struct.statfs** %3, align 8
  %248 = getelementptr inbounds %struct.statfs, %struct.statfs* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.statfs*, %struct.statfs** %3, align 8
  %251 = getelementptr inbounds %struct.statfs, %struct.statfs* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i64, i64* @prtstat.blocksize, align 8
  %254 = call i32 @fsbtoblk(i64 %249, i32 %252, i64 %253)
  %255 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %256 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i64, i64* %5, align 8
  %259 = load %struct.statfs*, %struct.statfs** %3, align 8
  %260 = getelementptr inbounds %struct.statfs, %struct.statfs* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i64, i64* @prtstat.blocksize, align 8
  %263 = call i32 @fsbtoblk(i64 %258, i32 %261, i64 %262)
  %264 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %265 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.statfs*, %struct.statfs** %3, align 8
  %268 = getelementptr inbounds %struct.statfs, %struct.statfs* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.statfs*, %struct.statfs** %3, align 8
  %271 = getelementptr inbounds %struct.statfs, %struct.statfs* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i64, i64* @prtstat.blocksize, align 8
  %274 = call i32 @fsbtoblk(i64 %269, i32 %272, i64 %273)
  %275 = call i32 (i8*, ...) @xo_emit(i8* %243, i32 %246, i32 %254, i32 %257, i32 %263, i32 %266, i32 %274)
  br label %276

276:                                              ; preds = %242, %233
  %277 = load i64, i64* %6, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  br label %287

280:                                              ; preds = %276
  %281 = load i64, i64* %5, align 8
  %282 = sitofp i64 %281 to double
  %283 = load i64, i64* %6, align 8
  %284 = sitofp i64 %283 to double
  %285 = fdiv double %282, %284
  %286 = fmul double %285, 1.000000e+02
  br label %287

287:                                              ; preds = %280, %279
  %288 = phi double [ 1.000000e+02, %279 ], [ %286, %280 ]
  %289 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), double %288)
  %290 = load i64, i64* @iflag, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %345

292:                                              ; preds = %287
  %293 = load %struct.statfs*, %struct.statfs** %3, align 8
  %294 = getelementptr inbounds %struct.statfs, %struct.statfs* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  store i64 %295, i64* %7, align 8
  %296 = load i64, i64* %7, align 8
  %297 = load %struct.statfs*, %struct.statfs** %3, align 8
  %298 = getelementptr inbounds %struct.statfs, %struct.statfs* %297, i32 0, i32 5
  %299 = load i64, i64* %298, align 8
  %300 = sub nsw i64 %296, %299
  store i64 %300, i64* %5, align 8
  %301 = load i64, i64* @hflag, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %292
  %304 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  %305 = load i64, i64* %5, align 8
  %306 = call i32 @prthumanvalinode(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i64 %305)
  %307 = load %struct.statfs*, %struct.statfs** %3, align 8
  %308 = getelementptr inbounds %struct.statfs, %struct.statfs* %307, i32 0, i32 5
  %309 = load i64, i64* %308, align 8
  %310 = call i32 @prthumanvalinode(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i64 %309)
  br label %331

311:                                              ; preds = %292
  %312 = load i64, i64* @thousands, align 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i8** %8, align 8
  br label %316

315:                                              ; preds = %311
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i8** %8, align 8
  br label %316

316:                                              ; preds = %315, %314
  %317 = load i8*, i8** %8, align 8
  %318 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %319 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = load i64, i64* %5, align 8
  %322 = trunc i64 %321 to i32
  %323 = load %struct.maxwidths*, %struct.maxwidths** %4, align 8
  %324 = getelementptr inbounds %struct.maxwidths, %struct.maxwidths* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.statfs*, %struct.statfs** %3, align 8
  %327 = getelementptr inbounds %struct.statfs, %struct.statfs* %326, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = trunc i64 %328 to i32
  %330 = call i32 (i8*, ...) @xo_emit(i8* %317, i32 %320, i32 %322, i32 %325, i32 %329)
  br label %331

331:                                              ; preds = %316, %303
  %332 = load i64, i64* %7, align 8
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %331
  br label %342

335:                                              ; preds = %331
  %336 = load i64, i64* %5, align 8
  %337 = sitofp i64 %336 to double
  %338 = load i64, i64* %7, align 8
  %339 = sitofp i64 %338 to double
  %340 = fdiv double %337, %339
  %341 = fmul double %340, 1.000000e+02
  br label %342

342:                                              ; preds = %335, %334
  %343 = phi double [ 1.000000e+02, %334 ], [ %341, %335 ]
  %344 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), double %343)
  br label %347

345:                                              ; preds = %287
  %346 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0))
  br label %347

347:                                              ; preds = %345, %342
  %348 = load %struct.statfs*, %struct.statfs** %3, align 8
  %349 = getelementptr inbounds %struct.statfs, %struct.statfs* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* @MNAMELEN, align 4
  %352 = call i64 @strncmp(i32 %350, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %359

354:                                              ; preds = %347
  %355 = load %struct.statfs*, %struct.statfs** %3, align 8
  %356 = getelementptr inbounds %struct.statfs, %struct.statfs* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.27, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %354, %347
  %360 = call i32 (i8*, ...) @xo_emit(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %361 = call i32 @xo_close_instance(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i8* @imax(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getbsize(i32*, i64*) #1

declare dso_local i32 @xo_emit(i8*, ...) #1

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_warnx(i8*, i32) #1

declare dso_local i32 @prthuman(%struct.statfs*, i64) #1

declare dso_local i32 @fsbtoblk(i64, i32, i64) #1

declare dso_local i32 @prthumanvalinode(i8*, i64) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @xo_close_instance(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
