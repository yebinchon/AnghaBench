; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_unmap_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c_journal_unmap_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32* }
%struct.buffer_head = type { i32* }
%struct.journal_head = type { i64, i32*, i32, i32* }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"not on any transaction: zap\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"checkpointed: add to BJ_Forget\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"give to committing trans\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"on committing transaction\00", align 1
@BJ_Locked = common dso_local global i64 0, align 8
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
  br label %176

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
  %26 = call %struct.journal_head* @journal_grab_journal_head(%struct.buffer_head* %25)
  store %struct.journal_head* %26, %struct.journal_head** %7, align 8
  %27 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %28 = icmp ne %struct.journal_head* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %16
  br label %167

30:                                               ; preds = %16
  %31 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %100

36:                                               ; preds = %30
  %37 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %38 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %43 = call i32 @JBUFFER_TRACE(%struct.journal_head* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %164

44:                                               ; preds = %36
  %45 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %46 = call i32 @buffer_dirty(%struct.buffer_head* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  br label %164

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
  %63 = call i32 @journal_put_journal_head(%struct.journal_head* %62)
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
  br label %195

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
  %87 = call i32 @journal_put_journal_head(%struct.journal_head* %86)
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
  br label %195

97:                                               ; preds = %73
  %98 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %99 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %98)
  br label %164

100:                                              ; preds = %30
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %101, %104
  br i1 %105, label %106, label %148

106:                                              ; preds = %100
  %107 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %108 = call i32 @JBUFFER_TRACE(%struct.journal_head* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %110 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @BJ_Locked, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %116 = load i32*, i32** %6, align 8
  %117 = call i32 @__dispose_buffer(%struct.journal_head* %115, i32* %116)
  store i32 %117, i32* %8, align 4
  br label %164

118:                                              ; preds = %106
  %119 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %120 = call i32 @set_buffer_freed(%struct.buffer_head* %119)
  %121 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %122 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %137

125:                                              ; preds = %118
  %126 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %127 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = icmp eq i32* %128, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @J_ASSERT(i32 %133)
  %135 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %136 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %135, i32 0, i32 1
  store i32* null, i32** %136, align 8
  br label %137

137:                                              ; preds = %125, %118
  %138 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %139 = call i32 @journal_put_journal_head(%struct.journal_head* %138)
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = call i32 @spin_unlock(i32* %141)
  %143 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %144 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %143)
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = call i32 @spin_unlock(i32* %146)
  store i32 0, i32* %3, align 4
  br label %195

148:                                              ; preds = %100
  %149 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %150, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @J_ASSERT_JH(%struct.journal_head* %149, i32 %155)
  %157 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %158 = call i32 @JBUFFER_TRACE(%struct.journal_head* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %159 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = call i32 @__dispose_buffer(%struct.journal_head* %159, i32* %160)
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %148
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163, %114, %97, %48, %41
  %165 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %166 = call i32 @journal_put_journal_head(%struct.journal_head* %165)
  br label %167

167:                                              ; preds = %164, %29
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = call i32 @spin_unlock(i32* %169)
  %171 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %172 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %171)
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = call i32 @spin_unlock(i32* %174)
  br label %176

176:                                              ; preds = %167, %15
  %177 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %178 = call i32 @clear_buffer_dirty(%struct.buffer_head* %177)
  %179 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %180 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %181 = call i32 @buffer_jbddirty(%struct.buffer_head* %180)
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = zext i1 %183 to i32
  %185 = call i32 @J_ASSERT_BH(%struct.buffer_head* %179, i32 %184)
  %186 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %187 = call i32 @clear_buffer_mapped(%struct.buffer_head* %186)
  %188 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %189 = call i32 @clear_buffer_req(%struct.buffer_head* %188)
  %190 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %191 = call i32 @clear_buffer_new(%struct.buffer_head* %190)
  %192 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %193 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %192, i32 0, i32 0
  store i32* null, i32** %193, align 8
  %194 = load i32, i32* %8, align 4
  store i32 %194, i32* %3, align 4
  br label %195

195:                                              ; preds = %176, %137, %78, %54
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @buffer_jbd(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local %struct.journal_head* @journal_grab_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @__dispose_buffer(%struct.journal_head*, i32*) #1

declare dso_local i32 @journal_put_journal_head(%struct.journal_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT(i32) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_BH(%struct.buffer_head*, i32) #1

declare dso_local i32 @buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_mapped(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_new(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
