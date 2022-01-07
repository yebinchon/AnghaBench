; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_amanda.c_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_amanda.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i32, %struct.TYPE_12__, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i32 0, align 4
@nf_nat_follow_master = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@NF_ACCEPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.nf_conntrack_expect*)* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.nf_conntrack_expect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conntrack_expect*, align 8
  %12 = alloca [6 x i8], align 1
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nf_conntrack_expect* %4, %struct.nf_conntrack_expect** %11, align 8
  %15 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %16 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %23 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @IP_CT_DIR_ORIGINAL, align 4
  %27 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %28 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @nf_nat_follow_master, align 4
  %30 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %33 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ntohs(i32 %36)
  store i64 %37, i64* %13, align 8
  br label %38

38:                                               ; preds = %55, %5
  %39 = load i64, i64* %13, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @htons(i64 %42)
  %44 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %45 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %43, i32* %49, align 4
  %50 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %51 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  br label %58

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %13, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %38

58:                                               ; preds = %53, %38
  %59 = load i64, i64* %13, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @NF_DROP, align 4
  store i32 %62, i32* %6, align 4
  br label %86

63:                                               ; preds = %58
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %65 = load i64, i64* %13, align 8
  %66 = call i32 @sprintf(i8* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %69 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %75 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %76 = call i32 @strlen(i8* %75)
  %77 = call i32 @nf_nat_mangle_udp_packet(%struct.sk_buff* %67, i32 %70, i32 %71, i32 %72, i32 %73, i8* %74, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @NF_ACCEPT, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %83 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %82)
  br label %84

84:                                               ; preds = %81, %63
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %61
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @nf_nat_mangle_udp_packet(%struct.sk_buff*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
