; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_find_smallest_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_find_smallest_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_chain_list = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ocfs2_chain_list*)* @ocfs2_find_smallest_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_find_smallest_chain(%struct.ocfs2_chain_list* %0) #0 {
  %2 = alloca %struct.ocfs2_chain_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ocfs2_chain_list* %0, %struct.ocfs2_chain_list** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i64, i64* %3, align 8
  %7 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %8 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @le16_to_cpu(i32 %9)
  %11 = icmp ult i64 %6, %10
  br i1 %11, label %12, label %35

12:                                               ; preds = %5
  %13 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @le32_to_cpu(i32 %19)
  %21 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %22 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  %29 = icmp sgt i64 %20, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %12
  %31 = load i64, i64* %3, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %12
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %5

35:                                               ; preds = %5
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
