; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_can_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_alloc.c_ocfs2_truncate_log_can_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_truncate_log = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_truncate_log*, i32)* @ocfs2_truncate_log_can_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_truncate_log_can_coalesce(%struct.ocfs2_truncate_log* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_truncate_log*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ocfs2_truncate_log* %0, %struct.ocfs2_truncate_log** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @le16_to_cpu(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le16_to_cpu(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %4, align 8
  %21 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le32_to_cpu(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ocfs2_truncate_log*, %struct.ocfs2_truncate_log** %4, align 8
  %30 = getelementptr inbounds %struct.ocfs2_truncate_log, %struct.ocfs2_truncate_log* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = add i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %14, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
