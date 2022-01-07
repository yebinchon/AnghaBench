; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_irc.c_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_irc.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conntrack_expect = type { i64, %struct.TYPE_13__*, %struct.TYPE_19__, %struct.TYPE_15__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@nf_nat_follow_master = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"nf_nat_irc: inserting '%s' == %pI4, port %u\0A\00", align 1
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
  %12 = alloca [17 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nf_conntrack_expect* %4, %struct.nf_conntrack_expect** %11, align 8
  %16 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %17 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %24 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %28 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %29 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32, i32* @nf_nat_follow_master, align 4
  %31 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %32 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %34 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @ntohs(i32 %37)
  store i64 %38, i64* %14, align 8
  br label %39

39:                                               ; preds = %56, %5
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @htons(i64 %43)
  %45 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %46 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  store i32 %44, i32* %50, align 8
  %51 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %52 = call i64 @nf_ct_expect_related(%struct.nf_conntrack_expect* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %14, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %14, align 8
  br label %39

59:                                               ; preds = %54, %39
  %60 = load i64, i64* %14, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @NF_DROP, align 4
  store i32 %63, i32* %6, align 4
  br label %104

64:                                               ; preds = %59
  %65 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %66 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %65, i32 0, i32 1
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ntohl(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %79 = load i32, i32* %13, align 4
  %80 = load i64, i64* %14, align 8
  %81 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %79, i64 %80)
  %82 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %83 = load i64, i64* %14, align 8
  %84 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32* %13, i64 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %86 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %87 = getelementptr inbounds %struct.nf_conntrack_expect, %struct.nf_conntrack_expect* %86, i32 0, i32 1
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %10, align 4
  %92 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %93 = getelementptr inbounds [17 x i8], [17 x i8]* %12, i64 0, i64 0
  %94 = call i32 @strlen(i8* %93)
  %95 = call i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff* %85, %struct.TYPE_13__* %88, i32 %89, i32 %90, i32 %91, i8* %92, i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* @NF_ACCEPT, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %64
  %100 = load %struct.nf_conntrack_expect*, %struct.nf_conntrack_expect** %11, align 8
  %101 = call i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect* %100)
  br label %102

102:                                              ; preds = %99, %64
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %102, %62
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @nf_ct_expect_related(%struct.nf_conntrack_expect*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32*, i64) #1

declare dso_local i32 @nf_nat_mangle_tcp_packet(%struct.sk_buff*, %struct.TYPE_13__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nf_ct_unexpect_related(%struct.nf_conntrack_expect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
