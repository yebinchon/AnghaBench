; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_set_link_af.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_inet6_set_link_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.inet6_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IFLA_INET6_MAX = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@IFLA_INET6_TOKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr*)* @inet6_set_link_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet6_set_link_af(%struct.net_device* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inet6_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.inet6_dev* @__in6_dev_get(%struct.net_device* %13)
  store %struct.inet6_dev* %14, %struct.inet6_dev** %7, align 8
  %15 = load i32, i32* @IFLA_INET6_MAX, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca %struct.nlattr*, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %21 = icmp ne %struct.inet6_dev* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EAFNOSUPPORT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load i32, i32* @IFLA_INET6_MAX, align 4
  %27 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %28 = call i64 @nla_parse_nested(%struct.nlattr** %19, i32 %26, %struct.nlattr* %27, i32* null)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @BUG()
  br label %32

32:                                               ; preds = %30, %25
  %33 = load i64, i64* @IFLA_INET6_TOKEN, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.inet6_dev*, %struct.inet6_dev** %7, align 8
  %39 = load i64, i64* @IFLA_INET6_TOKEN, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i32 @nla_data(%struct.nlattr* %41)
  %43 = call i32 @inet6_set_iftoken(%struct.inet6_dev* %38, i32 %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %44, %22
  %47 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.inet6_dev* @__in6_dev_get(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @inet6_set_iftoken(%struct.inet6_dev*, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
