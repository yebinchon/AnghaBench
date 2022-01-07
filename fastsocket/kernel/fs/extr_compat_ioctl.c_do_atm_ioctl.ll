; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat_ioctl.c_do_atm_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_compat_ioctl.c_do_atm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@NR_ATM_IOCTL = common dso_local global i32 0, align 4
@atm_ioctl_map = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @do_atm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_atm_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %16 [
    i32 131, label %11
    i32 130, label %11
    i32 134, label %11
    i32 129, label %11
    i32 135, label %11
    i32 128, label %11
    i32 133, label %11
    i32 132, label %11
  ]

11:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @do_atmif_sioc(i32 %12, i32 %13, i64 %14)
  store i32 %15, i32* %4, align 4
  br label %63

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NR_ATM_IOCTL, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atm_ioctl_map, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %22, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atm_ioctl_map, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  br label %41

37:                                               ; preds = %21
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %17

41:                                               ; preds = %30, %17
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @NR_ATM_IOCTL, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %63

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  switch i32 %49, label %60 [
    i32 145, label %50
    i32 147, label %55
    i32 142, label %55
    i32 148, label %55
    i32 150, label %55
    i32 140, label %55
    i32 152, label %55
    i32 151, label %55
    i32 149, label %55
    i32 139, label %55
    i32 138, label %55
    i32 137, label %55
    i32 144, label %55
    i32 143, label %55
    i32 146, label %55
    i32 136, label %55
    i32 141, label %55
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @do_atm_iobuf(i32 %51, i32 %52, i64 %53)
  store i32 %54, i32* %4, align 4
  br label %63

55:                                               ; preds = %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48, %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @do_atmif_sioc(i32 %56, i32 %57, i64 %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %48
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %55, %50, %45, %11
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @do_atmif_sioc(i32, i32, i64) #1

declare dso_local i32 @do_atm_iobuf(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
