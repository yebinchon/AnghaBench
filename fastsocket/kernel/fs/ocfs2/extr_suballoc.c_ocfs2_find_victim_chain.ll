; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_find_victim_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_suballoc.c_ocfs2_find_victim_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_chain_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ocfs2_chain_list*)* @ocfs2_find_victim_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ocfs2_find_victim_chain(%struct.ocfs2_chain_list* %0) #0 {
  %2 = alloca %struct.ocfs2_chain_list*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.ocfs2_chain_list* %0, %struct.ocfs2_chain_list** %2, align 8
  %5 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @le16_to_cpu(i32 %16)
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %12
  %20 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %21 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  %28 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %29 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = icmp sgt i64 %27, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %19
  %38 = load i64, i64* %3, align 8
  store i64 %38, i64* %4, align 8
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i64, i64* %3, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %12

42:                                               ; preds = %12
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.ocfs2_chain_list*, %struct.ocfs2_chain_list** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_chain_list, %struct.ocfs2_chain_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @le16_to_cpu(i32 %46)
  %48 = icmp uge i64 %43, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load i64, i64* %4, align 8
  ret i64 %51
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
