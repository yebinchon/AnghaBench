; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_listen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64, %struct.file* }
%struct.socket = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.socket*, i32)* }

@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsocket_listen(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.socket*
  store %struct.socket* %13, %struct.socket** %5, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = icmp ne %struct.socket* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %20, align 8
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 %21(%struct.socket* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  br label %74

28:                                               ; preds = %16
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EBADF, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %74

32:                                               ; preds = %28
  %33 = load %struct.file*, %struct.file** %3, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load %struct.file*, %struct.file** %34, align 8
  store %struct.file* %35, %struct.file** %7, align 8
  %36 = load %struct.file*, %struct.file** %7, align 8
  %37 = icmp ne %struct.file* %36, null
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.socket*, %struct.socket** %5, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.file*, %struct.file** %3, align 8
  %45 = getelementptr inbounds %struct.file, %struct.file* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.socket*
  store %struct.socket* %47, %struct.socket** %6, align 8
  %48 = load %struct.socket*, %struct.socket** %6, align 8
  %49 = icmp ne %struct.socket* %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %38
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.socket*, i32)*, i32 (%struct.socket*, i32)** %54, align 8
  %56 = load %struct.socket*, %struct.socket** %6, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 %55(%struct.socket* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %68

62:                                               ; preds = %50
  br label %66

63:                                               ; preds = %38
  %64 = load i32, i32* @EBADF, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %8, align 4
  br label %68

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %32
  br label %74

68:                                               ; preds = %63, %61
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.socket*, %struct.socket** %5, align 8
  %71 = getelementptr inbounds %struct.socket, %struct.socket* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %67, %29, %27
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
