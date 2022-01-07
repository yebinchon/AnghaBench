; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_journal_unmap_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c_journal_unmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.buffer_head = type { i32* }
%struct.journal_head = type { i32*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not on any transaction: zap\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"checkpointed: add to BJ_Forget\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"give to committing trans\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"on committing transaction\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"on running transaction\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.buffer_head*)* @journal_unmap_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_unmap_buffer(%struct.TYPE_3__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 1, i32* %8, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = call i32 @BUFFER_TRACE(%struct.buffer_head* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %13 = call i32 @buffer_jbd(%struct.buffer_head* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %164

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %21 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %26 = call %struct.journal_head* @jbd2_journal_grab_journal_head(%struct.buffer_head* %25)
  store %struct.journal_head* %26, %struct.journal_head** %7, align 8
  %27 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %28 = icmp ne %struct.journal_head* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %155

30:                                               ; preds = %16
  %31 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %100

36:                                               ; preds = %30
  %37 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %38 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %43 = call i32 @JBUFFER_TRACE(%struct.journal_head* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %152

44:                                               ; preds = %36
  %45 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %46 = call i32 @buffer_dirty(%struct.buffer_head* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %152

49:                                               ; preds = %44
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %56 = call i32 @JBUFFER_TRACE(%struct.journal_head* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @__dispose_buffer(%struct.journal_head* %57, i32* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %63 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %68 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %67)
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 @spin_unlock(i32* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %187

73:                                               ; preds = %49
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %97

78:                                               ; preds = %73
  %79 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %80 = call i32 @JBUFFER_TRACE(%struct.journal_head* %79, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @__dispose_buffer(%struct.journal_head* %81, i32* %84)
  store i32 %85, i32* %9, align 4
  %86 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %87 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %86)
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %92 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %91)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = call i32 @spin_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %187

97:                                               ; preds = %73
  %98 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %99 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %98)
  br label %152

100:                                              ; preds = %30
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %101, %104
  br i1 %105, label %106, label %136

106:                                              ; preds = %100
  %107 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %108 = call i32 @JBUFFER_TRACE(%struct.journal_head* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %110 = call i32 @set_buffer_freed(%struct.buffer_head* %109)
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %125

115:                                              ; preds = %106
  %116 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %117 = call i64 @buffer_jbddirty(%struct.buffer_head* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %124 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %123, i32 0, i32 0
  store i32* %122, i32** %124, align 8
  br label %125

125:                                              ; preds = %119, %115, %106
  %126 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %127 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %126)
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = call i32 @spin_unlock(i32* %129)
  %131 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %132 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %131)
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = call i32 @spin_unlock(i32* %134)
  store i32 0, i32* %3, align 4
  br label %187

136:                                              ; preds = %100
  %137 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = icmp eq i32* %138, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @J_ASSERT_JH(%struct.journal_head* %137, i32 %143)
  %145 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %146 = call i32 @JBUFFER_TRACE(%struct.journal_head* %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %148 = load i32*, i32** %6, align 8
  %149 = call i32 @__dispose_buffer(%struct.journal_head* %147, i32* %148)
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151, %97, %48, %41
  %153 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %154 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %153)
  br label %155

155:                                              ; preds = %152, %29
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock(i32* %157)
  %159 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %160 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %159)
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = call i32 @spin_unlock(i32* %162)
  br label %164

164:                                              ; preds = %155, %15
  %165 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %166 = call i32 @clear_buffer_dirty(%struct.buffer_head* %165)
  %167 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %168 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %169 = call i64 @buffer_jbddirty(%struct.buffer_head* %168)
  %170 = icmp ne i64 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = call i32 @J_ASSERT_BH(%struct.buffer_head* %167, i32 %172)
  %174 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %175 = call i32 @clear_buffer_mapped(%struct.buffer_head* %174)
  %176 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %177 = call i32 @clear_buffer_req(%struct.buffer_head* %176)
  %178 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %179 = call i32 @clear_buffer_new(%struct.buffer_head* %178)
  %180 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %181 = call i32 @clear_buffer_delay(%struct.buffer_head* %180)
  %182 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %183 = call i32 @clear_buffer_unwritten(%struct.buffer_head* %182)
  %184 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %185 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %184, i32 0, i32 0
  store i32* null, i32** %185, align 8
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %164, %125, %78, %54
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @jbd2_journal_grab_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__dispose_buffer(%struct.journal_head*, i32*) #1

declare dso_local i32 @jbd2_journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_freed(%struct.buffer_head*) #1

declare dso_local i64 @buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_delay(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_unwritten(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
