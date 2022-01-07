; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_start_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/btrfs/extr_transaction.c_start_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.btrfs_trans_handle* }
%struct.btrfs_trans_handle = type { i32, i64, i32*, i32, i64, i32*, i64, i64, %struct.btrfs_transaction* }
%struct.btrfs_transaction = type { i64, i32 }
%struct.btrfs_root = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.btrfs_transaction*, i32, %struct.btrfs_root* }

@BTRFS_SUPER_FLAG_ERROR = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@TRANS_JOIN = common dso_local global i32 0, align 4
@TRANS_JOIN_NOLOCK = common dso_local global i32 0, align 4
@btrfs_trans_handle_cachep = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"transaction\00", align 1
@TRANS_USERSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btrfs_trans_handle* (%struct.btrfs_root*, i64, i32)* @start_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btrfs_trans_handle* @start_transaction(%struct.btrfs_root* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_trans_handle*, align 8
  %9 = alloca %struct.btrfs_transaction*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %12 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @BTRFS_SUPER_FLAG_ERROR, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* @EROFS, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %22)
  store %struct.btrfs_trans_handle* %23, %struct.btrfs_trans_handle** %4, align 8
  br label %226

24:                                               ; preds = %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %26, align 8
  %28 = icmp ne %struct.btrfs_trans_handle* %27, null
  br i1 %28, label %29, label %55

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @TRANS_JOIN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TRANS_JOIN_NOLOCK, align 4
  %36 = icmp ne i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %42, align 8
  store %struct.btrfs_trans_handle* %43, %struct.btrfs_trans_handle** %8, align 8
  %44 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %45 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %49 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %52 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %51, i32 0, i32 5
  store i32* %50, i32** %52, align 8
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %54 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  br label %208

55:                                               ; preds = %24
  %56 = load i64, i64* %6, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %55
  %59 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %60 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %61 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load %struct.btrfs_root*, %struct.btrfs_root** %63, align 8
  %65 = icmp ne %struct.btrfs_root* %59, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %58
  %67 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @btrfs_calc_trans_metadata_size(%struct.btrfs_root* %67, i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %71 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %72 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @btrfs_block_rsv_add(%struct.btrfs_root* %70, i32* %74, i64 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %80)
  store %struct.btrfs_trans_handle* %81, %struct.btrfs_trans_handle** %4, align 8
  br label %226

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %58, %55
  br label %84

84:                                               ; preds = %182, %83
  %85 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %86 = load i32, i32* @GFP_NOFS, align 4
  %87 = call %struct.btrfs_trans_handle* @kmem_cache_alloc(i32 %85, i32 %86)
  store %struct.btrfs_trans_handle* %87, %struct.btrfs_trans_handle** %8, align 8
  %88 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %89 = icmp ne %struct.btrfs_trans_handle* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %92)
  store %struct.btrfs_trans_handle* %93, %struct.btrfs_trans_handle** %4, align 8
  br label %226

94:                                               ; preds = %84
  %95 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %96 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @sb_start_intwrite(i32 %99)
  %101 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @may_wait_transaction(%struct.btrfs_root* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %107 = call i32 @wait_current_trans(%struct.btrfs_root* %106)
  br label %108

108:                                              ; preds = %105, %94
  br label %109

109:                                              ; preds = %124, %108
  %110 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @TRANS_JOIN_NOLOCK, align 4
  %113 = icmp eq i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @join_transaction(%struct.btrfs_root* %110, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %109
  %121 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %122 = call i32 @wait_current_trans(%struct.btrfs_root* %121)
  br label %123

123:                                              ; preds = %120, %109
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @EBUSY, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %109, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %134 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @sb_end_intwrite(i32 %137)
  %139 = load i32, i32* @btrfs_trans_handle_cachep, align 4
  %140 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %141 = call i32 @kmem_cache_free(i32 %139, %struct.btrfs_trans_handle* %140)
  %142 = load i32, i32* %11, align 4
  %143 = call %struct.btrfs_trans_handle* @ERR_PTR(i32 %142)
  store %struct.btrfs_trans_handle* %143, %struct.btrfs_trans_handle** %4, align 8
  br label %226

144:                                              ; preds = %129
  %145 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %146 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 2
  %149 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %148, align 8
  store %struct.btrfs_transaction* %149, %struct.btrfs_transaction** %9, align 8
  %150 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %151 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %154 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %153, i32 0, i32 3
  store i32 %152, i32* %154, align 8
  %155 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %156 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %157 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %156, i32 0, i32 8
  store %struct.btrfs_transaction* %155, %struct.btrfs_transaction** %157, align 8
  %158 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %159 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %158, i32 0, i32 7
  store i64 0, i64* %159, align 8
  %160 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %161 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %163 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %162, i32 0, i32 6
  store i64 0, i64* %163, align 8
  %164 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %165 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  %166 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %167 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %166, i32 0, i32 2
  store i32* null, i32** %167, align 8
  %168 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %169 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %168, i32 0, i32 5
  store i32* null, i32** %169, align 8
  %170 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %171 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %170, i32 0, i32 4
  store i64 0, i64* %171, align 8
  %172 = call i32 (...) @smp_mb()
  %173 = load %struct.btrfs_transaction*, %struct.btrfs_transaction** %9, align 8
  %174 = getelementptr inbounds %struct.btrfs_transaction, %struct.btrfs_transaction* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %144
  %178 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i64 @may_wait_transaction(%struct.btrfs_root* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %184 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %185 = call i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle* %183, %struct.btrfs_root* %184)
  br label %84

186:                                              ; preds = %177, %144
  %187 = load i64, i64* %10, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %191 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %190, i32 0, i32 0
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %191, align 8
  %193 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %194 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i64, i64* %10, align 8
  %197 = call i32 @trace_btrfs_space_reservation(%struct.TYPE_3__* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %195, i64 %196, i32 1)
  %198 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %199 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %198, i32 0, i32 0
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %203 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %202, i32 0, i32 2
  store i32* %201, i32** %203, align 8
  %204 = load i64, i64* %10, align 8
  %205 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %206 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %189, %186
  br label %208

208:                                              ; preds = %207, %37
  %209 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %210 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %211 = call i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle* %209, %struct.btrfs_root* %210)
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %213, align 8
  %215 = icmp ne %struct.btrfs_trans_handle* %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %208
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @TRANS_USERSPACE, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  store %struct.btrfs_trans_handle* %221, %struct.btrfs_trans_handle** %223, align 8
  br label %224

224:                                              ; preds = %220, %216, %208
  %225 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %8, align 8
  store %struct.btrfs_trans_handle* %225, %struct.btrfs_trans_handle** %4, align 8
  br label %226

226:                                              ; preds = %224, %132, %90, %79, %20
  %227 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  ret %struct.btrfs_trans_handle* %227
}

declare dso_local %struct.btrfs_trans_handle* @ERR_PTR(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @btrfs_calc_trans_metadata_size(%struct.btrfs_root*, i64) #1

declare dso_local i32 @btrfs_block_rsv_add(%struct.btrfs_root*, i32*, i64) #1

declare dso_local %struct.btrfs_trans_handle* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @sb_start_intwrite(i32) #1

declare dso_local i64 @may_wait_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @wait_current_trans(%struct.btrfs_root*) #1

declare dso_local i32 @join_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.btrfs_trans_handle*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @btrfs_commit_transaction(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

declare dso_local i32 @trace_btrfs_space_reservation(%struct.TYPE_3__*, i8*, i32, i64, i32) #1

declare dso_local i32 @btrfs_record_root_in_trans(%struct.btrfs_trans_handle*, %struct.btrfs_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
