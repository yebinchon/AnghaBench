; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_two_same.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_neon_two_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@inst = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @neon_two_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neon_two_same(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @LOW4(i32 %10)
  %12 = shl i32 %11, 12
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %14 = or i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HI1(i32 %18)
  %20 = shl i32 %19, 22
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %22 = or i32 %21, %20
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @LOW4(i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %29 = or i32 %28, %27
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 1), align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @HI1(i32 %33)
  %35 = shl i32 %34, 5
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %37 = or i32 %36, %35
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = shl i32 %40, 6
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = shl i32 %46, 24
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %49 = or i32 %48, %47
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %58

52:                                               ; preds = %3
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @neon_logbits(i32 %53)
  %55 = shl i32 %54, 18
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %57 = or i32 %56, %55
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %52, %3
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  %60 = call i32 @neon_dp_fixup(i32 %59)
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @inst, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @LOW4(i32) #1

declare dso_local i32 @HI1(i32) #1

declare dso_local i32 @neon_logbits(i32) #1

declare dso_local i32 @neon_dp_fixup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
