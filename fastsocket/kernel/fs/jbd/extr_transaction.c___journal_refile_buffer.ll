; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c___journal_refile_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd/extr_transaction.c___journal_refile_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { %struct.TYPE_4__*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }

@BJ_Metadata = common dso_local global i32 0, align 4
@BJ_Reserved = common dso_local global i32 0, align 4
@T_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__journal_refile_buffer(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  %5 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %6 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %5)
  store %struct.buffer_head* %6, %struct.buffer_head** %4, align 8
  %7 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = call i32 @jbd_is_locked_bh_state(%struct.buffer_head* %8)
  %10 = call i32 @J_ASSERT_JH(%struct.journal_head* %7, i32 %9)
  %11 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %12 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %17 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @assert_spin_locked(i32* %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %25 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %30 = call i32 @__journal_unfile_buffer(%struct.journal_head* %29)
  br label %73

31:                                               ; preds = %23
  %32 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %33 = call i32 @test_clear_buffer_jbddirty(%struct.buffer_head* %32)
  store i32 %33, i32* %3, align 4
  %34 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %35 = call i32 @__journal_temp_unlink_buffer(%struct.journal_head* %34)
  %36 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %37 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %40 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %39, i32 0, i32 0
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %42 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %41, i32 0, i32 2
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %42, align 8
  %43 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %44 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %45 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %48 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* @BJ_Metadata, align 4
  br label %55

53:                                               ; preds = %31
  %54 = load i32, i32* @BJ_Reserved, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = call i32 @__journal_file_buffer(%struct.journal_head* %43, %struct.TYPE_4__* %46, i32 %56)
  %58 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %59 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %60 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @T_RUNNING, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @J_ASSERT_JH(%struct.journal_head* %58, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %72 = call i32 @set_buffer_jbddirty(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %28, %70, %55
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @jbd_is_locked_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @__journal_unfile_buffer(%struct.journal_head*) #1

declare dso_local i32 @test_clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @__journal_temp_unlink_buffer(%struct.journal_head*) #1

declare dso_local i32 @__journal_file_buffer(%struct.journal_head*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @set_buffer_jbddirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
