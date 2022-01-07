; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_journal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_init_journal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, i32, %struct.gfs2_holder, %struct.TYPE_6__, %struct.gfs2_holder, i32, %struct.gfs2_jdesc*, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.gfs2_holder = type { i32 }
%struct.gfs2_jdesc = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"jindex\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"can't lookup journal index: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"can't read journal index: %d\0A\00", align 1
@EUSERS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"no journals!\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"can't mount journal #%u\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"there are only %u journals (0 - %u)\0A\00", align 1
@gfs2_journal_glops = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@LM_FLAG_NOEXP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"can't acquire journal glock: %d\0A\00", align 1
@LM_ST_SHARED = common dso_local global i32 0, align 4
@GL_EXACT = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"can't acquire journal inode glock: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"my journal (%u) is bad: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"error recovering journal %u: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"error recovering my journal: %d\0A\00", align 1
@SDF_JOURNAL_CHECKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_sbd*, i32)* @init_journal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_journal(%struct.gfs2_sbd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.gfs2_holder, align 4
  %8 = alloca %struct.gfs2_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gfs2_jdesc*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  store %struct.inode* %17, %struct.inode** %6, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %255

21:                                               ; preds = %2
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i32 @gfs2_lookup_simple(%struct.inode* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %25 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %27 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %36 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @PTR_ERR(i32 %37)
  store i32 %38, i32* %3, align 4
  br label %291

39:                                               ; preds = %21
  %40 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %41 = call i32 @gfs2_jindex_hold(%struct.gfs2_sbd* %40, %struct.gfs2_holder* %7)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %285

48:                                               ; preds = %39
  %49 = load i32, i32* @EUSERS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %52 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %56 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %277

57:                                               ; preds = %48
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %65 = call i8* @gfs2_jdesc_find(%struct.gfs2_sbd* %64, i32 0)
  %66 = bitcast i8* %65 to %struct.gfs2_jdesc*
  %67 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %68 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %67, i32 0, i32 6
  store %struct.gfs2_jdesc* %66, %struct.gfs2_jdesc** %68, align 8
  %69 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %70 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %69, i32 0, i32 8
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %71, i32 0, i32 6
  %73 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %72, align 8
  %74 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @atomic_set(i32* %70, i32 %75)
  br label %177

77:                                               ; preds = %57
  %78 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %79 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %78, i32 0, i32 7
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %83 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %82)
  %84 = icmp sge i32 %81, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %77
  %86 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %87 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %88 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %87, i32 0, i32 7
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %93 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %94 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %93)
  %95 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %96 = call i32 @gfs2_jindex_size(%struct.gfs2_sbd* %95)
  %97 = sub nsw i32 %96, 1
  %98 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %94, i32 %97)
  br label %277

99:                                               ; preds = %77
  %100 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %101 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %102 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @gfs2_jdesc_find(%struct.gfs2_sbd* %100, i32 %104)
  %106 = bitcast i8* %105 to %struct.gfs2_jdesc*
  %107 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %108 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %107, i32 0, i32 6
  store %struct.gfs2_jdesc* %106, %struct.gfs2_jdesc** %108, align 8
  %109 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %110 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %111 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %115 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %116 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %117 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %116, i32 0, i32 2
  %118 = call i32 @gfs2_glock_nq_num(%struct.gfs2_sbd* %109, i32 %113, i32* @gfs2_journal_glops, i32 %114, i32 %115, %struct.gfs2_holder* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %99
  %122 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %123)
  br label %277

125:                                              ; preds = %99
  %126 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %127 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %126, i32 0, i32 6
  %128 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %127, align 8
  %129 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.gfs2_inode* @GFS2_I(i32 %130)
  store %struct.gfs2_inode* %131, %struct.gfs2_inode** %8, align 8
  %132 = load %struct.gfs2_inode*, %struct.gfs2_inode** %8, align 8
  %133 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LM_ST_SHARED, align 4
  %136 = load i32, i32* @LM_FLAG_NOEXP, align 4
  %137 = load i32, i32* @GL_EXACT, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @GL_NOCACHE, align 4
  %140 = or i32 %138, %139
  %141 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %142 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %141, i32 0, i32 4
  %143 = call i32 @gfs2_glock_nq_init(i32 %134, i32 %135, i32 %140, %struct.gfs2_holder* %142)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %125
  %147 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %148 = load i32, i32* %10, align 4
  %149 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %147, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  br label %266

150:                                              ; preds = %125
  %151 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %152 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %151, i32 0, i32 6
  %153 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %152, align 8
  %154 = call i32 @gfs2_jdesc_check(%struct.gfs2_jdesc* %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %159 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %160 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %159, i32 0, i32 6
  %161 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %160, align 8
  %162 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %163, i32 %164)
  br label %255

166:                                              ; preds = %150
  %167 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %168 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %167, i32 0, i32 8
  %169 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %170 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %169, i32 0, i32 6
  %171 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %170, align 8
  %172 = getelementptr inbounds %struct.gfs2_jdesc, %struct.gfs2_jdesc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @atomic_set(i32* %168, i32 %173)
  %175 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %176 = call i32 @map_journal_extents(%struct.gfs2_sbd* %175)
  br label %177

177:                                              ; preds = %166, %63
  %178 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %179 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %180 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %179, i32 0, i32 8
  %181 = call i32 @atomic_read(i32* %180)
  %182 = call i32 @trace_gfs2_log_blocks(%struct.gfs2_sbd* %178, i32 %181)
  %183 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %184 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %230

188:                                              ; preds = %177
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %224, %188
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %192 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp ult i32 %190, %193
  br i1 %194, label %195, label %227

195:                                              ; preds = %189
  %196 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %197 = load i32, i32* %11, align 4
  %198 = call i8* @gfs2_jdesc_find(%struct.gfs2_sbd* %196, i32 %197)
  %199 = bitcast i8* %198 to %struct.gfs2_jdesc*
  store %struct.gfs2_jdesc* %199, %struct.gfs2_jdesc** %12, align 8
  %200 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %201 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %195
  %206 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %207 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %12, align 8
  %208 = call i32 @check_journal_clean(%struct.gfs2_sbd* %206, %struct.gfs2_jdesc* %207)
  store i32 %208, i32* %10, align 4
  %209 = load i32, i32* %10, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %255

212:                                              ; preds = %205
  br label %224

213:                                              ; preds = %195
  %214 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %12, align 8
  %215 = call i32 @gfs2_recover_journal(%struct.gfs2_jdesc* %214)
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %10, align 4
  %222 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %219, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %220, i32 %221)
  br label %255

223:                                              ; preds = %213
  br label %224

224:                                              ; preds = %223, %212
  %225 = load i32, i32* %11, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %189

227:                                              ; preds = %189
  %228 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %229 = call i32 @gfs2_others_may_mount(%struct.gfs2_sbd* %228)
  br label %249

230:                                              ; preds = %177
  %231 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %232 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %248, label %236

236:                                              ; preds = %230
  %237 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %238 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %237, i32 0, i32 6
  %239 = load %struct.gfs2_jdesc*, %struct.gfs2_jdesc** %238, align 8
  %240 = call i32 @gfs2_recover_journal(%struct.gfs2_jdesc* %239)
  store i32 %240, i32* %10, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %236
  %244 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 (%struct.gfs2_sbd*, i8*, ...) @fs_err(%struct.gfs2_sbd* %244, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %245)
  br label %255

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247, %230
  br label %249

249:                                              ; preds = %248, %227
  %250 = load i32, i32* @SDF_JOURNAL_CHECKED, align 4
  %251 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %252 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %251, i32 0, i32 5
  %253 = call i32 @set_bit(i32 %250, i32* %252)
  %254 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %3, align 4
  br label %291

255:                                              ; preds = %243, %218, %211, %157, %20
  %256 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %257 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %256, i32 0, i32 3
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %255
  %262 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %263 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %262, i32 0, i32 4
  %264 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %263)
  br label %265

265:                                              ; preds = %261, %255
  br label %266

266:                                              ; preds = %265, %146
  %267 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %268 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %266
  %273 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %274 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %273, i32 0, i32 2
  %275 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %274)
  br label %276

276:                                              ; preds = %272, %266
  br label %277

277:                                              ; preds = %276, %121, %85, %54
  %278 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %279 = call i32 @gfs2_jindex_free(%struct.gfs2_sbd* %278)
  %280 = load i32, i32* %9, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %277
  %283 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %7)
  br label %284

284:                                              ; preds = %282, %277
  br label %285

285:                                              ; preds = %284, %44
  %286 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %287 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @iput(i32 %288)
  %290 = load i32, i32* %10, align 4
  store i32 %290, i32* %3, align 4
  br label %291

291:                                              ; preds = %285, %249, %31
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

declare dso_local i32 @gfs2_lookup_simple(%struct.inode*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @fs_err(%struct.gfs2_sbd*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gfs2_jindex_hold(%struct.gfs2_sbd*, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_jindex_size(%struct.gfs2_sbd*) #1

declare dso_local i8* @gfs2_jdesc_find(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @gfs2_glock_nq_num(%struct.gfs2_sbd*, i32, i32*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_jdesc_check(%struct.gfs2_jdesc*) #1

declare dso_local i32 @map_journal_extents(%struct.gfs2_sbd*) #1

declare dso_local i32 @trace_gfs2_log_blocks(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @check_journal_clean(%struct.gfs2_sbd*, %struct.gfs2_jdesc*) #1

declare dso_local i32 @gfs2_recover_journal(%struct.gfs2_jdesc*) #1

declare dso_local i32 @gfs2_others_may_mount(%struct.gfs2_sbd*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_jindex_free(%struct.gfs2_sbd*) #1

declare dso_local i32 @iput(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
