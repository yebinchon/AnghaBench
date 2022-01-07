; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_journal.c_journal_write_metadata_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_journal.c_journal_write_metadata_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.journal_head = type { i8*, i32* }
%struct.buffer_head = type { i8*, i32, i32, i32, %struct.page*, i32, i64 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@__GFP_NOFAIL = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@JFS_MAGIC_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"file as BJ_Shadow\00", align 1
@BJ_Shadow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"file as BJ_IO\00", align 1
@BJ_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_write_metadata_buffer(%struct.TYPE_6__* %0, %struct.journal_head* %1, %struct.journal_head** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.journal_head*, align 8
  %7 = alloca %struct.journal_head**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.journal_head*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.journal_head* %1, %struct.journal_head** %6, align 8
  store %struct.journal_head** %2, %struct.journal_head*** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %21 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %20)
  store %struct.buffer_head* %21, %struct.buffer_head** %17, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %18, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %26 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %27 = call i32 @buffer_jbddirty(%struct.buffer_head* %26)
  %28 = call i32 @J_ASSERT_BH(%struct.buffer_head* %25, i32 %27)
  %29 = load i32, i32* @GFP_NOFS, align 4
  %30 = load i32, i32* @__GFP_NOFAIL, align 4
  %31 = or i32 %29, %30
  %32 = call %struct.buffer_head* @alloc_buffer_head(i32 %31)
  store %struct.buffer_head* %32, %struct.buffer_head** %13, align 8
  %33 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %34 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %36 = call i32 @init_buffer(%struct.buffer_head* %35, i32* null, i32* null)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 5
  %39 = call i32 @atomic_set(i32* %38, i32 1)
  %40 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %41 = call %struct.journal_head* @journal_add_journal_head(%struct.buffer_head* %40)
  store %struct.journal_head* %41, %struct.journal_head** %14, align 8
  %42 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %43 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %42)
  br label %44

44:                                               ; preds = %105, %4
  %45 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %46 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  store i32 1, i32* %10, align 4
  %50 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %51 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call %struct.page* @virt_to_page(i8* %52)
  store %struct.page* %53, %struct.page** %15, align 8
  %54 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %55 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @offset_in_page(i8* %56)
  store i32 %57, i32* %16, align 4
  br label %68

58:                                               ; preds = %44
  %59 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %60 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %59)
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 4
  %62 = load %struct.page*, %struct.page** %61, align 8
  store %struct.page* %62, %struct.page** %15, align 8
  %63 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %64 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %63)
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @offset_in_page(i8* %66)
  store i32 %67, i32* %16, align 4
  br label %68

68:                                               ; preds = %58, %49
  %69 = load %struct.page*, %struct.page** %15, align 8
  %70 = load i32, i32* @KM_USER0, align 4
  %71 = call i8* @kmap_atomic(%struct.page* %69, i32 %70)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* %16, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = bitcast i8* %75 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @JFS_MAGIC_NUMBER, align 4
  %79 = call i64 @cpu_to_be32(i32 %78)
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 1, i32* %9, align 4
  store i32 1, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %68
  %83 = load i8*, i8** %12, align 8
  %84 = load i32, i32* @KM_USER0, align 4
  %85 = call i32 @kunmap_atomic(i8* %83, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %135

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %135, label %91

91:                                               ; preds = %88
  %92 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %93 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %95 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @GFP_NOFS, align 4
  %98 = call i8* @jbd_alloc(i32 %96, i32 %97)
  store i8* %98, i8** %19, align 8
  %99 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %100 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %99)
  %101 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %102 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load i8*, i8** %19, align 8
  %107 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %108 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @jbd_free(i8* %106, i32 %109)
  br label %44

111:                                              ; preds = %91
  %112 = load i8*, i8** %19, align 8
  %113 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %114 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %113, i32 0, i32 0
  store i8* %112, i8** %114, align 8
  %115 = load %struct.page*, %struct.page** %15, align 8
  %116 = load i32, i32* @KM_USER0, align 4
  %117 = call i8* @kmap_atomic(%struct.page* %115, i32 %116)
  store i8* %117, i8** %12, align 8
  %118 = load i8*, i8** %19, align 8
  %119 = load i8*, i8** %12, align 8
  %120 = load i32, i32* %16, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %124 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %123)
  %125 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i8* %118, i8* %122, i32 %126)
  %128 = load i8*, i8** %12, align 8
  %129 = load i32, i32* @KM_USER0, align 4
  %130 = call i32 @kunmap_atomic(i8* %128, i32 %129)
  %131 = load i8*, i8** %19, align 8
  %132 = call %struct.page* @virt_to_page(i8* %131)
  store %struct.page* %132, %struct.page** %15, align 8
  %133 = load i8*, i8** %19, align 8
  %134 = call i32 @offset_in_page(i8* %133)
  store i32 %134, i32* %16, align 4
  store i32 1, i32* %10, align 4
  br label %135

135:                                              ; preds = %111, %88, %82
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = load %struct.page*, %struct.page** %15, align 8
  %140 = load i32, i32* @KM_USER0, align 4
  %141 = call i8* @kmap_atomic(%struct.page* %139, i32 %140)
  store i8* %141, i8** %12, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %16, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = bitcast i8* %145 to i32*
  store i32 0, i32* %146, align 4
  %147 = load i8*, i8** %12, align 8
  %148 = load i32, i32* @KM_USER0, align 4
  %149 = call i32 @kunmap_atomic(i8* %147, i32 %148)
  br label %150

150:                                              ; preds = %138, %135
  %151 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %152 = load %struct.page*, %struct.page** %15, align 8
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @set_bh_page(%struct.buffer_head* %151, %struct.page* %152, i32 %153)
  %155 = load %struct.journal_head*, %struct.journal_head** %14, align 8
  %156 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %155, i32 0, i32 1
  store i32* null, i32** %156, align 8
  %157 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %158 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %157)
  %159 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %162 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %8, align 4
  %171 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %172 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 8
  %173 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %174 = call i32 @set_buffer_mapped(%struct.buffer_head* %173)
  %175 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %176 = call i32 @set_buffer_dirty(%struct.buffer_head* %175)
  %177 = load %struct.journal_head*, %struct.journal_head** %14, align 8
  %178 = load %struct.journal_head**, %struct.journal_head*** %7, align 8
  store %struct.journal_head* %177, %struct.journal_head** %178, align 8
  %179 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %180 = call i32 @JBUFFER_TRACE(%struct.journal_head* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = call i32 @spin_lock(i32* %182)
  %184 = load %struct.journal_head*, %struct.journal_head** %6, align 8
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %186 = load i32, i32* @BJ_Shadow, align 4
  %187 = call i32 @__journal_file_buffer(%struct.journal_head* %184, %struct.TYPE_6__* %185, i32 %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = call i32 @spin_unlock(i32* %189)
  %191 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %192 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %191)
  %193 = load %struct.journal_head*, %struct.journal_head** %14, align 8
  %194 = call i32 @JBUFFER_TRACE(%struct.journal_head* %193, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %195 = load %struct.journal_head*, %struct.journal_head** %14, align 8
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %197 = load i32, i32* @BJ_IO, align 4
  %198 = call i32 @journal_file_buffer(%struct.journal_head* %195, %struct.TYPE_6__* %196, i32 %197)
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %10, align 4
  %201 = shl i32 %200, 1
  %202 = or i32 %199, %201
  ret i32 %202
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @alloc_buffer_head(i32) #1

declare dso_local i32 @init_buffer(%struct.buffer_head*, i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.journal_head* @journal_add_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.page* @virt_to_page(i8*) #1

declare dso_local i32 @offset_in_page(i8*) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i8* @jbd_alloc(i32, i32) #1

declare dso_local i32 @jbd_free(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_bh_page(%struct.buffer_head*, %struct.page*, i32) #1

declare dso_local i32 @set_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @journal_file_buffer(%struct.journal_head*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
