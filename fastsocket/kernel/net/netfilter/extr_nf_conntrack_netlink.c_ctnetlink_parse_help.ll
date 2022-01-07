; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@CTA_HELP_MAX = common dso_local global i32 0, align 4
@CTA_HELP_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i8**)* @ctnetlink_parse_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_help(%struct.nlattr* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @CTA_HELP_MAX, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca %struct.nlattr*, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* @CTA_HELP_MAX, align 4
  %15 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %16 = call i32 @nla_parse_nested(%struct.nlattr** %13, i32 %14, %struct.nlattr* %15, i32* null)
  %17 = load i64, i64* @CTA_HELP_NAME, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %30

24:                                               ; preds = %2
  %25 = load i64, i64* @CTA_HELP_NAME, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %13, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = call i8* @nla_data(%struct.nlattr* %27)
  %29 = load i8**, i8*** %5, align 8
  store i8* %28, i8** %29, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i8* @nla_data(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
