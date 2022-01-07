; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_dq_quota_on_remount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_vfs_dq_quota_on_remount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.super_block*, i32, i32, i32*, i32)* }

@ENOSYS = common dso_local global i32 0, align 4
@MAXQUOTAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_dq_quota_on_remount(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %3, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.super_block*, i32, i32, i32*, i32)*, i32 (%struct.super_block*, i32, i32, i32*, i32)** %15, align 8
  %17 = icmp ne i32 (%struct.super_block*, i32, i32, i32*, i32)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @ENOSYS, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %48

21:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %43, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MAXQUOTAS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %46

26:                                               ; preds = %22
  %27 = load %struct.super_block*, %struct.super_block** %3, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.super_block*, i32, i32, i32*, i32)*, i32 (%struct.super_block*, i32, i32, i32*, i32)** %30, align 8
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 %31(%struct.super_block* %32, i32 %33, i32 0, i32* null, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %37, %26
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %22

46:                                               ; preds = %22
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
