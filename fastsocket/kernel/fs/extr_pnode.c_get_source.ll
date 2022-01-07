; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_get_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pnode.c_get_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { %struct.vfsmount* }

@CL_PROPAGATION = common dso_local global i32 0, align 4
@CL_MAKE_SHARED = common dso_local global i32 0, align 4
@CL_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vfsmount* (%struct.vfsmount*, %struct.vfsmount*, %struct.vfsmount*, i32*)* @get_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vfsmount* @get_source(%struct.vfsmount* %0, %struct.vfsmount* %1, %struct.vfsmount* %2, i32* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.vfsmount*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca %struct.vfsmount*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* %2, %struct.vfsmount** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.vfsmount* null, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* null, %struct.vfsmount** %11, align 8
  %12 = load i32, i32* @CL_PROPAGATION, align 4
  %13 = load i32*, i32** %9, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %15 = call i64 @IS_MNT_SHARED(%struct.vfsmount* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* @CL_MAKE_SHARED, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %18
  store i32 %21, i32* %19, align 4
  br label %22

22:                                               ; preds = %17, %4
  br label %23

23:                                               ; preds = %29, %22
  %24 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %25 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %26 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %25, i32 0, i32 0
  %27 = load %struct.vfsmount*, %struct.vfsmount** %26, align 8
  %28 = icmp ne %struct.vfsmount* %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  store %struct.vfsmount* %30, %struct.vfsmount** %11, align 8
  %31 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  store %struct.vfsmount* %31, %struct.vfsmount** %10, align 8
  %32 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %33 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %32, i32 0, i32 0
  %34 = load %struct.vfsmount*, %struct.vfsmount** %33, align 8
  store %struct.vfsmount* %34, %struct.vfsmount** %7, align 8
  %35 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  %36 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %35, i32 0, i32 0
  %37 = load %struct.vfsmount*, %struct.vfsmount** %36, align 8
  store %struct.vfsmount* %37, %struct.vfsmount** %8, align 8
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %40 = icmp ne %struct.vfsmount* %39, null
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %45, %41
  %43 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %44 = call %struct.vfsmount* @next_peer(%struct.vfsmount* %43)
  store %struct.vfsmount* %44, %struct.vfsmount** %11, align 8
  br label %45

45:                                               ; preds = %42
  %46 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %47 = call i64 @IS_MNT_NEW(%struct.vfsmount* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %42, label %49

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %38
  %51 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %52 = load %struct.vfsmount*, %struct.vfsmount** %11, align 8
  %53 = icmp ne %struct.vfsmount* %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* @CL_SLAVE, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load %struct.vfsmount*, %struct.vfsmount** %8, align 8
  store %struct.vfsmount* %59, %struct.vfsmount** %5, align 8
  br label %62

60:                                               ; preds = %50
  %61 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  store %struct.vfsmount* %61, %struct.vfsmount** %5, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  ret %struct.vfsmount* %63
}

declare dso_local i64 @IS_MNT_SHARED(%struct.vfsmount*) #1

declare dso_local %struct.vfsmount* @next_peer(%struct.vfsmount*) #1

declare dso_local i64 @IS_MNT_NEW(%struct.vfsmount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
