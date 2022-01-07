; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_sctp.c_sctp_mt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_xt_sctp.c_sctp_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_match_param = type { i64, i32*, i64, %struct.xt_sctp_info* }
%struct.xt_sctp_info = type { i64*, i64*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Dropping non-first fragment.. FIXME\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Dropping evil TCP offset=0 tinygram.\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"spt: %d\09dpt: %d\0A\00", align 1
@XT_SCTP_SRC_PORTS = common dso_local global i32 0, align 4
@XT_SCTP_DEST_PORTS = common dso_local global i32 0, align 4
@XT_SCTP_CHUNK_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_match_param*)* @sctp_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_mt(%struct.sk_buff* %0, %struct.xt_match_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_match_param*, align 8
  %6 = alloca %struct.xt_sctp_info*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_match_param* %1, %struct.xt_match_param** %5, align 8
  %9 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %9, i32 0, i32 3
  %11 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %10, align 8
  store %struct.xt_sctp_info* %11, %struct.xt_sctp_info** %6, align 8
  %12 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %13 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @duprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %131

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %21 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.TYPE_4__* @skb_header_pointer(%struct.sk_buff* %19, i64 %22, i32 8, %struct.TYPE_4__* %8)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = icmp eq %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = call i32 (i8*, ...) @duprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %29 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32 1, i32* %30, align 4
  store i32 0, i32* %3, align 4
  br label %131

31:                                               ; preds = %18
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ntohs(i32 %34)
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  %40 = call i32 (i8*, ...) @duprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %35, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @ntohs(i32 %43)
  %45 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %46 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %44, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %31
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @ntohs(i32 %54)
  %56 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %57 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %55, %60
  br label %62

62:                                               ; preds = %51, %31
  %63 = phi i1 [ false, %31 ], [ %61, %51 ]
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* @XT_SCTP_SRC_PORTS, align 4
  %66 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %67 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %70 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @SCCHECK(i32 %64, i32 %65, i32 %68, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %62
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @ntohs(i32 %77)
  %79 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %80 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %78, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %74
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @ntohs(i32 %88)
  %90 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %91 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp sle i64 %89, %94
  br label %96

96:                                               ; preds = %85, %74
  %97 = phi i1 [ false, %74 ], [ %95, %85 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* @XT_SCTP_DEST_PORTS, align 4
  %100 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %101 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %104 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @SCCHECK(i32 %98, i32 %99, i32 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %96
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %111 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, 8
  %114 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %115 = load %struct.xt_match_param*, %struct.xt_match_param** %5, align 8
  %116 = getelementptr inbounds %struct.xt_match_param, %struct.xt_match_param* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = call i32 @match_packet(%struct.sk_buff* %109, i64 %113, %struct.xt_sctp_info* %114, i32* %117)
  %119 = load i32, i32* @XT_SCTP_CHUNK_TYPES, align 4
  %120 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %121 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.xt_sctp_info*, %struct.xt_sctp_info** %6, align 8
  %124 = getelementptr inbounds %struct.xt_sctp_info, %struct.xt_sctp_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @SCCHECK(i32 %118, i32 %119, i32 %122, i32 %125)
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %108, %96, %62
  %129 = phi i1 [ false, %96 ], [ false, %62 ], [ %127, %108 ]
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %128, %26, %16
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @duprintf(i8*, ...) #1

declare dso_local %struct.TYPE_4__* @skb_header_pointer(%struct.sk_buff*, i64, i32, %struct.TYPE_4__*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @SCCHECK(i32, i32, i32, i32) #1

declare dso_local i32 @match_packet(%struct.sk_buff*, i64, %struct.xt_sctp_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
