; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_h245_help.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_h245_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.nf_conn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@h245_help.mscm = internal global i32 0, align 4
@IP_CT_ESTABLISHED = common dso_local global i32 0, align 4
@IP_CT_IS_REPLY = common dso_local global i32 0, align 4
@NF_ACCEPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"nf_ct_h245: skblen = %u\0A\00", align 1
@nf_h323_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"nf_ct_h245: TPKT len=%d \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"nf_ct_h245: decoding error: %s\0A\00", align 1
@H323_ERROR_BOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"out of bound\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"out of range\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"nf_ct_h245: packet dropped\0A\00", align 1
@NF_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32)* @h245_help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h245_help(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IP_CT_ESTABLISHED, align 4
  %20 = load i32, i32* @IP_CT_IS_REPLY, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %24, i32* %5, align 4
  br label %81

25:                                               ; preds = %17, %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = call i32 @spin_lock_bh(i32* @nf_h323_lock)
  br label %31

31:                                               ; preds = %69, %25
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @get_tpkt_data(%struct.sk_buff* %32, i32 %33, %struct.nf_conn* %34, i32 %35, i8** %10, i32* %11, i32* %12)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %42 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @CTINFO2DIR(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @nf_ct_dump_tuple(i32* %47)
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @DecodeMultimediaSystemControlMessage(i8* %49, i32 %50, i32* @h245_help.mscm)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @H323_ERROR_BOUND, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %70

61:                                               ; preds = %38
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = load %struct.nf_conn*, %struct.nf_conn** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @process_h245(%struct.sk_buff* %62, %struct.nf_conn* %63, i32 %64, i8** %10, i32 %65, i32* @h245_help.mscm)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %73

69:                                               ; preds = %61
  br label %31

70:                                               ; preds = %54, %31
  %71 = call i32 @spin_unlock_bh(i32* @nf_h323_lock)
  %72 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %72, i32* %5, align 4
  br label %81

73:                                               ; preds = %68
  %74 = call i32 @spin_unlock_bh(i32* @nf_h323_lock)
  %75 = call i64 (...) @net_ratelimit()
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = call i32 @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* @NF_DROP, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %70, %23
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @get_tpkt_data(%struct.sk_buff*, i32, %struct.nf_conn*, i32, i8**, i32*, i32*) #1

declare dso_local i32 @nf_ct_dump_tuple(i32*) #1

declare dso_local i64 @CTINFO2DIR(i32) #1

declare dso_local i32 @DecodeMultimediaSystemControlMessage(i8*, i32, i32*) #1

declare dso_local i64 @process_h245(%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
