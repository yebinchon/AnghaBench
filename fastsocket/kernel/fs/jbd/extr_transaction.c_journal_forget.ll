; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_forget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"inconsistent data on disk\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"belongs to current transaction: unfile\00", align 1
@BJ_Forget = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"belongs to older transaction\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @journal_forget(%struct.TYPE_8__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %18 = call i32 @BUFFER_TRACE(%struct.buffer_head* %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %20 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %25 = call i32 @buffer_jbd(%struct.buffer_head* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %145

28:                                               ; preds = %2
  %29 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %30 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %29)
  store %struct.journal_head* %30, %struct.journal_head** %7, align 8
  %31 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %32 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %33 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @J_EXPECT_JH(%struct.journal_head* %31, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %28
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %145

43:                                               ; preds = %28
  %44 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %10, align 4
  %47 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %48 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %50 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp eq %struct.TYPE_6__* %51, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %43
  %57 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %58 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %59 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i32 @J_ASSERT_JH(%struct.journal_head* %57, i32 %63)
  %65 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %66 = call i32 @clear_buffer_dirty(%struct.buffer_head* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %68 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %67)
  %69 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %70 = call i32 @JBUFFER_TRACE(%struct.journal_head* %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %76 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %81 = call i32 @__journal_temp_unlink_buffer(%struct.journal_head* %80)
  %82 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = load i32, i32* @BJ_Forget, align 4
  %85 = call i32 @__journal_file_buffer(%struct.journal_head* %82, %struct.TYPE_6__* %83, i32 %84)
  br label %105

86:                                               ; preds = %74
  %87 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %88 = call i32 @__journal_unfile_buffer(%struct.journal_head* %87)
  %89 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %90 = call i32 @journal_remove_journal_head(%struct.buffer_head* %89)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %92 = call i32 @__brelse(%struct.buffer_head* %91)
  %93 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %94 = call i32 @buffer_jbd(%struct.buffer_head* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %86
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %101 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %103 = call i32 @__bforget(%struct.buffer_head* %102)
  br label %153

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104, %79
  br label %144

106:                                              ; preds = %43
  %107 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %108 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %107, i32 0, i32 2
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %143

111:                                              ; preds = %106
  %112 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %113 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %114 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = icmp eq %struct.TYPE_6__* %115, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @J_ASSERT_JH(%struct.journal_head* %112, i32 %120)
  %122 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %123 = call i32 @JBUFFER_TRACE(%struct.journal_head* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %124 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %125 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = icmp ne %struct.TYPE_6__* %126, null
  br i1 %127, label %128, label %142

128:                                              ; preds = %111
  %129 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %130 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %129, i32 0, i32 1
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %133 = icmp eq %struct.TYPE_6__* %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @J_ASSERT(i32 %134)
  %136 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %137 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %136, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %137, align 8
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %128
  store i32 1, i32* %8, align 4
  br label %141

141:                                              ; preds = %140, %128
  br label %142

142:                                              ; preds = %141, %111
  br label %143

143:                                              ; preds = %142, %106
  br label %144

144:                                              ; preds = %143, %105
  br label %145

145:                                              ; preds = %144, %40, %27
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %150 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %149)
  %151 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %152 = call i32 @__brelse(%struct.buffer_head* %151)
  br label %153

153:                                              ; preds = %145, %96
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %153
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  br label %161

161:                                              ; preds = %156, %153
  %162 = load i32, i32* %9, align 4
  ret i32 %162
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @J_EXPECT_JH(%struct.journal_head*, i32, i8*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @__journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @journal_remove_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @__bforget(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
