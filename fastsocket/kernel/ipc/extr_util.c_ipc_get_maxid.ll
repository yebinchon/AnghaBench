; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_get_maxid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/ipc/extr_util.c_ipc_get_maxid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipc_ids = type { i32, i32 }
%struct.kern_ipc_perm = type { i32 }

@IPCMNI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipc_get_maxid(%struct.ipc_ids* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipc_ids*, align 8
  %4 = alloca %struct.kern_ipc_perm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ipc_ids* %0, %struct.ipc_ids** %3, align 8
  store i32 -1, i32* %5, align 4
  %8 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %9 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %15 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPCMNI, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @IPCMNI, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IPCMNI, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %30 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br label %33

33:                                               ; preds = %27, %23
  %34 = phi i1 [ false, %23 ], [ %32, %27 ]
  br i1 %34, label %35, label %50

35:                                               ; preds = %33
  %36 = load %struct.ipc_ids*, %struct.ipc_ids** %3, align 8
  %37 = getelementptr inbounds %struct.ipc_ids, %struct.ipc_ids* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = call %struct.kern_ipc_perm* @idr_find(i32* %37, i32 %38)
  store %struct.kern_ipc_perm* %39, %struct.kern_ipc_perm** %4, align 8
  %40 = load %struct.kern_ipc_perm*, %struct.kern_ipc_perm** %4, align 8
  %41 = icmp ne %struct.kern_ipc_perm* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %35
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %23

50:                                               ; preds = %33
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %19, %12
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.kern_ipc_perm* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
