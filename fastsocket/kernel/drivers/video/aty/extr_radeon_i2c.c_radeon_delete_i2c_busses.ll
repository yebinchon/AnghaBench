; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_i2c.c_radeon_delete_i2c_busses.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/aty/extr_radeon_i2c.c_radeon_delete_i2c_busses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_delete_i2c_busses(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %3 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %4 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %12 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @i2c_del_adapter(i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %19 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %24 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %32 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = call i32 @i2c_del_adapter(i32* %35)
  br label %37

37:                                               ; preds = %30, %17
  %38 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %39 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  %43 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %44 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %37
  %51 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %52 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = call i32 @i2c_del_adapter(i32* %55)
  br label %57

57:                                               ; preds = %50, %37
  %58 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %59 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32* null, i32** %62, align 8
  %63 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %64 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %57
  %71 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %72 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 3
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = call i32 @i2c_del_adapter(i32* %75)
  br label %77

77:                                               ; preds = %70, %57
  %78 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %79 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  ret void
}

declare dso_local i32 @i2c_del_adapter(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
