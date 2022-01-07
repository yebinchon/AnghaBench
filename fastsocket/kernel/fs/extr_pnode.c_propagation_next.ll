; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_propagation_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_propagation_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, %struct.TYPE_2__, %struct.vfsmount* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.vfsmount*, %struct.vfsmount*)* @propagation_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @propagation_next(%struct.vfsmount* %0, %struct.vfsmount* %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %5, align 8
  %8 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %9 = call i32 @IS_MNT_NEW(%struct.vfsmount* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %2
  %12 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %13 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %12, i32 0, i32 0
  %14 = call i32 @list_empty(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %18 = call %struct.vfsmount* @first_slave(%struct.vfsmount* %17)
  store %struct.vfsmount* %18, %struct.vfsmount** %3, align 8
  br label %54

19:                                               ; preds = %11, %2
  br label %20

20:                                               ; preds = %19, %52
  %21 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %22 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %21, i32 0, i32 2
  %23 = load %struct.vfsmount*, %struct.vfsmount** %22, align 8
  store %struct.vfsmount* %23, %struct.vfsmount** %7, align 8
  %24 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %25 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %26 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %25, i32 0, i32 2
  %27 = load %struct.vfsmount*, %struct.vfsmount** %26, align 8
  %28 = icmp eq %struct.vfsmount* %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %20
  %30 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %31 = call %struct.vfsmount* @next_peer(%struct.vfsmount* %30)
  store %struct.vfsmount* %31, %struct.vfsmount** %6, align 8
  %32 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %33 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %34 = icmp eq %struct.vfsmount* %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %29
  %37 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi %struct.vfsmount* [ null, %35 ], [ %37, %36 ]
  store %struct.vfsmount* %39, %struct.vfsmount** %3, align 8
  br label %54

40:                                               ; preds = %20
  %41 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %42 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %46 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %45, i32 0, i32 0
  %47 = icmp ne i32* %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  %50 = call %struct.vfsmount* @next_slave(%struct.vfsmount* %49)
  store %struct.vfsmount* %50, %struct.vfsmount** %3, align 8
  br label %54

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* %53, %struct.vfsmount** %4, align 8
  br label %20

54:                                               ; preds = %48, %38, %16
  %55 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  ret %struct.vfsmount* %55
}

declare dso_local i32 @IS_MNT_NEW(%struct.vfsmount*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.vfsmount* @first_slave(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @next_peer(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @next_slave(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
