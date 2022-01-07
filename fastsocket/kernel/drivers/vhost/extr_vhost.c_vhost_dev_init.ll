; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32, %struct.vhost_virtqueue*, i32*, i32, i32, i32*, i32*, i32*, i32*, i32 }
%struct.vhost_virtqueue = type { i64, i32, i32, %struct.vhost_dev*, i32*, i32*, i32*, i32* }

@POLLIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vhost_dev_init(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %9 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %10 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %9, i32 0, i32 1
  store %struct.vhost_virtqueue* %8, %struct.vhost_virtqueue** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %13 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %15 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %14, i32 0, i32 9
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %18 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %17, i32 0, i32 8
  store i32* null, i32** %18, align 8
  %19 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %20 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %19, i32 0, i32 7
  store i32* null, i32** %20, align 8
  %21 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %21, i32 0, i32 6
  store i32* null, i32** %22, align 8
  %23 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %24 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %23, i32 0, i32 5
  store i32* null, i32** %24, align 8
  %25 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %26 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %25, i32 0, i32 4
  %27 = call i32 @spin_lock_init(i32* %26)
  %28 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %29 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %28, i32 0, i32 3
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %121, %3
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %36 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %124

39:                                               ; preds = %33
  %40 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %41 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %40, i32 0, i32 1
  %42 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %42, i64 %44
  %46 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %45, i32 0, i32 7
  store i32* null, i32** %46, align 8
  %47 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %48 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %47, i32 0, i32 1
  %49 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %49, i64 %51
  %53 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %52, i32 0, i32 6
  store i32* null, i32** %53, align 8
  %54 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %55 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %54, i32 0, i32 1
  %56 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %56, i64 %58
  %60 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %59, i32 0, i32 5
  store i32* null, i32** %60, align 8
  %61 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %62 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %61, i32 0, i32 1
  %63 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %63, i64 %65
  %67 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %66, i32 0, i32 4
  store i32* null, i32** %67, align 8
  %68 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %69 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %70 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %69, i32 0, i32 1
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %71, i64 %73
  %75 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %74, i32 0, i32 3
  store %struct.vhost_dev* %68, %struct.vhost_dev** %75, align 8
  %76 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %77 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %76, i32 0, i32 1
  %78 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %78, i64 %80
  %82 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %81, i32 0, i32 2
  %83 = call i32 @mutex_init(i32* %82)
  %84 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %85 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %86 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %85, i32 0, i32 1
  %87 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %87, i64 %89
  %91 = call i32 @vhost_vq_reset(%struct.vhost_dev* %84, %struct.vhost_virtqueue* %90)
  %92 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %93 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %92, i32 0, i32 1
  %94 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %94, i64 %96
  %98 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %39
  %102 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %103 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %102, i32 0, i32 1
  %104 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %104, i64 %106
  %108 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %107, i32 0, i32 1
  %109 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %110 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %109, i32 0, i32 1
  %111 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %111, i64 %113
  %115 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i32, i32* @POLLIN, align 4
  %118 = load %struct.vhost_dev*, %struct.vhost_dev** %4, align 8
  %119 = call i32 @vhost_poll_init(i32* %108, i64 %116, i32 %117, %struct.vhost_dev* %118)
  br label %120

120:                                              ; preds = %101, %39
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %33

124:                                              ; preds = %33
  ret i64 0
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vhost_vq_reset(%struct.vhost_dev*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_poll_init(i32*, i64, i32, %struct.vhost_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
