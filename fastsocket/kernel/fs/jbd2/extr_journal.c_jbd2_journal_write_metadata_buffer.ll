; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_write_metadata_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_journal.c_jbd2_journal_write_metadata_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.journal_head = type { i8*, i32*, i32, i32 }
%struct.buffer_head = type { i8*, i64, i32, i32, %struct.page*, i32, i64 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@JBD2_MAGIC_NUMBER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"file as BJ_Shadow\00", align 1
@BJ_Shadow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"file as BJ_IO\00", align 1
@BJ_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_write_metadata_buffer(%struct.TYPE_6__* %0, %struct.journal_head* %1, %struct.journal_head** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca %struct.journal_head**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.journal_head*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store %struct.journal_head* %1, %struct.journal_head** %7, align 8
  store %struct.journal_head** %2, %struct.journal_head*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %22 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %21)
  store %struct.buffer_head* %22, %struct.buffer_head** %18, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %19, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %28 = call i32 @buffer_jbddirty(%struct.buffer_head* %27)
  %29 = call i32 @J_ASSERT_BH(%struct.buffer_head* %26, i32 %28)
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = load i32, i32* @__GFP_NOFAIL, align 4
  %32 = or i32 %30, %31
  %33 = call %struct.buffer_head* @alloc_buffer_head(i32 %32)
  store %struct.buffer_head* %33, %struct.buffer_head** %14, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %35 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %34, i32 0, i32 6
  store i64 0, i64* %35, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %37 = call i32 @init_buffer(%struct.buffer_head* %36, i32* null, i32* null)
  %38 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %39 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %38, i32 0, i32 5
  %40 = call i32 @atomic_set(i32* %39, i32 1)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %42 = call %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head* %41)
  store %struct.journal_head* %42, %struct.journal_head** %15, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %44 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %43)
  br label %45

45:                                               ; preds = %127, %4
  %46 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %47 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  store i32 1, i32* %11, align 4
  %51 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %52 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.page* @virt_to_page(i8* %53)
  store %struct.page* %54, %struct.page** %16, align 8
  %55 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %56 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @offset_in_page(i8* %57)
  store i32 %58, i32* %17, align 4
  br label %69

59:                                               ; preds = %45
  %60 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %61 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %60)
  %62 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %61, i32 0, i32 4
  %63 = load %struct.page*, %struct.page** %62, align 8
  store %struct.page* %63, %struct.page** %16, align 8
  %64 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %65 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %64)
  %66 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @offset_in_page(i8* %67)
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %59, %50
  %70 = load %struct.page*, %struct.page** %16, align 8
  %71 = load i32, i32* @KM_USER0, align 4
  %72 = call i8* @kmap_atomic(%struct.page* %70, i32 %71)
  store i8* %72, i8** %13, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %69
  %76 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = load i32, i32* %17, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %82 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @jbd2_buffer_frozen_trigger(%struct.journal_head* %76, i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %75, %69
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %17, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = bitcast i8* %89 to i64*
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @JBD2_MAGIC_NUMBER, align 4
  %93 = call i64 @cpu_to_be32(i32 %92)
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  store i32 1, i32* %10, align 4
  store i32 1, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %85
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* @KM_USER0, align 4
  %99 = call i32 @kunmap_atomic(i8* %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %162

102:                                              ; preds = %96
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %162, label %105

105:                                              ; preds = %102
  %106 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %107 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %106)
  %108 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %109 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @GFP_NOFS, align 4
  %112 = call i8* @jbd2_alloc(i32 %110, i32 %111)
  store i8* %112, i8** %20, align 8
  %113 = load i8*, i8** %20, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %120, label %115

115:                                              ; preds = %105
  %116 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  %117 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %5, align 4
  br label %230

120:                                              ; preds = %105
  %121 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %122 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %121)
  %123 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %124 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load i8*, i8** %20, align 8
  %129 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @jbd2_free(i8* %128, i32 %131)
  br label %45

133:                                              ; preds = %120
  %134 = load i8*, i8** %20, align 8
  %135 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %136 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load %struct.page*, %struct.page** %16, align 8
  %138 = load i32, i32* @KM_USER0, align 4
  %139 = call i8* @kmap_atomic(%struct.page* %137, i32 %138)
  store i8* %139, i8** %13, align 8
  %140 = load i8*, i8** %20, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* %17, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %141, i64 %143
  %145 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %146 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %145)
  %147 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @memcpy(i8* %140, i8* %144, i32 %148)
  %150 = load i8*, i8** %13, align 8
  %151 = load i32, i32* @KM_USER0, align 4
  %152 = call i32 @kunmap_atomic(i8* %150, i32 %151)
  %153 = load i8*, i8** %20, align 8
  %154 = call %struct.page* @virt_to_page(i8* %153)
  store %struct.page* %154, %struct.page** %16, align 8
  %155 = load i8*, i8** %20, align 8
  %156 = call i32 @offset_in_page(i8* %155)
  store i32 %156, i32* %17, align 4
  store i32 1, i32* %11, align 4
  %157 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %158 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %161 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %133, %102, %96
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %162
  %166 = load %struct.page*, %struct.page** %16, align 8
  %167 = load i32, i32* @KM_USER0, align 4
  %168 = call i8* @kmap_atomic(%struct.page* %166, i32 %167)
  store i8* %168, i8** %13, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = load i32, i32* %17, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = bitcast i8* %172 to i32*
  store i32 0, i32* %173, align 4
  %174 = load i8*, i8** %13, align 8
  %175 = load i32, i32* @KM_USER0, align 4
  %176 = call i32 @kunmap_atomic(i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %165, %162
  %178 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %179 = load %struct.page*, %struct.page** %16, align 8
  %180 = load i32, i32* %17, align 4
  %181 = call i32 @set_bh_page(%struct.buffer_head* %178, %struct.page* %179, i32 %180)
  %182 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  %183 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %182, i32 0, i32 1
  store i32* null, i32** %183, align 8
  %184 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %185 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %184)
  %186 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %189 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %196 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load i64, i64* %9, align 8
  %198 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %199 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %201 = call i32 @set_buffer_mapped(%struct.buffer_head* %200)
  %202 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %203 = call i32 @set_buffer_dirty(%struct.buffer_head* %202)
  %204 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  %205 = load %struct.journal_head**, %struct.journal_head*** %8, align 8
  store %struct.journal_head* %204, %struct.journal_head** %205, align 8
  %206 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %207 = call i32 @JBUFFER_TRACE(%struct.journal_head* %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = call i32 @spin_lock(i32* %209)
  %211 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %213 = load i32, i32* @BJ_Shadow, align 4
  %214 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %211, %struct.TYPE_6__* %212, i32 %213)
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = call i32 @spin_unlock(i32* %216)
  %218 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %219 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %218)
  %220 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  %221 = call i32 @JBUFFER_TRACE(%struct.journal_head* %220, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %222 = load %struct.journal_head*, %struct.journal_head** %15, align 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %224 = load i32, i32* @BJ_IO, align 4
  %225 = call i32 @jbd2_journal_file_buffer(%struct.journal_head* %222, %struct.TYPE_6__* %223, i32 %224)
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %11, align 4
  %228 = shl i32 %227, 1
  %229 = or i32 %226, %228
  store i32 %229, i32* %5, align 4
  br label %230

230:                                              ; preds = %177, %115
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @alloc_buffer_head(i32) #1

declare dso_local i32 @init_buffer(%struct.buffer_head*, i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i32 @jbd2_buffer_frozen_trigger(%struct.journal_head*, i8*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i8* @jbd2_alloc(i32, i32) #1

declare dso_local i32 @jbd2_journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i32 @jbd2_free(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_bh_page(%struct.buffer_head*, %struct.page*, i32) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
