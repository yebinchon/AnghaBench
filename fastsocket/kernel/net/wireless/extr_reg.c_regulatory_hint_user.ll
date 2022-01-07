; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_regulatory_hint_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulatory_request = type { i8*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WIPHY_IDX_INVALID = common dso_local global i32 0, align 4
@NL80211_REGDOM_SET_BY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulatory_hint_user(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulatory_request*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %50

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.regulatory_request* @kzalloc(i32 24, i32 %17)
  store %struct.regulatory_request* %18, %struct.regulatory_request** %6, align 8
  %19 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %20 = icmp ne %struct.regulatory_request* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load i32, i32* @WIPHY_IDX_INVALID, align 4
  %26 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %27 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 0
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %32 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  store i8 %30, i8* %34, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %37, i8* %41, align 1
  %42 = load i32, i32* @NL80211_REGDOM_SET_BY_USER, align 4
  %43 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %44 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %47 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.regulatory_request*, %struct.regulatory_request** %6, align 8
  %49 = call i32 @queue_regulatory_request(%struct.regulatory_request* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %24, %21, %13
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.regulatory_request* @kzalloc(i32, i32) #1

declare dso_local i32 @queue_regulatory_request(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
