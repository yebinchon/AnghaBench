; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_pktgen_if_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_pktgen.c_pktgen_if_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.pktgen_dev* }
%struct.pktgen_dev = type { i32, i32, i32, i32, i32, i32, i32, i64*, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32, i32, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"Params: count %llu  min_pkt_size: %u  max_pkt_size: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"     frags: %d  delay: %llu  clone_skb: %d  ifname: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"     flows: %u flowlen: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"     queue_map_min: %u  queue_map_max: %u\0A\00", align 1
@F_IPV6 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"     saddr: %s  min_saddr: %s  max_saddr: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"     daddr: %s  min_daddr: %s  max_daddr: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"     dst_min: %s  dst_max: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"        src_min: %s  src_max: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"     src_mac: \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%pM \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"dst_mac: \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%pM\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"     udp_src_min: %d  udp_src_max: %d  udp_dst_min: %d  udp_dst_max: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"     src_mac_count: %d  dst_mac_count: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"     mpls: \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"%08x%s\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"     vlan_id: %u  vlan_p: %u  vlan_cfi: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [45 x i8] c"     svlan_id: %u  vlan_p: %u  vlan_cfi: %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"     tos: 0x%02x\0A\00", align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"     traffic_class: 0x%02x\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"     Flags: \00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"IPV6  \00", align 1
@F_IPSRC_RND = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [12 x i8] c"IPSRC_RND  \00", align 1
@F_IPDST_RND = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [12 x i8] c"IPDST_RND  \00", align 1
@F_TXSIZE_RND = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [13 x i8] c"TXSIZE_RND  \00", align 1
@F_UDPSRC_RND = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [13 x i8] c"UDPSRC_RND  \00", align 1
@F_UDPDST_RND = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [13 x i8] c"UDPDST_RND  \00", align 1
@F_MPLS_RND = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [11 x i8] c"MPLS_RND  \00", align 1
@F_QUEUE_MAP_RND = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [16 x i8] c"QUEUE_MAP_RND  \00", align 1
@F_QUEUE_MAP_CPU = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [16 x i8] c"QUEUE_MAP_CPU  \00", align 1
@F_FLOW_SEQ = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [11 x i8] c"FLOW_SEQ  \00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"FLOW_RND  \00", align 1
@F_MACSRC_RND = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"MACSRC_RND  \00", align 1
@F_MACDST_RND = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [13 x i8] c"MACDST_RND  \00", align 1
@F_VID_RND = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [10 x i8] c"VID_RND  \00", align 1
@F_SVID_RND = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [11 x i8] c"SVID_RND  \00", align 1
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [46 x i8] c"Current:\0A     pkts-sofar: %llu  errors: %llu\0A\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"     started: %lluus  stopped: %lluus idle: %lluus\0A\00", align 1
@.str.40 = private unnamed_addr constant [66 x i8] c"     seq_num: %d  cur_dst_mac_offset: %d  cur_src_mac_offset: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"     cur_saddr: %s  cur_daddr: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"     cur_saddr: 0x%x  cur_daddr: 0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [39 x i8] c"     cur_udp_dst: %d  cur_udp_src: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"     cur_queue_map: %u\0A\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"     flows: %u\0A\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"Result: %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"Result: Idle\0A\00", align 1
@F_IPSEC_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @pktgen_if_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pktgen_if_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pktgen_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca [128 x i8], align 16
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %14, i32 0, i32 0
  %16 = load %struct.pktgen_dev*, %struct.pktgen_dev** %15, align 8
  store %struct.pktgen_dev* %16, %struct.pktgen_dev** %5, align 8
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %18, i32 0, i32 58
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %22 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %21, i32 0, i32 57
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %25 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %24, i32 0, i32 56
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %20, i32 %23, i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %29 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %30 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %29, i32 0, i32 55
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %33 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %32, i32 0, i32 54
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %36 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %35, i32 0, i32 53
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %38, i32 0, i32 52
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %34, i32 %37, i32 %40)
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %44 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %47 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %46, i32 0, i32 51
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %51, i32 0, i32 50
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %55 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %54, i32 0, i32 49
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %59 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @F_IPV6, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %111

64:                                               ; preds = %2
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %66 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %67 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %66, i32 0, i32 48
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @fmt_ip6(i8* %65, i32 %69)
  %71 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %72 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %73 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %72, i32 0, i32 47
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @fmt_ip6(i8* %71, i32 %75)
  %77 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %78 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %79 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %78, i32 0, i32 46
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @fmt_ip6(i8* %77, i32 %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %84 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %85 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %87 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* %84, i8* %85, i8* %86)
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %89 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %90 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %89, i32 0, i32 45
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @fmt_ip6(i8* %88, i32 %92)
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %95 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %96 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %95, i32 0, i32 44
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @fmt_ip6(i8* %94, i32 %98)
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %101 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %102 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %101, i32 0, i32 43
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @fmt_ip6(i8* %100, i32 %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* %107, i8* %108, i8* %109)
  br label %128

111:                                              ; preds = %2
  %112 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %113 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %114 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %113, i32 0, i32 42
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %117 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %116, i32 0, i32 41
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %115, i32 %118)
  %120 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %121 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %122 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %121, i32 0, i32 40
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %125 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %124, i32 0, i32 39
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %111, %64
  %129 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %130 = call i32 @seq_puts(%struct.seq_file* %129, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  %131 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %132 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %133 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %132, i32 0, i32 37
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @is_zero_ether_addr(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %139 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %138, i32 0, i32 38
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  br label %147

143:                                              ; preds = %128
  %144 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %145 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %144, i32 0, i32 37
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %143, %137
  %148 = phi i32 [ %142, %137 ], [ %146, %143 ]
  %149 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %148)
  %150 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %151 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %152 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %153 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %154 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %153, i32 0, i32 36
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %152, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %155)
  %157 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %158 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %159 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %158, i32 0, i32 35
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %162 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %161, i32 0, i32 34
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %165 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %164, i32 0, i32 33
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %168 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %167, i32 0, i32 32
  %169 = load i32, i32* %168, align 8
  %170 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.12, i64 0, i64 0), i32 %160, i32 %163, i32 %166, i32 %169)
  %171 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %172 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %173 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %172, i32 0, i32 31
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %176 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %175, i32 0, i32 30
  %177 = load i32, i32* %176, align 8
  %178 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %171, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i32 %174, i32 %177)
  %179 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %180 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %215

183:                                              ; preds = %147
  %184 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %185 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %184, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %186

186:                                              ; preds = %211, %183
  %187 = load i32, i32* %11, align 4
  %188 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %189 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp ult i32 %187, %190
  br i1 %191, label %192, label %214

192:                                              ; preds = %186
  %193 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %194 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %195 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %194, i32 0, i32 29
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %11, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ntohl(i32 %200)
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %204 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = sub i32 %205, 1
  %207 = icmp eq i32 %202, %206
  %208 = zext i1 %207 to i64
  %209 = select i1 %207, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0)
  %210 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %201, i8* %209)
  br label %211

211:                                              ; preds = %192
  %212 = load i32, i32* %11, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %186

214:                                              ; preds = %186
  br label %215

215:                                              ; preds = %214, %147
  %216 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %217 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 65535
  br i1 %219, label %220, label %232

220:                                              ; preds = %215
  %221 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %222 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %223 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %226 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %225, i32 0, i32 28
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %229 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %228, i32 0, i32 27
  %230 = load i32, i32* %229, align 8
  %231 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %221, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), i32 %224, i32 %227, i32 %230)
  br label %232

232:                                              ; preds = %220, %215
  %233 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %234 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 65535
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %239 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %240 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %243 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %242, i32 0, i32 26
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %246 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %245, i32 0, i32 25
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %238, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0), i32 %241, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %237, %232
  %250 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %251 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %249
  %255 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %256 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %257 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %255, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %254, %249
  %261 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %262 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %267 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %268 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %266, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %265, %260
  %272 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %273 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %272, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %274 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %275 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @F_IPV6, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %282 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %281, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  br label %283

283:                                              ; preds = %280, %271
  %284 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %285 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* @F_IPSRC_RND, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %283
  %291 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %292 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %291, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  br label %293

293:                                              ; preds = %290, %283
  %294 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %295 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @F_IPDST_RND, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %302 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %301, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %293
  %304 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %305 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @F_TXSIZE_RND, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %312 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %311, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  br label %313

313:                                              ; preds = %310, %303
  %314 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %315 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* @F_UDPSRC_RND, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %313
  %321 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %322 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %321, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  br label %323

323:                                              ; preds = %320, %313
  %324 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %325 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @F_UDPDST_RND, align 4
  %328 = and i32 %326, %327
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %323
  %331 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %332 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %331, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  br label %333

333:                                              ; preds = %330, %323
  %334 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %335 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @F_MPLS_RND, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %343

340:                                              ; preds = %333
  %341 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %342 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %341, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0))
  br label %343

343:                                              ; preds = %340, %333
  %344 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %345 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @F_QUEUE_MAP_RND, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %343
  %351 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %352 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0))
  br label %353

353:                                              ; preds = %350, %343
  %354 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %355 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* @F_QUEUE_MAP_CPU, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %353
  %361 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %362 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %361, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.31, i64 0, i64 0))
  br label %363

363:                                              ; preds = %360, %353
  %364 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %365 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %382

368:                                              ; preds = %363
  %369 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %370 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @F_FLOW_SEQ, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %368
  %376 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %377 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %376, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0))
  br label %381

378:                                              ; preds = %368
  %379 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %380 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0))
  br label %381

381:                                              ; preds = %378, %375
  br label %382

382:                                              ; preds = %381, %363
  %383 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %384 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @F_MACSRC_RND, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %382
  %390 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %391 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %390, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0))
  br label %392

392:                                              ; preds = %389, %382
  %393 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %394 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @F_MACDST_RND, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %392
  %400 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %401 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %400, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i64 0, i64 0))
  br label %402

402:                                              ; preds = %399, %392
  %403 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %404 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @F_VID_RND, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %402
  %410 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %411 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %410, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i64 0, i64 0))
  br label %412

412:                                              ; preds = %409, %402
  %413 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %414 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @F_SVID_RND, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %412
  %420 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %421 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %420, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0))
  br label %422

422:                                              ; preds = %419, %412
  %423 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %424 = call i32 @seq_puts(%struct.seq_file* %423, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %425 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %426 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %425, i32 0, i32 24
  %427 = load i64, i64* %426, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %431

429:                                              ; preds = %422
  %430 = call i32 (...) @ktime_now()
  br label %435

431:                                              ; preds = %422
  %432 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %433 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %432, i32 0, i32 23
  %434 = load i32, i32* %433, align 8
  br label %435

435:                                              ; preds = %431, %429
  %436 = phi i32 [ %430, %429 ], [ %434, %431 ]
  store i32 %436, i32* %6, align 4
  %437 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %438 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %437, i32 0, i32 22
  %439 = load i64, i64* %438, align 8
  store i64 %439, i64* %7, align 8
  %440 = load i64, i64* %7, align 8
  %441 = load i32, i32* @NSEC_PER_USEC, align 4
  %442 = call i32 @do_div(i64 %440, i32 %441)
  %443 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %444 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %445 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %444, i32 0, i32 21
  %446 = load i64, i64* %445, align 8
  %447 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %448 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %447, i32 0, i32 20
  %449 = load i64, i64* %448, align 8
  %450 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %443, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.38, i64 0, i64 0), i64 %446, i64 %449)
  %451 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %452 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %453 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %452, i32 0, i32 19
  %454 = load i32, i32* %453, align 4
  %455 = call i64 @ktime_to_us(i32 %454)
  %456 = load i32, i32* %6, align 4
  %457 = call i64 @ktime_to_us(i32 %456)
  %458 = load i64, i64* %7, align 8
  %459 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %451, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.39, i64 0, i64 0), i64 %455, i64 %457, i64 %458)
  %460 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %461 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %462 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %461, i32 0, i32 18
  %463 = load i32, i32* %462, align 8
  %464 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %465 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %464, i32 0, i32 17
  %466 = load i32, i32* %465, align 4
  %467 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %468 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %467, i32 0, i32 16
  %469 = load i32, i32* %468, align 8
  %470 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %460, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.40, i64 0, i64 0), i32 %463, i32 %466, i32 %469)
  %471 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %472 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %471, i32 0, i32 1
  %473 = load i32, i32* %472, align 4
  %474 = load i32, i32* @F_IPV6, align 4
  %475 = and i32 %473, %474
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %494

477:                                              ; preds = %435
  %478 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %479 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %480 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @fmt_ip6(i8* %478, i32 %482)
  %484 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %485 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %486 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %485, i32 0, i32 14
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @fmt_ip6(i8* %484, i32 %488)
  %490 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %491 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %492 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %493 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %490, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.41, i64 0, i64 0), i8* %491, i8* %492)
  br label %503

494:                                              ; preds = %435
  %495 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %496 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %497 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %496, i32 0, i32 13
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %500 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %499, i32 0, i32 12
  %501 = load i32, i32* %500, align 8
  %502 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %495, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i64 0, i64 0), i32 %498, i32 %501)
  br label %503

503:                                              ; preds = %494, %477
  %504 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %505 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %506 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %505, i32 0, i32 11
  %507 = load i32, i32* %506, align 4
  %508 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %509 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %508, i32 0, i32 10
  %510 = load i32, i32* %509, align 8
  %511 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %504, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.43, i64 0, i64 0), i32 %507, i32 %510)
  %512 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %513 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %514 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %513, i32 0, i32 9
  %515 = load i32, i32* %514, align 4
  %516 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %512, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i64 0, i64 0), i32 %515)
  %517 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %518 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %519 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %518, i32 0, i32 8
  %520 = load i32, i32* %519, align 8
  %521 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %517, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i64 0, i64 0), i32 %520)
  %522 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %523 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %522, i32 0, i32 7
  %524 = load i64*, i64** %523, align 8
  %525 = getelementptr inbounds i64, i64* %524, i64 0
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %503
  %529 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %530 = load %struct.pktgen_dev*, %struct.pktgen_dev** %5, align 8
  %531 = getelementptr inbounds %struct.pktgen_dev, %struct.pktgen_dev* %530, i32 0, i32 7
  %532 = load i64*, i64** %531, align 8
  %533 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %529, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i64* %532)
  br label %537

534:                                              ; preds = %503
  %535 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %536 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %535, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.47, i64 0, i64 0))
  br label %537

537:                                              ; preds = %534, %528
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @fmt_ip6(i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ktime_now(...) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i64 @ktime_to_us(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
