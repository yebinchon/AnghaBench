; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_pptp.c_pptp_destroy_siblings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_pptp.c_pptp_destroy_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.net = type { i32 }
%struct.nf_conn_help = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.nf_conntrack_tuple = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@IPPROTO_GRE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to timeout original pns->pac ct/exp\0A\00", align 1
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to timeout reply pac->pns ct/exp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nf_conn*)* @pptp_destroy_siblings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pptp_destroy_siblings(%struct.nf_conn* %0) #0 {
  %2 = alloca %struct.nf_conn*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nf_conn_help*, align 8
  %5 = alloca %struct.nf_conntrack_tuple, align 8
  store %struct.nf_conn* %0, %struct.nf_conn** %2, align 8
  %6 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %7 = call %struct.net* @nf_ct_net(%struct.nf_conn* %6)
  store %struct.net* %7, %struct.net** %3, align 8
  %8 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %9 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %8)
  store %struct.nf_conn_help* %9, %struct.nf_conn_help** %4, align 8
  %10 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %11 = call i32 @nf_ct_gre_keymap_destroy(%struct.nf_conn* %10)
  %12 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %13 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = call i32 @memcpy(%struct.nf_conntrack_tuple* %5, i32* %17, i32 24)
  %19 = load i8*, i8** @IPPROTO_GRE, align 8
  %20 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.nf_conn_help*, %struct.nf_conn_help** %4, align 8
  %23 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.nf_conn_help*, %struct.nf_conn_help** %4, align 8
  %32 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load %struct.net*, %struct.net** %3, align 8
  %41 = call i32 @destroy_sibling_or_exp(%struct.net* %40, %struct.nf_conntrack_tuple* %5)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %1
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %1
  %46 = load %struct.nf_conn*, %struct.nf_conn** %2, align 8
  %47 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = call i32 @memcpy(%struct.nf_conntrack_tuple* %5, i32* %51, i32 24)
  %53 = load i8*, i8** @IPPROTO_GRE, align 8
  %54 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nf_conn_help*, %struct.nf_conn_help** %4, align 8
  %57 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 8
  %65 = load %struct.nf_conn_help*, %struct.nf_conn_help** %4, align 8
  %66 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %5, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.net*, %struct.net** %3, align 8
  %75 = call i32 @destroy_sibling_or_exp(%struct.net* %74, %struct.nf_conntrack_tuple* %5)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %45
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %45
  ret void
}

declare dso_local %struct.net* @nf_ct_net(%struct.nf_conn*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @nf_ct_gre_keymap_destroy(%struct.nf_conn*) #1

declare dso_local i32 @memcpy(%struct.nf_conntrack_tuple*, i32*, i32) #1

declare dso_local i32 @destroy_sibling_or_exp(%struct.net*, %struct.nf_conntrack_tuple*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
