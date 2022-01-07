; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c___jbd2_journal_refile_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_transaction.c___jbd2_journal_refile_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.TYPE_4__*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }

@BJ_Forget = common dso_local global i32 0, align 4
@BJ_Metadata = common dso_local global i32 0, align 4
@BJ_Reserved = common dso_local global i32 0, align 4
@T_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__jbd2_journal_refile_buffer(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  %6 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %7 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %6)
  store %struct.buffer_head* %7, %struct.buffer_head** %5, align 8
  %8 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = call i32 @jbd_is_locked_bh_state(%struct.buffer_head* %9)
  %11 = call i32 @J_ASSERT_JH(%struct.journal_head* %8, i32 %10)
  %12 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %13 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %18 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @assert_spin_locked(i32* %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %26 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %31 = call i32 @__jbd2_journal_unfile_buffer(%struct.journal_head* %30)
  br label %81

32:                                               ; preds = %24
  %33 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %34 = call i32 @test_clear_buffer_jbddirty(%struct.buffer_head* %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %36 = call i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head* %35)
  %37 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %38 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %41 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %40, i32 0, i32 0
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %41, align 8
  %42 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %43 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %42, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %43, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %45 = call i64 @buffer_freed(%struct.buffer_head* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load i32, i32* @BJ_Forget, align 4
  store i32 %48, i32* %4, align 4
  br label %59

49:                                               ; preds = %32
  %50 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %51 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @BJ_Metadata, align 4
  store i32 %55, i32* %4, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @BJ_Reserved, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %47
  %60 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %61 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %62 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %60, %struct.TYPE_4__* %63, i32 %64)
  %66 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %67 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %68 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @T_RUNNING, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @J_ASSERT_JH(%struct.journal_head* %66, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %59
  %79 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %80 = call i32 @set_buffer_jbddirty(%struct.buffer_head* %79)
  br label %81

81:                                               ; preds = %29, %78, %59
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @jbd_is_locked_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @__jbd2_journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @test_clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @__jbd2_journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i64 @buffer_freed(%struct.buffer_head*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_buffer_jbddirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
