; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_write_ordered_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_write_ordered_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal = type { i32 }
%struct.reiserfs_journal_list = type { i32 }
%struct.list_head = type { i32, i32 }
%struct.buffer_head = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.reiserfs_jh = type { %struct.buffer_head*, i32 }
%struct.buffer_chunk = type { i64 }

@EIO = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.reiserfs_journal*, %struct.reiserfs_journal_list*, %struct.list_head*)* @write_ordered_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_ordered_buffers(i32* %0, %struct.reiserfs_journal* %1, %struct.reiserfs_journal_list* %2, %struct.list_head* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca %struct.reiserfs_journal_list*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.reiserfs_jh*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.buffer_chunk, align 8
  %13 = alloca %struct.list_head, align 4
  store i32* %0, i32** %5, align 8
  store %struct.reiserfs_journal* %1, %struct.reiserfs_journal** %6, align 8
  store %struct.reiserfs_journal_list* %2, %struct.reiserfs_journal_list** %7, align 8
  store %struct.list_head* %3, %struct.list_head** %8, align 8
  %14 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = call i32 @INIT_LIST_HEAD(%struct.list_head* %13)
  %18 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %12, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @spin_lock(i32* %19)
  br label %21

21:                                               ; preds = %91, %4
  %22 = load %struct.list_head*, %struct.list_head** %8, align 8
  %23 = call i32 @list_empty(%struct.list_head* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %96

26:                                               ; preds = %21
  %27 = load %struct.list_head*, %struct.list_head** %8, align 8
  %28 = getelementptr inbounds %struct.list_head, %struct.list_head* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.reiserfs_jh* @JH_ENTRY(i32 %29)
  store %struct.reiserfs_jh* %30, %struct.reiserfs_jh** %10, align 8
  %31 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %10, align 8
  %32 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %31, i32 0, i32 0
  %33 = load %struct.buffer_head*, %struct.buffer_head** %32, align 8
  store %struct.buffer_head* %33, %struct.buffer_head** %9, align 8
  %34 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %35 = call i32 @get_bh(%struct.buffer_head* %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = call i32 @trylock_buffer(%struct.buffer_head* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %26
  %40 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %41 = call i64 @buffer_dirty(%struct.buffer_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %10, align 8
  %45 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %44, i32 0, i32 1
  %46 = call i32 @list_move(i32* %45, %struct.list_head* %13)
  br label %91

47:                                               ; preds = %39
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @write_ordered_chunk(%struct.buffer_chunk* %12)
  br label %55

55:                                               ; preds = %53, %47
  %56 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %57 = call i32 @wait_on_buffer(%struct.buffer_head* %56)
  %58 = call i32 (...) @cond_resched()
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @spin_lock(i32* %59)
  br label %91

61:                                               ; preds = %26
  %62 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %63 = call i32 @buffer_uptodate(%struct.buffer_head* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %61
  %66 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %67 = call i64 @buffer_dirty(%struct.buffer_head* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %71 = call i32 @clear_buffer_dirty(%struct.buffer_head* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %65, %61
  %75 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %76 = call i64 @buffer_dirty(%struct.buffer_head* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %10, align 8
  %80 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %79, i32 0, i32 1
  %81 = call i32 @list_move(i32* %80, %struct.list_head* %13)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @add_to_chunk(%struct.buffer_chunk* %12, %struct.buffer_head* %82, i32* %83, i32 (%struct.buffer_chunk*)* @write_ordered_chunk)
  br label %90

85:                                               ; preds = %74
  %86 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %87 = call i32 @reiserfs_free_jh(%struct.buffer_head* %86)
  %88 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %89 = call i32 @unlock_buffer(%struct.buffer_head* %88)
  br label %90

90:                                               ; preds = %85, %78
  br label %91

91:                                               ; preds = %90, %55, %43
  %92 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %93 = call i32 @put_bh(%struct.buffer_head* %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @cond_resched_lock(i32* %94)
  br label %21

96:                                               ; preds = %21
  %97 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %12, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32*, i32** %5, align 8
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = call i32 @write_ordered_chunk(%struct.buffer_chunk* %12)
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @spin_lock(i32* %104)
  br label %106

106:                                              ; preds = %100, %96
  br label %107

107:                                              ; preds = %160, %106
  %108 = call i32 @list_empty(%struct.list_head* %13)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %165

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.list_head, %struct.list_head* %13, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.reiserfs_jh* @JH_ENTRY(i32 %113)
  store %struct.reiserfs_jh* %114, %struct.reiserfs_jh** %10, align 8
  %115 = load %struct.reiserfs_jh*, %struct.reiserfs_jh** %10, align 8
  %116 = getelementptr inbounds %struct.reiserfs_jh, %struct.reiserfs_jh* %115, i32 0, i32 0
  %117 = load %struct.buffer_head*, %struct.buffer_head** %116, align 8
  store %struct.buffer_head* %117, %struct.buffer_head** %9, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %119 = call i32 @get_bh(%struct.buffer_head* %118)
  %120 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %121 = call i32 @reiserfs_free_jh(%struct.buffer_head* %120)
  %122 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %123 = call i64 @buffer_locked(%struct.buffer_head* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %111
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 @spin_unlock(i32* %126)
  %128 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %129 = call i32 @wait_on_buffer(%struct.buffer_head* %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @spin_lock(i32* %130)
  br label %132

132:                                              ; preds = %125, %111
  %133 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %134 = call i32 @buffer_uptodate(%struct.buffer_head* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* @EIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %141 = call i64 @buffer_dirty(%struct.buffer_head* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %145 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %144, i32 0, i32 0
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %143
  %154 = load i32*, i32** %5, align 8
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load i32, i32* @WRITE, align 4
  %157 = call i32 @ll_rw_block(i32 %156, i32 1, %struct.buffer_head** %9)
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @spin_lock(i32* %158)
  br label %160

160:                                              ; preds = %153, %143, %139
  %161 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %162 = call i32 @put_bh(%struct.buffer_head* %161)
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @cond_resched_lock(i32* %163)
  br label %107

165:                                              ; preds = %107
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @spin_unlock(i32* %166)
  %168 = load i32, i32* %11, align 4
  ret i32 %168
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local %struct.reiserfs_jh* @JH_ENTRY(i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @trylock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_ordered_chunk(%struct.buffer_chunk*) #1

declare dso_local i32 @wait_on_buffer(%struct.buffer_head*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @add_to_chunk(%struct.buffer_chunk*, %struct.buffer_head*, i32*, i32 (%struct.buffer_chunk*)*) #1

declare dso_local i32 @reiserfs_free_jh(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @cond_resched_lock(i32*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ll_rw_block(i32, i32, %struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
