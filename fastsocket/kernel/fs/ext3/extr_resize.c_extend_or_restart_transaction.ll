; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_resize.c_extend_or_restart_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_resize.c_extend_or_restart_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.buffer_head = type { i32 }

@EXT3_MAX_TRANS_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, %struct.buffer_head*)* @extend_or_restart_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extend_or_restart_transaction(%struct.TYPE_6__* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = load i32, i32* @EXT3_MAX_TRANS_DATA, align 4
  %18 = call i32 @ext3_journal_extend(%struct.TYPE_6__* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %44

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i32, i32* @EXT3_MAX_TRANS_DATA, align 4
  %29 = call i32 @ext3_journal_restart(%struct.TYPE_6__* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %37 = call i32 @ext3_journal_get_write_access(%struct.TYPE_6__* %35, %struct.buffer_head* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %44

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42, %23
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %40, %32, %21, %14
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @ext3_journal_extend(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ext3_journal_restart(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.TYPE_6__*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
