; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_change_mnt_propagation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_change_mnt_propagation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32, i32*, i32 }

@MS_SHARED = common dso_local global i32 0, align 4
@MS_SLAVE = common dso_local global i32 0, align 4
@MS_UNBINDABLE = common dso_local global i32 0, align 4
@MNT_UNBINDABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_mnt_propagation(%struct.vfsmount* %0, i32 %1) #0 {
  %3 = alloca %struct.vfsmount*, align 8
  %4 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MS_SHARED, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %10 = call i32 @set_mnt_shared(%struct.vfsmount* %9)
  br label %40

11:                                               ; preds = %2
  %12 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %13 = call i32 @do_make_slave(%struct.vfsmount* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MS_SLAVE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %19 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %18, i32 0, i32 2
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %22 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MS_UNBINDABLE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* @MNT_UNBINDABLE, align 4
  %28 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %29 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  br label %39

32:                                               ; preds = %17
  %33 = load i32, i32* @MNT_UNBINDABLE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.vfsmount*, %struct.vfsmount** %3, align 8
  %36 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %26
  br label %40

40:                                               ; preds = %8, %39, %11
  ret void
}

declare dso_local i32 @set_mnt_shared(%struct.vfsmount*) #1

declare dso_local i32 @do_make_slave(%struct.vfsmount*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
