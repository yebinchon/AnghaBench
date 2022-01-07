; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_netlink.c_ctnetlink_parse_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CTA_TUPLE_MAX = common dso_local global i32 0, align 4
@CTA_TUPLE_IP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CTA_TUPLE_PROTO = common dso_local global i64 0, align 8
@CTA_TUPLE_REPLY = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i32 0, align 4
@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nf_conntrack_tuple*, i32, i32)* @ctnetlink_parse_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctnetlink_parse_tuple(%struct.nlattr** %0, %struct.nf_conntrack_tuple* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.nf_conntrack_tuple*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %6, align 8
  store %struct.nf_conntrack_tuple* %1, %struct.nf_conntrack_tuple** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @CTA_TUPLE_MAX, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca %struct.nlattr*, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %20 = call i32 @memset(%struct.nf_conntrack_tuple* %19, i32 0, i32 8)
  %21 = load i32, i32* @CTA_TUPLE_MAX, align 4
  %22 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_parse_nested(%struct.nlattr** %18, i32 %21, %struct.nlattr* %26, i32* null)
  %28 = load i64, i64* @CTA_TUPLE_IP, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = icmp ne %struct.nlattr* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %82

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %38 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i64, i64* @CTA_TUPLE_IP, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %44 = call i32 @ctnetlink_parse_tuple_ip(%struct.nlattr* %42, %struct.nf_conntrack_tuple* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %82

49:                                               ; preds = %35
  %50 = load i64, i64* @CTA_TUPLE_PROTO, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %82

57:                                               ; preds = %49
  %58 = load i64, i64* @CTA_TUPLE_PROTO, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %62 = call i32 @ctnetlink_parse_tuple_proto(%struct.nlattr* %60, %struct.nf_conntrack_tuple* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %82

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @CTA_TUPLE_REPLY, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, i32* @IP_CT_DIR_REPLY, align 4
  %73 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %74 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %81

76:                                               ; preds = %67
  %77 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %78 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %7, align 8
  %79 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %71
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %65, %54, %47, %32
  %83 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.nf_conntrack_tuple*, i32, i32) #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @ctnetlink_parse_tuple_ip(%struct.nlattr*, %struct.nf_conntrack_tuple*) #2

declare dso_local i32 @ctnetlink_parse_tuple_proto(%struct.nlattr*, %struct.nf_conntrack_tuple*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
