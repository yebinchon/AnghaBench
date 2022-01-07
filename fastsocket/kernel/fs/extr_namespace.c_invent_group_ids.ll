; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_invent_group_ids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namespace.c_invent_group_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, i32)* @invent_group_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invent_group_ids(%struct.vfsmount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %8, %struct.vfsmount** %6, align 8
  br label %9

9:                                                ; preds = %41, %2
  %10 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %11 = icmp ne %struct.vfsmount* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %9
  %13 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %14 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %19 = call i32 @IS_MNT_SHARED(%struct.vfsmount* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %17
  %22 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %23 = call i32 @mnt_alloc_group_id(%struct.vfsmount* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %28 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %29 = call i32 @cleanup_group_ids(%struct.vfsmount* %27, %struct.vfsmount* %28)
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %31, %17, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %38 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %39 = call %struct.vfsmount* @next_mnt(%struct.vfsmount* %37, %struct.vfsmount* %38)
  br label %41

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi %struct.vfsmount* [ %39, %36 ], [ null, %40 ]
  store %struct.vfsmount* %42, %struct.vfsmount** %6, align 8
  br label %9

43:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @IS_MNT_SHARED(%struct.vfsmount*) #1

declare dso_local i32 @mnt_alloc_group_id(%struct.vfsmount*) #1

declare dso_local i32 @cleanup_group_ids(%struct.vfsmount*, %struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @next_mnt(%struct.vfsmount*, %struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
