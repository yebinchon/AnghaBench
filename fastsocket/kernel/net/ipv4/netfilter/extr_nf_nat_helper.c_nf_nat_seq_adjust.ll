; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_nf_nat_seq_adjust.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_helper.c_nf_nat_seq_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.nf_conn = type { i32 }
%struct.tcphdr = type { i8*, i8*, i32 }
%struct.nf_conn_nat = type { %struct.nf_nat_seq* }
%struct.nf_nat_seq = type { i64, i64, i32 }

@.str = private unnamed_addr constant [56 x i8] c"Adjusting sequence number from %u->%u, ack from %u->%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_seq_adjust(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nf_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.nf_conn_nat*, align 8
  %15 = alloca %struct.nf_nat_seq*, align 8
  %16 = alloca %struct.nf_nat_seq*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %18 = call %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn* %17)
  store %struct.nf_conn_nat* %18, %struct.nf_conn_nat** %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @CTINFO2DIR(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %14, align 8
  %22 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %21, i32 0, i32 0
  %23 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %23, i64 %25
  store %struct.nf_nat_seq* %26, %struct.nf_nat_seq** %15, align 8
  %27 = load %struct.nf_conn_nat*, %struct.nf_conn_nat** %14, align 8
  %28 = getelementptr inbounds %struct.nf_conn_nat, %struct.nf_conn_nat* %27, i32 0, i32 0
  %29 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %29, i64 %34
  store %struct.nf_nat_seq* %35, %struct.nf_nat_seq** %16, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @ip_hdrlen(%struct.sk_buff* %37)
  %39 = sext i32 %38 to i64
  %40 = add i64 %39, 24
  %41 = trunc i64 %40 to i32
  %42 = call i32 @skb_make_writable(%struct.sk_buff* %36, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %149

45:                                               ; preds = %3
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @ip_hdrlen(%struct.sk_buff* %50)
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %49, i64 %52
  %54 = bitcast i8* %53 to %struct.tcphdr*
  store %struct.tcphdr* %54, %struct.tcphdr** %8, align 8
  %55 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %56 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @ntohl(i8* %57)
  %59 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %15, align 8
  %60 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @after(i64 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %45
  %65 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %15, align 8
  %66 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %12, align 8
  br label %72

68:                                               ; preds = %45
  %69 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %15, align 8
  %70 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %12, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %74 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @ntohl(i8* %75)
  %77 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %16, align 8
  %78 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %16, align 8
  %82 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @after(i64 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %72
  %87 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %16, align 8
  %88 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %13, align 8
  br label %94

90:                                               ; preds = %72
  %91 = load %struct.nf_nat_seq*, %struct.nf_nat_seq** %16, align 8
  %92 = getelementptr inbounds %struct.nf_nat_seq, %struct.nf_nat_seq* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %13, align 8
  br label %94

94:                                               ; preds = %90, %86
  %95 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %96 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @ntohl(i8* %97)
  %99 = load i64, i64* %12, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i8* @htonl(i64 %100)
  store i8* %101, i8** %10, align 8
  %102 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %103 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @ntohl(i8* %104)
  %106 = load i64, i64* %13, align 8
  %107 = sub nsw i64 %105, %106
  %108 = call i8* @htonl(i64 %107)
  store i8* %108, i8** %11, align 8
  %109 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %110 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %109, i32 0, i32 2
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %113 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @inet_proto_csum_replace4(i32* %110, %struct.sk_buff* %111, i8* %114, i8* %115, i32 0)
  %117 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %118 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %117, i32 0, i32 2
  %119 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %120 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %121 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %120, i32 0, i32 1
  %122 = load i8*, i8** %121, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @inet_proto_csum_replace4(i32* %118, %struct.sk_buff* %119, i8* %122, i8* %123, i32 0)
  %125 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %126 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i64 @ntohl(i8* %127)
  %129 = load i8*, i8** %10, align 8
  %130 = call i64 @ntohl(i8* %129)
  %131 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %132 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @ntohl(i8* %133)
  %135 = load i8*, i8** %11, align 8
  %136 = call i64 @ntohl(i8* %135)
  %137 = call i32 @pr_debug(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %128, i64 %130, i64 %134, i64 %136)
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %140 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %139, i32 0, i32 0
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %143 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %146 = load %struct.nf_conn*, %struct.nf_conn** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @nf_nat_sack_adjust(%struct.sk_buff* %144, %struct.tcphdr* %145, %struct.nf_conn* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %94, %44
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.nf_conn_nat* @nfct_nat(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i32 @skb_make_writable(%struct.sk_buff*, i32) #1

declare dso_local i32 @ip_hdrlen(%struct.sk_buff*) #1

declare dso_local i64 @after(i64, i32) #1

declare dso_local i64 @ntohl(i8*) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @inet_proto_csum_replace4(i32*, %struct.sk_buff*, i8*, i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, i64) #1

declare dso_local i32 @nf_nat_sack_adjust(%struct.sk_buff*, %struct.tcphdr*, %struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
