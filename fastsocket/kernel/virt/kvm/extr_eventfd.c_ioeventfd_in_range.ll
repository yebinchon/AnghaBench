; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_ioeventfd_in_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_eventfd.c_ioeventfd_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ioeventfd = type { i64, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._ioeventfd*, i64, i32, i8*)* @ioeventfd_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioeventfd_in_range(%struct._ioeventfd* %0, i64 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._ioeventfd*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct._ioeventfd* %0, %struct._ioeventfd** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %13 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %19 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %4
  store i32 0, i32* %5, align 4
  br label %64

23:                                               ; preds = %16
  %24 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %25 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %64

29:                                               ; preds = %23
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @IS_ALIGNED(i64 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %55 [
    i32 1, label %39
    i32 2, label %43
    i32 4, label %47
    i32 8, label %51
  ]

39:                                               ; preds = %29
  %40 = load i8*, i8** %9, align 8
  %41 = bitcast i8* %40 to i64*
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  br label %56

43:                                               ; preds = %29
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to i64*
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  br label %56

47:                                               ; preds = %29
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i64*
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %10, align 8
  br label %56

51:                                               ; preds = %29
  %52 = load i8*, i8** %9, align 8
  %53 = bitcast i8* %52 to i64*
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %10, align 8
  br label %56

55:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %64

56:                                               ; preds = %51, %47, %43, %39
  %57 = load i64, i64* %10, align 8
  %58 = load %struct._ioeventfd*, %struct._ioeventfd** %6, align 8
  %59 = getelementptr inbounds %struct._ioeventfd, %struct._ioeventfd* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %56, %55, %28, %22
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
