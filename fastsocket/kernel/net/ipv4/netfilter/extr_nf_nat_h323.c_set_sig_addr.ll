; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_set_sig_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_nf_nat_h323.c_set_sig_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nf_conn = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_13__ }
%struct.nf_ct_h323_master = type { i64* }
%union.nf_inet_addr = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.nf_ct_h323_master }

@.str = private unnamed_addr constant [51 x i8] c"nf_nat_ras: set signal address %pI4:%hu->%pI4:%hu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nf_conn*, i32, i8**, i32*, i32)* @set_sig_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sig_addr(%struct.sk_buff* %0, %struct.nf_conn* %1, i32 %2, i8** %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.nf_conn*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nf_ct_h323_master*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %union.nf_inet_addr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8** %3, i8*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %20 = call %struct.TYPE_14__* @nfct_help(%struct.nf_conn* %19)
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store %struct.nf_ct_h323_master* %22, %struct.nf_ct_h323_master** %14, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @CTINFO2DIR(i32 %23)
  store i32 %24, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %222, %6
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %225

29:                                               ; preds = %25
  %30 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %31 = load i8**, i8*** %11, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i64 @get_h225_addr(%struct.nf_conn* %30, i8* %32, i32* %36, %union.nf_inet_addr* %18, i64* %17)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %221

39:                                               ; preds = %29
  %40 = bitcast %union.nf_inet_addr* %18 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %43 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %42, i32 0, i32 0
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %43, align 8
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %41, %52
  br i1 %53, label %54, label %138

54:                                               ; preds = %39
  %55 = load i64, i64* %17, align 8
  %56 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %14, align 8
  %57 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %55, %62
  br i1 %63, label %64, label %138

64:                                               ; preds = %54
  %65 = load i32, i32* %16, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %69 = load i8**, i8*** %11, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = call i64 @get_h225_addr(%struct.nf_conn* %68, i8* %70, i32* %72, %union.nf_inet_addr* %18, i64* %17)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %67
  %76 = bitcast %union.nf_inet_addr* %18 to i64*
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @ntohl(i64 %77)
  %79 = and i32 %78, -16777216
  %80 = icmp eq i32 %79, 2130706432
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %81, %75, %67, %64
  %83 = bitcast %union.nf_inet_addr* %18 to i64*
  %84 = load i64, i64* %17, align 8
  %85 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %86 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %85, i32 0, i32 0
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %14, align 8
  %99 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %100, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64* %83, i64 %84, i64* %97, i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = load i8**, i8*** %11, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %116 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = zext i1 %120 to i32
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %14, align 8
  %128 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i32, i32* %15, align 4
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  %133 = zext i1 %132 to i32
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %129, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @set_h225_addr(%struct.sk_buff* %109, i8** %110, i32 0, i32* %114, %struct.TYPE_13__* %126, i64 %136)
  store i32 %137, i32* %7, align 4
  br label %226

138:                                              ; preds = %54, %39
  %139 = bitcast %union.nf_inet_addr* %18 to i64*
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %142 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %141, i32 0, i32 0
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %142, align 8
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp eq i64 %140, %151
  br i1 %152, label %153, label %219

153:                                              ; preds = %138
  %154 = load i64, i64* %17, align 8
  %155 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %14, align 8
  %156 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %154, %161
  br i1 %162, label %163, label %219

163:                                              ; preds = %153
  %164 = bitcast %union.nf_inet_addr* %18 to i64*
  %165 = load i64, i64* %17, align 8
  %166 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %167 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %166, i32 0, i32 0
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = icmp ne i32 %169, 0
  %171 = xor i1 %170, true
  %172 = zext i1 %171 to i32
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 0
  %179 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %14, align 8
  %180 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %15, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %181, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64* %164, i64 %165, i64* %178, i64 %188)
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = load i8**, i8*** %11, align 8
  %192 = load i32*, i32** %12, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load %struct.nf_conn*, %struct.nf_conn** %9, align 8
  %197 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %196, i32 0, i32 0
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = load i32, i32* %15, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %14, align 8
  %209 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i64, i64* %210, i64 %215
  %217 = load i64, i64* %216, align 8
  %218 = call i32 @set_h225_addr(%struct.sk_buff* %190, i8** %191, i32 0, i32* %195, %struct.TYPE_13__* %207, i64 %217)
  store i32 %218, i32* %7, align 4
  br label %226

219:                                              ; preds = %153, %138
  br label %220

220:                                              ; preds = %219
  br label %221

221:                                              ; preds = %220, %29
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %16, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %16, align 4
  br label %25

225:                                              ; preds = %25
  store i32 0, i32* %7, align 4
  br label %226

226:                                              ; preds = %225, %163, %82
  %227 = load i32, i32* %7, align 4
  ret i32 %227
}

declare dso_local %struct.TYPE_14__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i64 @get_h225_addr(%struct.nf_conn*, i8*, i32*, %union.nf_inet_addr*, i64*) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @pr_debug(i8*, i64*, i64, i64*, i64) #1

declare dso_local i32 @set_h225_addr(%struct.sk_buff*, i8**, i32, i32*, %struct.TYPE_13__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
