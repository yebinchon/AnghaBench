; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i8*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulatory_hint(%struct.wiphy* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = icmp ne %struct.wiphy* %10, null
  %12 = xor i1 %11, true
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @WARN_ON(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %13
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.regulatory_request* @kzalloc(i32 16, i32 %22)
  store %struct.regulatory_request* %23, %struct.regulatory_request** %6, align 8
  %24 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %25 = icmp ne %struct.regulatory_request* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %21
  %30 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %31 = call i32 @get_wiphy_idx(%struct.wiphy* %30)
  %32 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %33 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %38 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  store i8 %36, i8* %40, align 1
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %45 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 %43, i8* %47, align 1
  %48 = load i32, i32* @NL80211_REGDOM_SET_BY_DRIVER, align 4
  %49 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %50 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %52 = call i32 @queue_regulatory_request(%struct.regulatory_request* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %29, %26, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.regulatory_request* @kzalloc(i32, i32) #1

declare dso_local i32 @get_wiphy_idx(%struct.wiphy*) #1

declare dso_local i32 @queue_regulatory_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
