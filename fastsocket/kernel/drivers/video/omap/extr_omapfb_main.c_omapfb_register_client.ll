; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_register_client.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_omapfb_main.c_omapfb_register_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omapfb_notifier_block*)* }
%struct.omapfb_notifier_block = type { i64, %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { i32 (%struct.notifier_block*, i64, i8*)* }
%struct.notifier_block = type opaque
%struct.notifier_block.0 = type opaque

@OMAPFB_PLANE_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@notifier_inited = common dso_local global i32 0, align 4
@omapfb_client_list = common dso_local global i32* null, align 8
@omapfb_dev = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_register_client(%struct.omapfb_notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omapfb_notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.omapfb_notifier_block* %0, %struct.omapfb_notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.omapfb_notifier_block*, %struct.omapfb_notifier_block** %5, align 8
  %10 = getelementptr inbounds %struct.omapfb_notifier_block, %struct.omapfb_notifier_block* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @OMAPFB_PLANE_NUM, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %69

18:                                               ; preds = %3
  %19 = load i32, i32* @notifier_inited, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @omapfb_init_notifier()
  store i32 1, i32* @notifier_inited, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i64, i64* %6, align 8
  %25 = inttoptr i64 %24 to i32 (%struct.notifier_block.0*, i64, i8*)*
  %26 = bitcast i32 (%struct.notifier_block.0*, i64, i8*)* %25 to i32 (%struct.notifier_block*, i64, i8*)*
  %27 = load %struct.omapfb_notifier_block*, %struct.omapfb_notifier_block** %5, align 8
  %28 = getelementptr inbounds %struct.omapfb_notifier_block, %struct.omapfb_notifier_block* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 (%struct.notifier_block*, i64, i8*)* %26, i32 (%struct.notifier_block*, i64, i8*)** %29, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.omapfb_notifier_block*, %struct.omapfb_notifier_block** %5, align 8
  %32 = getelementptr inbounds %struct.omapfb_notifier_block, %struct.omapfb_notifier_block* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** @omapfb_client_list, align 8
  %34 = load %struct.omapfb_notifier_block*, %struct.omapfb_notifier_block** %5, align 8
  %35 = getelementptr inbounds %struct.omapfb_notifier_block, %struct.omapfb_notifier_block* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load %struct.omapfb_notifier_block*, %struct.omapfb_notifier_block** %5, align 8
  %39 = getelementptr inbounds %struct.omapfb_notifier_block, %struct.omapfb_notifier_block* %38, i32 0, i32 1
  %40 = call i32 @blocking_notifier_chain_register(i32* %37, %struct.TYPE_6__* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %69

45:                                               ; preds = %23
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @omapfb_dev, align 8
  %47 = icmp ne %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @omapfb_dev, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @omapfb_dev, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.omapfb_notifier_block*)*, i32 (%struct.omapfb_notifier_block*)** %57, align 8
  %59 = icmp ne i32 (%struct.omapfb_notifier_block*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** @omapfb_dev, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32 (%struct.omapfb_notifier_block*)*, i32 (%struct.omapfb_notifier_block*)** %64, align 8
  %66 = load %struct.omapfb_notifier_block*, %struct.omapfb_notifier_block** %5, align 8
  %67 = call i32 %65(%struct.omapfb_notifier_block* %66)
  br label %68

68:                                               ; preds = %60, %53, %48, %45
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %43, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @omapfb_init_notifier(...) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
