; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_revoke.c_find_revoke_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_revoke.c_find_revoke_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jbd2_revoke_record_s = type { i64, %struct.list_head }
%struct.list_head = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.list_head* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.jbd2_revoke_record_s* (%struct.TYPE_6__*, i64)* @find_revoke_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.jbd2_revoke_record_s* @find_revoke_record(%struct.TYPE_6__* %0, i64 %1) #0 {
  %3 = alloca %struct.jbd2_revoke_record_s*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.jbd2_revoke_record_s*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.list_head*, %struct.list_head** %11, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @hash(%struct.TYPE_6__* %13, i64 %14)
  %16 = getelementptr inbounds %struct.list_head, %struct.list_head* %12, i64 %15
  store %struct.list_head* %16, %struct.list_head** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.list_head*, %struct.list_head** %6, align 8
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.jbd2_revoke_record_s*
  store %struct.jbd2_revoke_record_s* %23, %struct.jbd2_revoke_record_s** %7, align 8
  br label %24

24:                                               ; preds = %40, %2
  %25 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %7, align 8
  %26 = getelementptr inbounds %struct.jbd2_revoke_record_s, %struct.jbd2_revoke_record_s* %25, i32 0, i32 1
  %27 = load %struct.list_head*, %struct.list_head** %6, align 8
  %28 = icmp ne %struct.list_head* %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %7, align 8
  %31 = getelementptr inbounds %struct.jbd2_revoke_record_s, %struct.jbd2_revoke_record_s* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %7, align 8
  store %struct.jbd2_revoke_record_s* %39, %struct.jbd2_revoke_record_s** %3, align 8
  br label %50

40:                                               ; preds = %29
  %41 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %7, align 8
  %42 = getelementptr inbounds %struct.jbd2_revoke_record_s, %struct.jbd2_revoke_record_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.list_head, %struct.list_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.jbd2_revoke_record_s*
  store %struct.jbd2_revoke_record_s* %45, %struct.jbd2_revoke_record_s** %7, align 8
  br label %24

46:                                               ; preds = %24
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  store %struct.jbd2_revoke_record_s* null, %struct.jbd2_revoke_record_s** %3, align 8
  br label %50

50:                                               ; preds = %46, %35
  %51 = load %struct.jbd2_revoke_record_s*, %struct.jbd2_revoke_record_s** %3, align 8
  ret %struct.jbd2_revoke_record_s* %51
}

declare dso_local i64 @hash(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
