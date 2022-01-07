; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_shutdown_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_shutdown_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.socket*, %struct.file* }
%struct.socket = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32)* }
%struct.TYPE_4__ = type { i64 }

@TCP_LISTEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsocket_shutdown_listen(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.socket*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %11, %struct.socket** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCP_LISTEN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %2
  %20 = load %struct.file*, %struct.file** %3, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 1
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %7, align 8
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %26, align 8
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 %27(%struct.socket* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %19
  %34 = load %struct.file*, %struct.file** %7, align 8
  %35 = icmp ne %struct.file* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load %struct.file*, %struct.file** %7, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load %struct.socket*, %struct.socket** %38, align 8
  %40 = icmp ne %struct.socket* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.file*, %struct.file** %7, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  %44 = load %struct.socket*, %struct.socket** %43, align 8
  store %struct.socket* %44, %struct.socket** %8, align 8
  %45 = load %struct.socket*, %struct.socket** %8, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %48, align 8
  %50 = load %struct.socket*, %struct.socket** %8, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 %49(%struct.socket* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %41, %36, %33, %19
  br label %63

54:                                               ; preds = %2
  %55 = load %struct.socket*, %struct.socket** %5, align 8
  %56 = getelementptr inbounds %struct.socket, %struct.socket* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %58, align 8
  %60 = load %struct.socket*, %struct.socket** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 %59(%struct.socket* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %54, %53
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
