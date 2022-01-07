; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_get_ext_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_rtnetlink.c_get_ext_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@IFLA_EXT_MASK = common dso_local global i64 0, align 8
@IFLA_AF_SPEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**)* @get_ext_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ext_mask(%struct.nlattr** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %4 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %5 = load i64, i64* @IFLA_EXT_MASK, align 8
  %6 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %4, i64 %5
  %7 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %8 = icmp ne %struct.nlattr* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %11 = load i64, i64* @IFLA_EXT_MASK, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = call i32 @nla_get_u32(%struct.nlattr* %13)
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %17 = load i64, i64* @IFLA_AF_SPEC, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %23 = load i64, i64* @IFLA_AF_SPEC, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = call i32 @nla_len(%struct.nlattr* %25)
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %30 = load i64, i64* @IFLA_AF_SPEC, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_u32(%struct.nlattr* %32)
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %21, %15
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %28, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
