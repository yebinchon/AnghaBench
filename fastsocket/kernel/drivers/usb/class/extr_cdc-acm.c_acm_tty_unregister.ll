; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/class/extr_cdc-acm.c_acm_tty_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32, i64, %struct.acm*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@acm_tty_driver = common dso_local global i32 0, align 4
@acm_table = common dso_local global i32** null, align 8
@ACM_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acm*)* @acm_tty_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acm_tty_unregister(%struct.acm* %0) #0 {
  %2 = alloca %struct.acm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.acm* %0, %struct.acm** %2, align 8
  %5 = load %struct.acm*, %struct.acm** %2, align 8
  %6 = getelementptr inbounds %struct.acm, %struct.acm* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @acm_tty_driver, align 4
  %9 = load %struct.acm*, %struct.acm** %2, align 8
  %10 = getelementptr inbounds %struct.acm, %struct.acm* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @tty_unregister_device(i32 %8, i64 %11)
  %13 = load %struct.acm*, %struct.acm** %2, align 8
  %14 = getelementptr inbounds %struct.acm, %struct.acm* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_put_intf(i32 %15)
  %17 = load i32**, i32*** @acm_table, align 8
  %18 = load %struct.acm*, %struct.acm** %2, align 8
  %19 = getelementptr inbounds %struct.acm, %struct.acm* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  store i32* null, i32** %21, align 8
  %22 = load %struct.acm*, %struct.acm** %2, align 8
  %23 = getelementptr inbounds %struct.acm, %struct.acm* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @usb_free_urb(i32 %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %40, %1
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @ACM_NW, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.acm*, %struct.acm** %2, align 8
  %32 = getelementptr inbounds %struct.acm, %struct.acm* %31, i32 0, i32 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_free_urb(i32 %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %3, align 4
  br label %26

43:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.acm*, %struct.acm** %2, align 8
  %50 = getelementptr inbounds %struct.acm, %struct.acm* %49, i32 0, i32 3
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @usb_free_urb(i32 %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %44

61:                                               ; preds = %44
  %62 = load %struct.acm*, %struct.acm** %2, align 8
  %63 = getelementptr inbounds %struct.acm, %struct.acm* %62, i32 0, i32 2
  %64 = load %struct.acm*, %struct.acm** %63, align 8
  %65 = call i32 @kfree(%struct.acm* %64)
  %66 = load %struct.acm*, %struct.acm** %2, align 8
  %67 = call i32 @kfree(%struct.acm* %66)
  ret void
}

declare dso_local i32 @tty_unregister_device(i32, i64) #1

declare dso_local i32 @usb_put_intf(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(%struct.acm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
