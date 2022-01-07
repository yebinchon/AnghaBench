; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_iface.c_ax25_listen_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ax25/extr_ax25_iface.c_ax25_listen_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.listen_struct = type { %struct.listen_struct*, %struct.net_device*, i32 }
%struct.net_device = type { i32 }

@listen_lock = common dso_local global i32 0, align 4
@listen_list = common dso_local global %struct.listen_struct* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_listen_release(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.listen_struct*, align 8
  %6 = alloca %struct.listen_struct*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = call i32 @spin_lock_bh(i32* @listen_lock)
  %8 = load %struct.listen_struct*, %struct.listen_struct** @listen_list, align 8
  store %struct.listen_struct* %8, %struct.listen_struct** %6, align 8
  %9 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %10 = icmp eq %struct.listen_struct* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @spin_unlock_bh(i32* @listen_lock)
  br label %79

13:                                               ; preds = %2
  %14 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %15 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %14, i32 0, i32 2
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @ax25cmp(i32* %15, i32* %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %21 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %20, i32 0, i32 1
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = icmp eq %struct.net_device* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %27 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %26, i32 0, i32 0
  %28 = load %struct.listen_struct*, %struct.listen_struct** %27, align 8
  store %struct.listen_struct* %28, %struct.listen_struct** @listen_list, align 8
  %29 = call i32 @spin_unlock_bh(i32* @listen_lock)
  %30 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %31 = call i32 @kfree(%struct.listen_struct* %30)
  br label %79

32:                                               ; preds = %19, %13
  br label %33

33:                                               ; preds = %73, %32
  %34 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %35 = icmp ne %struct.listen_struct* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %38 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %37, i32 0, i32 0
  %39 = load %struct.listen_struct*, %struct.listen_struct** %38, align 8
  %40 = icmp ne %struct.listen_struct* %39, null
  br label %41

41:                                               ; preds = %36, %33
  %42 = phi i1 [ false, %33 ], [ %40, %36 ]
  br i1 %42, label %43, label %77

43:                                               ; preds = %41
  %44 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %45 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %44, i32 0, i32 0
  %46 = load %struct.listen_struct*, %struct.listen_struct** %45, align 8
  %47 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %46, i32 0, i32 2
  %48 = load i32*, i32** %3, align 8
  %49 = call i64 @ax25cmp(i32* %47, i32* %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %43
  %52 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %53 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %52, i32 0, i32 0
  %54 = load %struct.listen_struct*, %struct.listen_struct** %53, align 8
  %55 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %54, i32 0, i32 1
  %56 = load %struct.net_device*, %struct.net_device** %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = icmp eq %struct.net_device* %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %51
  %60 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %61 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %60, i32 0, i32 0
  %62 = load %struct.listen_struct*, %struct.listen_struct** %61, align 8
  store %struct.listen_struct* %62, %struct.listen_struct** %5, align 8
  %63 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %64 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %63, i32 0, i32 0
  %65 = load %struct.listen_struct*, %struct.listen_struct** %64, align 8
  %66 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %65, i32 0, i32 0
  %67 = load %struct.listen_struct*, %struct.listen_struct** %66, align 8
  %68 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %69 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %68, i32 0, i32 0
  store %struct.listen_struct* %67, %struct.listen_struct** %69, align 8
  %70 = call i32 @spin_unlock_bh(i32* @listen_lock)
  %71 = load %struct.listen_struct*, %struct.listen_struct** %5, align 8
  %72 = call i32 @kfree(%struct.listen_struct* %71)
  br label %79

73:                                               ; preds = %51, %43
  %74 = load %struct.listen_struct*, %struct.listen_struct** %6, align 8
  %75 = getelementptr inbounds %struct.listen_struct, %struct.listen_struct* %74, i32 0, i32 0
  %76 = load %struct.listen_struct*, %struct.listen_struct** %75, align 8
  store %struct.listen_struct* %76, %struct.listen_struct** %6, align 8
  br label %33

77:                                               ; preds = %41
  %78 = call i32 @spin_unlock_bh(i32* @listen_lock)
  br label %79

79:                                               ; preds = %77, %59, %25, %11
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @ax25cmp(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.listen_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
