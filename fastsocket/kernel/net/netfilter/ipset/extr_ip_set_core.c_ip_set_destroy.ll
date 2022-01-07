; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipset/extr_ip_set_core.c_ip_set_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }

@IPSET_ERR_PROTOCOL = common dso_local global i32 0, align 4
@ip_set_ref_lock = common dso_local global i32 0, align 4
@IPSET_ATTR_SETNAME = common dso_local global i64 0, align 8
@ip_set_max = common dso_local global i64 0, align 8
@ip_set_list = common dso_local global %struct.TYPE_2__** null, align 8
@IPSET_ERR_BUSY = common dso_local global i32 0, align 4
@IPSET_INVALID_ID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.nlmsghdr*, %struct.nlattr**)* @ip_set_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_set_destroy(%struct.sock* %0, %struct.sk_buff* %1, %struct.nlmsghdr* %2, %struct.nlattr** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.nlmsghdr*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.nlmsghdr* %2, %struct.nlmsghdr** %8, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %13 = call i32 @protocol_failed(%struct.nlattr** %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @IPSET_ERR_PROTOCOL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %105

19:                                               ; preds = %4
  %20 = call i32 @read_lock_bh(i32* @ip_set_ref_lock)
  %21 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %22 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %72, label %26

26:                                               ; preds = %19
  store i64 0, i64* %10, align 8
  br label %27

27:                                               ; preds = %49, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @ip_set_max, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_set_list, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = icmp ne %struct.TYPE_2__* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_set_list, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %38, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @IPSET_ERR_BUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %102

48:                                               ; preds = %37, %31
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  br label %27

52:                                               ; preds = %27
  %53 = call i32 @read_unlock_bh(i32* @ip_set_ref_lock)
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %68, %52
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @ip_set_max, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_set_list, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %59, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = icmp ne %struct.TYPE_2__* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @ip_set_destroy_set(i64 %65)
  br label %67

67:                                               ; preds = %64, %58
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %54

71:                                               ; preds = %54
  br label %101

72:                                               ; preds = %19
  %73 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %74 = load i64, i64* @IPSET_ATTR_SETNAME, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = call i32 @nla_data(%struct.nlattr* %76)
  %78 = call i64 @find_set_id(i32 %77)
  store i64 %78, i64* %10, align 8
  %79 = load i64, i64* %10, align 8
  %80 = load i64, i64* @IPSET_INVALID_ID, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* @ENOENT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %102

85:                                               ; preds = %72
  %86 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @ip_set_list, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %86, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load i32, i32* @IPSET_ERR_BUSY, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %11, align 4
  br label %102

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96
  %98 = call i32 @read_unlock_bh(i32* @ip_set_ref_lock)
  %99 = load i64, i64* %10, align 8
  %100 = call i32 @ip_set_destroy_set(i64 %99)
  br label %101

101:                                              ; preds = %97, %71
  store i32 0, i32* %5, align 4
  br label %105

102:                                              ; preds = %93, %82, %45
  %103 = call i32 @read_unlock_bh(i32* @ip_set_ref_lock)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %101, %16
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @protocol_failed(%struct.nlattr**) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @ip_set_destroy_set(i64) #1

declare dso_local i64 @find_set_id(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
