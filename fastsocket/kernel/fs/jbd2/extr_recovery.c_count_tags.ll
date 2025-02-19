; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_recovery.c_count_tags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jbd2/extr_recovery.c_count_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.buffer_head = type { i8* }
%struct.TYPE_6__ = type { i32 }

@JBD2_FLAG_SAME_UUID = common dso_local global i32 0, align 4
@JBD2_FLAG_LAST_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.buffer_head*)* @count_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_tags(%struct.TYPE_5__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = call i32 @journal_tag_bytes(%struct.TYPE_5__* %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %16 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 4
  store i8* %18, i8** %5, align 8
  br label %19

19:                                               ; preds = %61, %2
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %22 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %20 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = icmp sle i64 %29, %31
  br i1 %32, label %33, label %62

33:                                               ; preds = %19
  %34 = load i8*, i8** %5, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %35, %struct.TYPE_6__** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %5, align 8
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8* %41, i8** %5, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @JBD2_FLAG_SAME_UUID, align 4
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %33
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 16
  store i8* %51, i8** %5, align 8
  br label %52

52:                                               ; preds = %49, %33
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @JBD2_FLAG_LAST_TAG, align 4
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %62

61:                                               ; preds = %52
  br label %19

62:                                               ; preds = %60, %19
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @journal_tag_bytes(%struct.TYPE_5__*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
