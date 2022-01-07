; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_commit.c_journal_submit_data_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_commit.c_journal_submit_data_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.TYPE_9__ = type { %struct.journal_head* }
%struct.journal_head = type { i64, %struct.TYPE_9__* }

@.str = private unnamed_addr constant [20 x i8] c"needs blocking lock\00", align 1
@BJ_SyncData = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"already cleaned up\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"needs writeout, adding to array\00", align 1
@BJ_Locked = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"writeout complete: unfile\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_9__*, i32)* @journal_submit_data_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_submit_data_buffers(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 2
  %15 = load %struct.buffer_head**, %struct.buffer_head*** %14, align 8
  store %struct.buffer_head** %15, %struct.buffer_head*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %199, %132, %3
  %17 = call i32 (...) @cond_resched()
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = call i32 @spin_lock(i32* %19)
  br label %21

21:                                               ; preds = %203, %100, %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load %struct.journal_head*, %struct.journal_head** %23, align 8
  %25 = icmp ne %struct.journal_head* %24, null
  br i1 %25, label %26, label %204

26:                                               ; preds = %21
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.journal_head*, %struct.journal_head** %28, align 8
  store %struct.journal_head* %29, %struct.journal_head** %7, align 8
  %30 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %31 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %30)
  store %struct.buffer_head* %31, %struct.buffer_head** %8, align 8
  store i32 0, i32* %9, align 4
  %32 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %33 = call i32 @get_bh(%struct.buffer_head* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %35 = call i64 @buffer_dirty(%struct.buffer_head* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %26
  %38 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %39 = call i32 @trylock_buffer(%struct.buffer_head* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %37
  %42 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %43 = call i32 @BUFFER_TRACE(%struct.buffer_head* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = call i32 @trace_jbd_do_submit_data(%struct.TYPE_10__* %47, %struct.TYPE_9__* %48)
  %50 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @journal_do_submit_data(%struct.buffer_head** %50, i32 %51, i32 %52)
  store i32 0, i32* %10, align 4
  %54 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %55 = call i32 @lock_buffer(%struct.buffer_head* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = call i32 @spin_lock(i32* %57)
  br label %59

59:                                               ; preds = %41, %37
  store i32 1, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %26
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %62 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %63 = call i32 @inverted_lock(%struct.TYPE_10__* %61, %struct.buffer_head* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %67 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = call i32 @spin_lock(i32* %69)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = call i32 @buffer_jbd(%struct.buffer_head* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %77 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %76)
  %78 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %79 = icmp ne %struct.journal_head* %77, %78
  br i1 %79, label %92, label %80

80:                                               ; preds = %75
  %81 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %82 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = icmp ne %struct.TYPE_9__* %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %88 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BJ_SyncData, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %86, %80, %75, %71
  %93 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %94 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %93)
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = call i32 @unlock_buffer(%struct.buffer_head* %98)
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %102 = call i32 @BUFFER_TRACE(%struct.buffer_head* %101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %104 = call i32 @release_data_buffer(%struct.buffer_head* %103)
  br label %21

105:                                              ; preds = %86
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %144

108:                                              ; preds = %105
  %109 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %110 = call i64 @test_clear_buffer_dirty(%struct.buffer_head* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %108
  %113 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %114 = call i32 @BUFFER_TRACE(%struct.buffer_head* %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %116 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %116, i64 %119
  store %struct.buffer_head* %115, %struct.buffer_head** %120, align 8
  %121 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = load i32, i32* @BJ_Locked, align 4
  %124 = call i32 @__journal_file_buffer(%struct.journal_head* %121, %struct.TYPE_9__* %122, i32 %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %126 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %125)
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %112
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 1
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = call i32 @trace_jbd_do_submit_data(%struct.TYPE_10__* %136, %struct.TYPE_9__* %137)
  %139 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @journal_do_submit_data(%struct.buffer_head** %139, i32 %140, i32 %141)
  store i32 0, i32* %10, align 4
  br label %16

143:                                              ; preds = %112
  br label %191

144:                                              ; preds = %108, %105
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %144
  %148 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %149 = call i64 @buffer_locked(%struct.buffer_head* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %147
  %152 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %154 = load i32, i32* @BJ_Locked, align 4
  %155 = call i32 @__journal_file_buffer(%struct.journal_head* %152, %struct.TYPE_9__* %153, i32 %154)
  %156 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %157 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %156)
  %158 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %159 = call i32 @put_bh(%struct.buffer_head* %158)
  br label %190

160:                                              ; preds = %147, %144
  %161 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %162 = call i32 @BUFFER_TRACE(%struct.buffer_head* %161, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %163 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %164 = call i32 @buffer_uptodate(%struct.buffer_head* %163)
  %165 = icmp ne i32 %164, 0
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %160
  %171 = load i32, i32* @EIO, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %170, %160
  %174 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %175 = call i32 @__journal_unfile_buffer(%struct.journal_head* %174)
  %176 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %177 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %176)
  %178 = load i32, i32* %9, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %173
  %181 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %182 = call i32 @unlock_buffer(%struct.buffer_head* %181)
  br label %183

183:                                              ; preds = %180, %173
  %184 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %185 = call i32 @journal_remove_journal_head(%struct.buffer_head* %184)
  %186 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %187 = call i32 @put_bh(%struct.buffer_head* %186)
  %188 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %189 = call i32 @release_data_buffer(%struct.buffer_head* %188)
  br label %190

190:                                              ; preds = %183, %151
  br label %191

191:                                              ; preds = %190, %143
  %192 = call i64 (...) @need_resched()
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = call i64 @spin_needbreak(i32* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194, %191
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 1
  %202 = call i32 @spin_unlock(i32* %201)
  br label %16

203:                                              ; preds = %194
  br label %21

204:                                              ; preds = %21
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 1
  %207 = call i32 @spin_unlock(i32* %206)
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %210 = call i32 @trace_jbd_do_submit_data(%struct.TYPE_10__* %208, %struct.TYPE_9__* %209)
  %211 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @journal_do_submit_data(%struct.buffer_head** %211, i32 %212, i32 %213)
  %215 = load i32, i32* %12, align 4
  ret i32 %215
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @trace_jbd_do_submit_data(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @journal_do_submit_data(%struct.buffer_head**, i32, i32) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @inverted_lock(%struct.TYPE_10__*, %struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @release_data_buffer(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @__journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @journal_remove_journal_head(%struct.buffer_head*) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i64 @spin_needbreak(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
