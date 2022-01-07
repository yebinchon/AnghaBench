; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_summary.c_jffs2_sum_clean_collected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jffs2/extr_summary.c_jffs2_sum_clean_collected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_summary = type { i64, i64, i32*, %union.jffs2_sum_mem* }
%union.jffs2_sum_mem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %union.jffs2_sum_mem* }

@.str = private unnamed_addr constant [15 x i8] c"already empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jffs2_summary*)* @jffs2_sum_clean_collected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jffs2_sum_clean_collected(%struct.jffs2_summary* %0) #0 {
  %2 = alloca %struct.jffs2_summary*, align 8
  %3 = alloca %union.jffs2_sum_mem*, align 8
  store %struct.jffs2_summary* %0, %struct.jffs2_summary** %2, align 8
  %4 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %5 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %4, i32 0, i32 3
  %6 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %5, align 8
  %7 = icmp ne %union.jffs2_sum_mem* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @dbg_summary(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  br label %11

11:                                               ; preds = %16, %10
  %12 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %13 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %12, i32 0, i32 3
  %14 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %13, align 8
  %15 = icmp ne %union.jffs2_sum_mem* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %18 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %17, i32 0, i32 3
  %19 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %18, align 8
  store %union.jffs2_sum_mem* %19, %union.jffs2_sum_mem** %3, align 8
  %20 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %21 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %20, i32 0, i32 3
  %22 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %21, align 8
  %23 = bitcast %union.jffs2_sum_mem* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %24, align 8
  %26 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %27 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %26, i32 0, i32 3
  store %union.jffs2_sum_mem* %25, %union.jffs2_sum_mem** %27, align 8
  %28 = load %union.jffs2_sum_mem*, %union.jffs2_sum_mem** %3, align 8
  %29 = call i32 @kfree(%union.jffs2_sum_mem* %28)
  br label %11

30:                                               ; preds = %11
  %31 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %32 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  %33 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %34 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load %struct.jffs2_summary*, %struct.jffs2_summary** %2, align 8
  %36 = getelementptr inbounds %struct.jffs2_summary, %struct.jffs2_summary* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @dbg_summary(i8*) #1

declare dso_local i32 @kfree(%union.jffs2_sum_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
