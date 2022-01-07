; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_get_empty_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_get_empty_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32, %struct.super_block*, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dquot* (%struct.super_block*, i32)* @get_empty_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dquot* @get_empty_dquot(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dquot*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to %struct.dquot* (%struct.super_block*, i32)**
  %12 = load %struct.dquot* (%struct.super_block*, i32)*, %struct.dquot* (%struct.super_block*, i32)** %11, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.dquot* %12(%struct.super_block* %13, i32 %14)
  store %struct.dquot* %15, %struct.dquot** %6, align 8
  %16 = load %struct.dquot*, %struct.dquot** %6, align 8
  %17 = icmp ne %struct.dquot* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store %struct.dquot* null, %struct.dquot** %3, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.dquot*, %struct.dquot** %6, align 8
  %21 = getelementptr inbounds %struct.dquot, %struct.dquot* %20, i32 0, i32 8
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.dquot*, %struct.dquot** %6, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 7
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.dquot*, %struct.dquot** %6, align 8
  %27 = getelementptr inbounds %struct.dquot, %struct.dquot* %26, i32 0, i32 6
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.dquot*, %struct.dquot** %6, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 5
  %31 = call i32 @INIT_HLIST_NODE(i32* %30)
  %32 = load %struct.dquot*, %struct.dquot** %6, align 8
  %33 = getelementptr inbounds %struct.dquot, %struct.dquot* %32, i32 0, i32 4
  %34 = call i32 @INIT_LIST_HEAD(i32* %33)
  %35 = load %struct.dquot*, %struct.dquot** %6, align 8
  %36 = getelementptr inbounds %struct.dquot, %struct.dquot* %35, i32 0, i32 3
  %37 = call i32 @init_waitqueue_head(i32* %36)
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = load %struct.dquot*, %struct.dquot** %6, align 8
  %40 = getelementptr inbounds %struct.dquot, %struct.dquot* %39, i32 0, i32 2
  store %struct.super_block* %38, %struct.super_block** %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.dquot*, %struct.dquot** %6, align 8
  %43 = getelementptr inbounds %struct.dquot, %struct.dquot* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dquot*, %struct.dquot** %6, align 8
  %45 = getelementptr inbounds %struct.dquot, %struct.dquot* %44, i32 0, i32 1
  %46 = call i32 @atomic_set(i32* %45, i32 1)
  %47 = load %struct.dquot*, %struct.dquot** %6, align 8
  store %struct.dquot* %47, %struct.dquot** %3, align 8
  br label %48

48:                                               ; preds = %19, %18
  %49 = load %struct.dquot*, %struct.dquot** %3, align 8
  ret %struct.dquot* %49
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
