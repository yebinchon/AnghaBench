; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_process_register_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_sip.c_process_register_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nf_conn_help = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.nf_inet_addr = type { i32 }

@NF_ACCEPT = common dso_local global i32 0, align 4
@SIP_HDR_EXPIRES = common dso_local global i32 0, align 4
@SIP_HDR_CONTACT = common dso_local global i32 0, align 4
@NF_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"expires=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i8**, i32*, i32, i32)* @process_register_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_register_response(%struct.sk_buff* %0, i8** %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nf_conn*, align 8
  %14 = alloca %struct.nf_conn_help*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %union.nf_inet_addr, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call %struct.nf_conn* @nf_ct_get(%struct.sk_buff* %25, i32* %12)
  store %struct.nf_conn* %26, %struct.nf_conn** %13, align 8
  %27 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %28 = call %struct.nf_conn_help* @nfct_help(%struct.nf_conn* %27)
  store %struct.nf_conn_help* %28, %struct.nf_conn_help** %14, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @CTINFO2DIR(i32 %29)
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %31 = load %struct.nf_conn_help*, %struct.nf_conn_help** %14, align 8
  %32 = getelementptr inbounds %struct.nf_conn_help, %struct.nf_conn_help* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %5
  %39 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %39, i32* %6, align 4
  br label %135

40:                                               ; preds = %5
  %41 = load i32, i32* %11, align 4
  %42 = icmp uge i32 %41, 100
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = icmp ule i32 %44, 199
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %47, i32* %6, align 4
  br label %135

48:                                               ; preds = %43, %40
  %49 = load i32, i32* %11, align 4
  %50 = icmp ult i32 %49, 200
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = icmp ugt i32 %52, 299
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  br label %131

55:                                               ; preds = %51
  %56 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %57 = load i8**, i8*** %8, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SIP_HDR_EXPIRES, align 4
  %62 = call i64 @ct_sip_get_header(%struct.nf_conn* %56, i8* %58, i32 0, i32 %60, i32 %61, i32* %18, i32* %19)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load i8**, i8*** %8, align 8
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i32 @simple_strtoul(i8* %69, i32* null, i32 10)
  store i32 %70, i32* %21, align 4
  br label %71

71:                                               ; preds = %64, %55
  br label %72

72:                                               ; preds = %71, %102, %129
  %73 = load i32, i32* %21, align 4
  store i32 %73, i32* %24, align 4
  %74 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %75 = load i8**, i8*** %8, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SIP_HDR_CONTACT, align 4
  %80 = call i32 @ct_sip_parse_header_uri(%struct.nf_conn* %74, i8* %76, i32* %20, i32 %78, i32 %79, i32* %22, i32* %18, i32* %19, %union.nf_inet_addr* %16, i32* %17)
  store i32 %80, i32* %23, align 4
  %81 = load i32, i32* %23, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* @NF_DROP, align 4
  store i32 %84, i32* %6, align 4
  br label %135

85:                                               ; preds = %72
  %86 = load i32, i32* %23, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %130

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %92 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %15, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = call i32 @nf_inet_addr_cmp(i32* %99, %union.nf_inet_addr* %16)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %72

103:                                              ; preds = %90
  %104 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %105 = load i8**, i8*** %8, align 8
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = add i32 %107, %108
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ct_sip_parse_numerical_param(%struct.nf_conn* %104, i8* %106, i32 %109, i32 %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32* null, i32* %24)
  store i32 %112, i32* %23, align 4
  %113 = load i32, i32* %23, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @NF_DROP, align 4
  store i32 %116, i32* %6, align 4
  br label %135

117:                                              ; preds = %103
  %118 = load i32, i32* %24, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %130

121:                                              ; preds = %117
  %122 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %24, align 4
  %125 = call i64 @refresh_signalling_expectation(%struct.nf_conn* %122, %union.nf_inet_addr* %16, i32 %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %128, i32* %6, align 4
  br label %135

129:                                              ; preds = %121
  br label %72

130:                                              ; preds = %120, %88
  br label %131

131:                                              ; preds = %130, %54
  %132 = load %struct.nf_conn*, %struct.nf_conn** %13, align 8
  %133 = call i32 @flush_expectations(%struct.nf_conn* %132, i32 0)
  %134 = load i32, i32* @NF_ACCEPT, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %131, %127, %115, %83, %46, %38
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local %struct.nf_conn* @nf_ct_get(%struct.sk_buff*, i32*) #1

declare dso_local %struct.nf_conn_help* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @ct_sip_get_header(%struct.nf_conn*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @ct_sip_parse_header_uri(%struct.nf_conn*, i8*, i32*, i32, i32, i32*, i32*, i32*, %union.nf_inet_addr*, i32*) #1

declare dso_local i32 @nf_inet_addr_cmp(i32*, %union.nf_inet_addr*) #1

declare dso_local i32 @ct_sip_parse_numerical_param(%struct.nf_conn*, i8*, i32, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i64 @refresh_signalling_expectation(%struct.nf_conn*, %union.nf_inet_addr*, i32, i32) #1

declare dso_local i32 @flush_expectations(%struct.nf_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
