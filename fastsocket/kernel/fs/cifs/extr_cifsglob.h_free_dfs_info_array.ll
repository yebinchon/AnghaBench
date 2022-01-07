; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsglob.h_free_dfs_info_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_cifsglob.h_free_dfs_info_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dfs_info3_param = type { %struct.dfs_info3_param*, %struct.dfs_info3_param* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dfs_info3_param*, i32)* @free_dfs_info_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_dfs_info_array(%struct.dfs_info3_param* %0, i32 %1) #0 {
  %3 = alloca %struct.dfs_info3_param*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dfs_info3_param* %0, %struct.dfs_info3_param** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %3, align 8
  %10 = icmp eq %struct.dfs_info3_param* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8, %2
  br label %38

12:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %32, %12
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %18, i64 %20
  %22 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %21, i32 0, i32 1
  %23 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %22, align 8
  %24 = call i32 @kfree(%struct.dfs_info3_param* %23)
  %25 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %25, i64 %27
  %29 = getelementptr inbounds %struct.dfs_info3_param, %struct.dfs_info3_param* %28, i32 0, i32 0
  %30 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %29, align 8
  %31 = call i32 @kfree(%struct.dfs_info3_param* %30)
  br label %32

32:                                               ; preds = %17
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.dfs_info3_param*, %struct.dfs_info3_param** %3, align 8
  %37 = call i32 @kfree(%struct.dfs_info3_param* %36)
  br label %38

38:                                               ; preds = %35, %11
  ret void
}

declare dso_local i32 @kfree(%struct.dfs_info3_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
