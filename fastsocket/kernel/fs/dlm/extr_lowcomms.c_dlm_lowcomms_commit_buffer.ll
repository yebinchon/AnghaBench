; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_dlm_lowcomms_commit_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_dlm_lowcomms_commit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.writequeue_entry = type { i32, i64, i64, i64, %struct.connection* }
%struct.connection = type { i32, i32, i32 }

@CF_WRITE_PENDING = common dso_local global i32 0, align 4
@send_workqueue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_lowcomms_commit_buffer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.writequeue_entry*, align 8
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.writequeue_entry*
  store %struct.writequeue_entry* %7, %struct.writequeue_entry** %3, align 8
  %8 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %9 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %8, i32 0, i32 4
  %10 = load %struct.connection*, %struct.connection** %9, align 8
  store %struct.connection* %10, %struct.connection** %4, align 8
  %11 = load %struct.connection*, %struct.connection** %4, align 8
  %12 = getelementptr inbounds %struct.connection, %struct.connection* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %15 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %15, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %23 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %26 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load %struct.writequeue_entry*, %struct.writequeue_entry** %3, align 8
  %30 = getelementptr inbounds %struct.writequeue_entry, %struct.writequeue_entry* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.connection*, %struct.connection** %4, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* @CF_WRITE_PENDING, align 4
  %35 = load %struct.connection*, %struct.connection** %4, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 2
  %37 = call i32 @test_and_set_bit(i32 %34, i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %21
  %40 = load i32, i32* @send_workqueue, align 4
  %41 = load %struct.connection*, %struct.connection** %4, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 1
  %43 = call i32 @queue_work(i32 %40, i32* %42)
  br label %44

44:                                               ; preds = %39, %21
  br label %49

45:                                               ; preds = %20
  %46 = load %struct.connection*, %struct.connection** %4, align 8
  %47 = getelementptr inbounds %struct.connection, %struct.connection* %46, i32 0, i32 0
  %48 = call i32 @spin_unlock(i32* %47)
  br label %49

49:                                               ; preds = %45, %44
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
