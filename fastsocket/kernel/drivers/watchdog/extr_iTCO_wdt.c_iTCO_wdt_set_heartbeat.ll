; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_set_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_iTCO_wdt.c_iTCO_wdt_set_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@iTCO_wdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCOv2_TMR = common dso_local global i32 0, align 4
@TCOv1_TMR = common dso_local global i32 0, align 4
@heartbeat = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iTCO_wdt_set_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iTCO_wdt_set_heartbeat(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @seconds_to_ticks(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  %13 = udiv i32 %12, 2
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %6, align 4
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %98

20:                                               ; preds = %14
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 1023
  br i1 %25, label %32, label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = icmp ugt i32 %30, 63
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %98

35:                                               ; preds = %29, %26
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @iTCO_vendor_pre_set_heartbeat(i32 %36)
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %42 = load i32, i32* @TCOv2_TMR, align 4
  %43 = call i32 @inw(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 64512
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TCOv2_TMR, align 4
  %51 = call i32 @outw(i32 %49, i32 %50)
  %52 = load i32, i32* @TCOv2_TMR, align 4
  %53 = call i32 @inw(i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %55 = load i32, i32* %4, align 4
  %56 = and i32 %55, 1023
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %40
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %98

62:                                               ; preds = %40
  br label %96

63:                                               ; preds = %35
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 0), align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %95

66:                                               ; preds = %63
  %67 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %68 = load i32, i32* @TCOv1_TMR, align 4
  %69 = call zeroext i8 @inb(i32 %68)
  store i8 %69, i8* %5, align 1
  %70 = load i8, i8* %5, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 %71, 192
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %5, align 1
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, 255
  %76 = load i8, i8* %5, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %5, align 1
  %80 = load i8, i8* %5, align 1
  %81 = load i32, i32* @TCOv1_TMR, align 4
  %82 = call i32 @outb(i8 zeroext %80, i32 %81)
  %83 = load i32, i32* @TCOv1_TMR, align 4
  %84 = call zeroext i8 @inb(i32 %83)
  store i8 %84, i8* %5, align 1
  %85 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iTCO_wdt_private, i32 0, i32 1))
  %86 = load i8, i8* %5, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 63
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %66
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %66
  br label %95

95:                                               ; preds = %94, %63
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i32, i32* %3, align 4
  store i32 %97, i32* @heartbeat, align 4
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %91, %59, %32, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @seconds_to_ticks(i32) #1

declare dso_local i32 @iTCO_vendor_pre_set_heartbeat(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local zeroext i8 @inb(i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
