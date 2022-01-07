; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_get_valid_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_get_valid_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, i8*, i32)* @dev_get_valid_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_get_valid_name(%struct.net* %0, %struct.net_device* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.net*, %struct.net** %6, align 8
  %11 = icmp ne %struct.net* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @dev_valid_name(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 37)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.net*, %struct.net** %6, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @dev_alloc_name_ns(%struct.net* %29, %struct.net_device* %30, i8* %31)
  store i32 %32, i32* %5, align 4
  br label %57

33:                                               ; preds = %24, %21
  %34 = load %struct.net*, %struct.net** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i64 @__dev_get_by_name(%struct.net* %34, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EEXIST, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %57

41:                                               ; preds = %33
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* @IFNAMSIZ, align 4
  %53 = call i32 @strlcpy(i8* %50, i8* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %41
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %38, %28, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dev_valid_name(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @dev_alloc_name_ns(%struct.net*, %struct.net_device*, i8*) #1

declare dso_local i64 @__dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
