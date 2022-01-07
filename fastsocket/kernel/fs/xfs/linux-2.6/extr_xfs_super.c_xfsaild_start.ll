; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_super.c_xfsaild_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/linux-2.6/extr_xfs_super.c_xfsaild_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_ail = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@xfsaild = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"xfsaild/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfsaild_start(%struct.xfs_ail* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_ail*, align 8
  store %struct.xfs_ail* %0, %struct.xfs_ail** %3, align 8
  %4 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %5 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @xfsaild, align 4
  %7 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %8 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %9 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @kthread_run(i32 %6, %struct.xfs_ail* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %17 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @IS_ERR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load %struct.xfs_ail*, %struct.xfs_ail** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_ail, %struct.xfs_ail* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @PTR_ERR(i32 %24)
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @kthread_run(i32, %struct.xfs_ail*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
