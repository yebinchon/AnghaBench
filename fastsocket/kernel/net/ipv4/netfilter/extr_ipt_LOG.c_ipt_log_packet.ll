; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_LOG.c_ipt_log_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_ipt_LOG.c_ipt_log_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_loginfo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i64, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.net_device*, %struct.net_device* }
%struct.net_device = type { i8* }

@default_loginfo = common dso_local global %struct.nf_loginfo zeroinitializer, align 4
@log_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"<%d>%sIN=%s OUT=%s \00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"MAC=\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.sk_buff*, %struct.net_device*, %struct.net_device*, %struct.nf_loginfo*, i8*)* @ipt_log_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipt_log_packet(i32 %0, i32 %1, %struct.sk_buff* %2, %struct.net_device* %3, %struct.net_device* %4, %struct.nf_loginfo* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nf_loginfo*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store %struct.net_device* %4, %struct.net_device** %12, align 8
  store %struct.nf_loginfo* %5, %struct.nf_loginfo** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %18 = icmp ne %struct.nf_loginfo* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %7
  store %struct.nf_loginfo* @default_loginfo, %struct.nf_loginfo** %13, align 8
  br label %20

20:                                               ; preds = %19, %7
  %21 = call i32 @spin_lock_bh(i32* @log_lock)
  %22 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %23 = getelementptr inbounds %struct.nf_loginfo, %struct.nf_loginfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %14, align 8
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = icmp ne %struct.net_device* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load %struct.net_device*, %struct.net_device** %11, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %34 ]
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.net_device*, %struct.net_device** %12, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %43 ]
  %46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27, i8* %36, i8* %45)
  %47 = load %struct.net_device*, %struct.net_device** %11, align 8
  %48 = icmp ne %struct.net_device* %47, null
  br i1 %48, label %49, label %108

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %12, align 8
  %51 = icmp ne %struct.net_device* %50, null
  br i1 %51, label %108, label %52

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %105

58:                                               ; preds = %52
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 2
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %58
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %68, %71
  br i1 %72, label %73, label %105

73:                                               ; preds = %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i8* @skb_mac_header(%struct.sk_buff* %74)
  store i8* %75, i8** %16, align 8
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %99, %73
  %77 = load i32, i32* %15, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 2
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %77, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %76
  %85 = load i8*, i8** %16, align 8
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = load i32, i32* %15, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %88, %94
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 32, i32 58
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %97)
  br label %99

99:                                               ; preds = %84
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  %102 = load i8*, i8** %16, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %16, align 8
  br label %76

104:                                              ; preds = %76
  br label %107

105:                                              ; preds = %65, %58, %52
  %106 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %104
  br label %108

108:                                              ; preds = %107, %49, %44
  %109 = load %struct.nf_loginfo*, %struct.nf_loginfo** %13, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = call i32 @dump_packet(%struct.nf_loginfo* %109, %struct.sk_buff* %110, i32 0)
  %112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %113 = call i32 @spin_unlock_bh(i32* @log_lock)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i8* @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @dump_packet(%struct.nf_loginfo*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
