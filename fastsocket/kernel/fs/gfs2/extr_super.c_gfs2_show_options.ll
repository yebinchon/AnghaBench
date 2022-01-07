; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_show_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_super.c_gfs2_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.vfsmount = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, %struct.TYPE_4__, i32, %struct.gfs2_args }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.gfs2_args = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i64*, i64* }

@.str = private unnamed_addr constant [6 x i8] c",meta\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c",lockproto=%s\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c",locktable=%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c",hostdata=%s\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c",spectator\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c",ignore_local_fs\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c",localflocks\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c",localcaching\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c",debug\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c",upgrade\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c",acl\00", align 1
@GFS2_QUOTA_DEFAULT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"account\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c",quota=%s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c",suiddir\00", align 1
@GFS2_DATA_DEFAULT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [10 x i8] c"writeback\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c",data=%s\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c",discard\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c",commit=%d\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c",statfs_quantum=%d\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c",quota_quantum=%d\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c",statfs_percent=%d\00", align 1
@GFS2_ERRORS_DEFAULT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"withdraw\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"panic\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c",errors=%s\00", align 1
@SDF_NOBARRIERS = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [11 x i8] c",nobarrier\00", align 1
@SDF_DEMOTE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [23 x i8] c",demote_interface_used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.vfsmount*)* @gfs2_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_show_options(%struct.seq_file* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.gfs2_sbd*, align 8
  %6 = alloca %struct.gfs2_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %4, align 8
  %11 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %12 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %14, align 8
  store %struct.gfs2_sbd* %15, %struct.gfs2_sbd** %5, align 8
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 3
  store %struct.gfs2_args* %17, %struct.gfs2_args** %6, align 8
  %18 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %19 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %22 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @is_ancestor(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %31 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %30, i32 0, i32 15
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %39 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %38, i32 0, i32 15
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64* %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %44 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %43, i32 0, i32 14
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %52 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %51, i32 0, i32 14
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64* %53)
  br label %55

55:                                               ; preds = %49, %42
  %56 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %57 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %56, i32 0, i32 13
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %65 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %64, i32 0, i32 13
  %66 = load i64*, i64** %65, align 8
  %67 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i64* %66)
  br label %68

68:                                               ; preds = %62, %55
  %69 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %70 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %69, i32 0, i32 12
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %75 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %78 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %77, i32 0, i32 11
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %86 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %85, i32 0, i32 10
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %91 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %94 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %93, i32 0, i32 9
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %99 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %102 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %110 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %109, i32 0, i32 7
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %115 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %108
  %117 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %118 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %123 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %126 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @GFS2_QUOTA_DEFAULT, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %142

130:                                              ; preds = %124
  %131 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %132 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  switch i32 %133, label %137 [
    i32 129, label %134
    i32 130, label %135
    i32 128, label %136
  ]

134:                                              ; preds = %130
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %138

135:                                              ; preds = %130
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %138

136:                                              ; preds = %130
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %138

137:                                              ; preds = %130
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %138

138:                                              ; preds = %137, %136, %135, %134
  %139 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %139, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* %140)
  br label %142

142:                                              ; preds = %138, %124
  %143 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %144 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %142
  %148 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %149 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %148, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %142
  %151 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %152 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @GFS2_DATA_DEFAULT, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %150
  %157 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %158 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %162 [
    i32 133, label %160
    i32 134, label %161
  ]

160:                                              ; preds = %156
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %9, align 8
  br label %163

161:                                              ; preds = %156
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8** %9, align 8
  br label %163

162:                                              ; preds = %156
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %9, align 8
  br label %163

163:                                              ; preds = %162, %161, %160
  %164 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %164, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %163, %150
  %168 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %169 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %174 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %173, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %167
  %176 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %177 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 60
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %184 = load i32, i32* %7, align 4
  %185 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %183, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %182, %175
  %187 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %188 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 30
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %194, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i32 %195)
  br label %197

197:                                              ; preds = %193, %186
  %198 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %199 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 60
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %206 = load i32, i32* %7, align 4
  %207 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %206)
  br label %208

208:                                              ; preds = %204, %197
  %209 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %210 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %208
  %214 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %215 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %216 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %214, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0), i32 %217)
  br label %219

219:                                              ; preds = %213, %208
  %220 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %221 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @GFS2_ERRORS_DEFAULT, align 4
  %224 = icmp ne i32 %222, %223
  br i1 %224, label %225, label %236

225:                                              ; preds = %219
  %226 = load %struct.gfs2_args*, %struct.gfs2_args** %6, align 8
  %227 = getelementptr inbounds %struct.gfs2_args, %struct.gfs2_args* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %231 [
    i32 131, label %229
    i32 132, label %230
  ]

229:                                              ; preds = %225
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i8** %10, align 8
  br label %232

230:                                              ; preds = %225
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8** %10, align 8
  br label %232

231:                                              ; preds = %225
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %10, align 8
  br label %232

232:                                              ; preds = %231, %230, %229
  %233 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %234 = load i8*, i8** %10, align 8
  %235 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %233, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8* %234)
  br label %236

236:                                              ; preds = %232, %219
  %237 = load i32, i32* @SDF_NOBARRIERS, align 4
  %238 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %239 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %238, i32 0, i32 0
  %240 = call i64 @test_bit(i32 %237, i32* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %236
  %243 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %244 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %243, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  br label %245

245:                                              ; preds = %242, %236
  %246 = load i32, i32* @SDF_DEMOTE, align 4
  %247 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  %248 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %247, i32 0, i32 0
  %249 = call i64 @test_bit(i32 %246, i32* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %245
  %252 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %253 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %252, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  br label %254

254:                                              ; preds = %251, %245
  ret i32 0
}

declare dso_local i64 @is_ancestor(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
