; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_murb_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_oxu210hp-hcd.c_oxu_murb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oxu_murb = type { i32 }
%struct.oxu_hcd = type { i32*, i32, %struct.oxu_murb* }

@MURB_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.oxu_murb* (%struct.oxu_hcd*)* @oxu_murb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.oxu_murb* @oxu_murb_alloc(%struct.oxu_hcd* %0) #0 {
  %2 = alloca %struct.oxu_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.oxu_murb*, align 8
  store %struct.oxu_hcd* %0, %struct.oxu_hcd** %2, align 8
  store %struct.oxu_murb* null, %struct.oxu_murb** %4, align 8
  %5 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %6 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %5, i32 0, i32 1
  %7 = call i32 @spin_lock(i32* %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @MURB_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %14 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %26

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %21, %8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MURB_NUM, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %32 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %31, i32 0, i32 2
  %33 = load %struct.oxu_murb*, %struct.oxu_murb** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.oxu_murb, %struct.oxu_murb* %33, i64 %35
  store %struct.oxu_murb* %36, %struct.oxu_murb** %4, align 8
  %37 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %38 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %30, %26
  %44 = load %struct.oxu_hcd*, %struct.oxu_hcd** %2, align 8
  %45 = getelementptr inbounds %struct.oxu_hcd, %struct.oxu_hcd* %44, i32 0, i32 1
  %46 = call i32 @spin_unlock(i32* %45)
  %47 = load %struct.oxu_murb*, %struct.oxu_murb** %4, align 8
  ret %struct.oxu_murb* %47
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
