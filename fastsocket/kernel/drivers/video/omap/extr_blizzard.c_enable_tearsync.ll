; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_enable_tearsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_enable_tearsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@BLIZZARD_NDISP_CTRL_STATUS = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32)* @enable_tearsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_tearsync(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @BLIZZARD_NDISP_CTRL_STATUS, align 4
  %15 = call i32 @blizzard_read_reg(i32 %14)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = or i32 %16, 8
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* @BLIZZARD_NDISP_CTRL_STATUS, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i32 @blizzard_write_reg(i32 %18, i32 %19)
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 3), align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %6
  %27 = phi i1 [ true, %6 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @likely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = call i32 %34(i32 1, i32 0)
  br label %73

36:                                               ; preds = %26
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = call i32 %45(i32 1, i32 0)
  br label %73

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %50 = mul nsw i32 %48, %49
  %51 = sdiv i32 %50, 1000
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 4
  %58 = sdiv i32 %57, 1000
  %59 = mul nsw i32 %56, %58
  %60 = icmp slt i32 %53, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 8
  %65 = call i32 %64(i32 1, i32 0)
  br label %73

66:                                               ; preds = %47
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 2), align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32 (i32, i32)*, i32 (i32, i32)** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 %69(i32 1, i32 %71)
  br label %73

73:                                               ; preds = %66, %61, %42, %31
  ret void
}

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i32 @blizzard_write_reg(i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
