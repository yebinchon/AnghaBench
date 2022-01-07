; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_delete_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfb_i2c.c_intelfb_delete_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }

@MAX_OUTPUTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intelfb_delete_i2c_busses(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %67, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAX_OUTPUTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %70

8:                                                ; preds = %4
  %9 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %10 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %8
  %20 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %21 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = call i32 @i2c_del_adapter(i32* %27)
  %29 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %30 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %19, %8
  %38 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %39 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %37
  %49 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %50 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = call i32 @i2c_del_adapter(i32* %56)
  %58 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %59 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  store i32* null, i32** %65, align 8
  br label %66

66:                                               ; preds = %48, %37
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %4

70:                                               ; preds = %4
  ret void
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
