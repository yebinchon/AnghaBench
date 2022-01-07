; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_dirty_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_dirty_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i64, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"jh: %p, tid:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"unmapped buffer, bailing out\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"has transaction\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"belongs to older transaction\00", align 1
@BJ_None = common dso_local global i64 0, align 8
@BJ_SyncData = common dso_local global i64 0, align 8
@BJ_Locked = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"Not stealing\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"buffer got unmapped\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"unfile from commit\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"not on correct data list: unfile\00", align 1
@BJ_Shadow = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [13 x i8] c"file as data\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"not on a transaction\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"brelse\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_dirty_data(%struct.TYPE_7__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.journal_head*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = call i64 @is_handle_aborted(%struct.TYPE_7__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %212

20:                                               ; preds = %2
  %21 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %22 = call %struct.journal_head* @journal_add_journal_head(%struct.buffer_head* %21)
  store %struct.journal_head* %22, %struct.journal_head** %8, align 8
  %23 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %24 = call i32 @JBUFFER_TRACE(%struct.journal_head* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @jbd_debug(i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.journal_head* %25, i32 %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %33 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @spin_lock(i32* %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %38 = call i32 @buffer_mapped(%struct.buffer_head* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %20
  %41 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %42 = call i32 @JBUFFER_TRACE(%struct.journal_head* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %193

43:                                               ; preds = %20
  %44 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %183

48:                                               ; preds = %43
  %49 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %50 = call i32 @JBUFFER_TRACE(%struct.journal_head* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %51 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %52 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %51, i32 0, i32 1
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %53, %56
  br i1 %57, label %58, label %144

58:                                               ; preds = %48
  %59 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %60 = call i32 @JBUFFER_TRACE(%struct.journal_head* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %61 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %62 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %63 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = icmp eq %struct.TYPE_8__* %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @J_ASSERT_JH(%struct.journal_head* %61, i32 %69)
  %71 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %72 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BJ_None, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %58
  %77 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %78 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BJ_SyncData, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %84 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BJ_Locked, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %90 = call i32 @JBUFFER_TRACE(%struct.journal_head* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  br label %193

91:                                               ; preds = %82, %76, %58
  %92 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %93 = call i64 @buffer_dirty(%struct.buffer_head* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %97 = call i32 @get_bh(%struct.buffer_head* %96)
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %102 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %101)
  store i32 1, i32* %7, align 4
  %103 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %104 = call i32 @sync_dirty_buffer(%struct.buffer_head* %103)
  %105 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %106 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %105)
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock(i32* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %111 = call i32 @buffer_mapped(%struct.buffer_head* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %95
  %114 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %115 = call i32 @JBUFFER_TRACE(%struct.journal_head* %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %193

116:                                              ; preds = %95
  br label %117

117:                                              ; preds = %116, %91
  %118 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %119 = call i32 @buffer_uptodate(%struct.buffer_head* %118)
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %9, align 4
  br label %193

128:                                              ; preds = %117
  %129 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %130 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = icmp ne %struct.TYPE_8__* %131, null
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %135 = call i32 @JBUFFER_TRACE(%struct.journal_head* %134, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %136 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %137 = call i32 @__journal_temp_unlink_buffer(%struct.journal_head* %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %142 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %141, i32 0, i32 1
  store %struct.TYPE_8__* %140, %struct.TYPE_8__** %142, align 8
  br label %143

143:                                              ; preds = %133, %128
  br label %144

144:                                              ; preds = %143, %48
  %145 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %146 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @BJ_SyncData, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %182

150:                                              ; preds = %144
  %151 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %152 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @BJ_Locked, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %150
  %157 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %158 = call i32 @JBUFFER_TRACE(%struct.journal_head* %157, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %159 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %160 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %161 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @BJ_Shadow, align 8
  %164 = icmp ne i64 %162, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @J_ASSERT_JH(%struct.journal_head* %159, i32 %165)
  %167 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %168 = call i32 @__journal_temp_unlink_buffer(%struct.journal_head* %167)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %173 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %172, i32 0, i32 1
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** %173, align 8
  %174 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %175 = call i32 @JBUFFER_TRACE(%struct.journal_head* %174, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %176 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = load i64, i64* @BJ_SyncData, align 8
  %181 = call i32 @__journal_file_buffer(%struct.journal_head* %176, %struct.TYPE_8__* %179, i64 %180)
  br label %182

182:                                              ; preds = %156, %150, %144
  br label %192

183:                                              ; preds = %43
  %184 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %185 = call i32 @JBUFFER_TRACE(%struct.journal_head* %184, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %186 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i64, i64* @BJ_SyncData, align 8
  %191 = call i32 @__journal_file_buffer(%struct.journal_head* %186, %struct.TYPE_8__* %189, i64 %190)
  br label %192

192:                                              ; preds = %183, %182
  br label %193

193:                                              ; preds = %192, %125, %113, %88, %40
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = call i32 @spin_unlock(i32* %195)
  %197 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %198 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %197)
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %193
  %202 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %203 = call i32 @BUFFER_TRACE(%struct.buffer_head* %202, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %204 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %205 = call i32 @__brelse(%struct.buffer_head* %204)
  br label %206

206:                                              ; preds = %201, %193
  %207 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %208 = call i32 @JBUFFER_TRACE(%struct.journal_head* %207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %209 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %210 = call i32 @journal_put_journal_head(%struct.journal_head* %209)
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %206, %18
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i64 @is_handle_aborted(%struct.TYPE_7__*) #1

declare dso_local %struct.journal_head* @journal_add_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.journal_head*, i32) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @__journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_8__*, i64) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @journal_put_journal_head(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
