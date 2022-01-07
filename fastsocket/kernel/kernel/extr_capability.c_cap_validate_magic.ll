; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_capability.c_cap_validate_magic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_capability.c_cap_validate_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@_LINUX_CAPABILITY_U32S_1 = common dso_local global i32 0, align 4
@_LINUX_CAPABILITY_U32S_3 = common dso_local global i32 0, align 4
@_KERNEL_CAPABILITY_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @cap_validate_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cap_validate_magic(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = call i64 @get_user(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EFAULT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %26 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %23
  ]

17:                                               ; preds = %15
  %18 = call i32 (...) @warn_legacy_capability_use()
  %19 = load i32, i32* @_LINUX_CAPABILITY_U32S_1, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %38

21:                                               ; preds = %15
  %22 = call i32 (...) @warn_deprecated_v2()
  br label %23

23:                                               ; preds = %15, %21
  %24 = load i32, i32* @_LINUX_CAPABILITY_U32S_3, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %38

26:                                               ; preds = %15
  %27 = load i32, i32* @_KERNEL_CAPABILITY_VERSION, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @put_user(i32 %27, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EFAULT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %39

38:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %35, %32, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @get_user(i32, i32*) #1

declare dso_local i32 @warn_legacy_capability_use(...) #1

declare dso_local i32 @warn_deprecated_v2(...) #1

declare dso_local i32 @put_user(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
