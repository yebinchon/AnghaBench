; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32* }
%struct.nlattr = type { i32 }

@IP_SET_LIST_DEFAULT_SIZE = common dso_local global i64 0, align 8
@IPSET_ATTR_SIZE = common dso_local global i64 0, align 8
@IPSET_ATTR_TIMEOUT = common dso_local global i64 0, align 8
@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@IP_SET_LIST_MIN_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IPSET_NO_TIMEOUT = common dso_local global i32 0, align 4
@list_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_set*, %struct.nlattr**, i64)* @list_set_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_set_create(%struct.ip_set* %0, %struct.nlattr** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_set*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ip_set* %0, %struct.ip_set** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* @IP_SET_LIST_DEFAULT_SIZE, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %11 = load i64, i64* @IPSET_ATTR_SIZE, align 8
  %12 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %16 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %17 = call i32 @ip_set_optattr_netorder(%struct.nlattr** %15, i64 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi i1 [ true, %3 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %81

28:                                               ; preds = %20
  %29 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %30 = load i64, i64* @IPSET_ATTR_SIZE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %36 = load i64, i64* @IPSET_ATTR_SIZE, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call i64 @ip_set_get_h32(%struct.nlattr* %38)
  store i64 %39, i64* %8, align 8
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @IP_SET_LIST_MIN_SIZE, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @IP_SET_LIST_MIN_SIZE, align 8
  store i64 %45, i64* %8, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %48 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %52, label %68

52:                                               ; preds = %46
  %53 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %56 = load i64, i64* @IPSET_ATTR_TIMEOUT, align 8
  %57 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %55, i64 %56
  %58 = load %struct.nlattr*, %struct.nlattr** %57, align 8
  %59 = call i32 @ip_set_timeout_uget(%struct.nlattr* %58)
  %60 = call i32 @init_list_set(%struct.ip_set* %53, i64 %54, i32 4, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %81

65:                                               ; preds = %52
  %66 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %67 = call i32 @list_set_gc_init(%struct.ip_set* %66)
  br label %78

68:                                               ; preds = %46
  %69 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @IPSET_NO_TIMEOUT, align 4
  %72 = call i32 @init_list_set(%struct.ip_set* %69, i64 %70, i32 4, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %81

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %65
  %79 = load %struct.ip_set*, %struct.ip_set** %5, align 8
  %80 = getelementptr inbounds %struct.ip_set, %struct.ip_set* %79, i32 0, i32 0
  store i32* @list_set, i32** %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %74, %62, %25
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ip_set_optattr_netorder(%struct.nlattr**, i64) #1

declare dso_local i64 @ip_set_get_h32(%struct.nlattr*) #1

declare dso_local i32 @init_list_set(%struct.ip_set*, i64, i32, i32) #1

declare dso_local i32 @ip_set_timeout_uget(%struct.nlattr*) #1

declare dso_local i32 @list_set_gc_init(%struct.ip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
