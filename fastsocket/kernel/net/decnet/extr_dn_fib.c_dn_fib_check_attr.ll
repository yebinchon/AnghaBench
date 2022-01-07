; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_fib.c_dn_fib_check_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/decnet/extr_dn_fib.c_dn_fib_check_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtmsg = type { i32 }
%struct.rtattr = type { i32 }

@RTA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTA_MULTIPATH = common dso_local global i32 0, align 4
@RTA_METRICS = common dso_local global i32 0, align 4
@RTA_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtmsg*, %struct.rtattr**)* @dn_fib_check_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dn_fib_check_attr(%struct.rtmsg* %0, %struct.rtattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtmsg*, align 8
  %5 = alloca %struct.rtattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtattr*, align 8
  store %struct.rtmsg* %0, %struct.rtmsg** %4, align 8
  store %struct.rtattr** %1, %struct.rtattr*** %5, align 8
  store i32 1, i32* %6, align 4
  br label %8

8:                                                ; preds = %55, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RTA_MAX, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %58

12:                                               ; preds = %8
  %13 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %13, i64 %16
  %18 = load %struct.rtattr*, %struct.rtattr** %17, align 8
  store %struct.rtattr* %18, %struct.rtattr** %7, align 8
  %19 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %20 = icmp ne %struct.rtattr* %19, null
  br i1 %20, label %21, label %54

21:                                               ; preds = %12
  %22 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %23 = call i32 @RTA_PAYLOAD(%struct.rtattr* %22)
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %27 = call i32 @RTA_PAYLOAD(%struct.rtattr* %26)
  %28 = icmp ne i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %25, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RTA_MULTIPATH, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @RTA_METRICS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @RTA_TABLE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.rtattr*, %struct.rtattr** %7, align 8
  %46 = call i64 @RTA_DATA(%struct.rtattr* %45)
  %47 = inttoptr i64 %46 to %struct.rtattr*
  %48 = load %struct.rtattr**, %struct.rtattr*** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.rtattr*, %struct.rtattr** %48, i64 %51
  store %struct.rtattr* %47, %struct.rtattr** %52, align 8
  br label %53

53:                                               ; preds = %44, %40, %36, %32
  br label %54

54:                                               ; preds = %53, %12
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %8

58:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @RTA_PAYLOAD(%struct.rtattr*) #1

declare dso_local i64 @RTA_DATA(%struct.rtattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
