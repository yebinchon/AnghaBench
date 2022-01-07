; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_propagate_mount_busy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_propagate_mount_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, i32, %struct.vfsmount* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @propagate_mount_busy(%struct.vfsmount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %11 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %10, i32 0, i32 2
  %12 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  store %struct.vfsmount* %12, %struct.vfsmount** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %14 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %15 = icmp eq %struct.vfsmount* %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @do_refcount_check(%struct.vfsmount* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %2
  %21 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %22 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %21, i32 0, i32 0
  %23 = call i64 @list_empty(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @do_refcount_check(%struct.vfsmount* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20
  store i32 1, i32* %3, align 4
  br label %63

31:                                               ; preds = %25
  %32 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %33 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %34 = call %struct.vfsmount* @propagation_next(%struct.vfsmount* %32, %struct.vfsmount* %33)
  store %struct.vfsmount* %34, %struct.vfsmount** %6, align 8
  br label %35

35:                                               ; preds = %57, %31
  %36 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %37 = icmp ne %struct.vfsmount* %36, null
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %40 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %41 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.vfsmount* @__lookup_mnt(%struct.vfsmount* %39, i32 %42, i32 0)
  store %struct.vfsmount* %43, %struct.vfsmount** %7, align 8
  %44 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %45 = icmp ne %struct.vfsmount* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %48 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %47, i32 0, i32 0
  %49 = call i64 @list_empty(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %53 = call i32 @do_refcount_check(%struct.vfsmount* %52, i32 1)
  store i32 %53, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %61

56:                                               ; preds = %51, %46, %38
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %59 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %60 = call %struct.vfsmount* @propagation_next(%struct.vfsmount* %58, %struct.vfsmount* %59)
  store %struct.vfsmount* %60, %struct.vfsmount** %6, align 8
  br label %35

61:                                               ; preds = %55, %35
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %30, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @do_refcount_check(%struct.vfsmount*, i32) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.vfsmount* @propagation_next(%struct.vfsmount*, %struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @__lookup_mnt(%struct.vfsmount*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
