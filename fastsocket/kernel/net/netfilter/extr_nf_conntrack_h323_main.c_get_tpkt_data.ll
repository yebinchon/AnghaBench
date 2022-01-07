; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_get_tpkt_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_conntrack_h323_main.c_get_tpkt_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nf_conn = type { i32 }
%struct.nf_ct_h323_master = type { i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nf_ct_h323_master }

@h323_buffer = common dso_local global %struct.tcphdr* null, align 8
@.str = private unnamed_addr constant [71 x i8] c"nf_ct_h323: previous packet indicated separate TPKT data of %hu bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"nf_ct_h323: fragmented TPKT\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"nf_ct_h323: separate TPKT header indicates there will be TPKT data of %hu bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"nf_ct_h323: incomplete TPKT (fragmented?)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.nf_conn*, i32, i8**, i32*, i32*)* @get_tpkt_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tpkt_data(%struct.sk_buff* %0, i32 %1, %struct.nf_conn* %2, i32 %3, i8** %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nf_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.nf_ct_h323_master*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.tcphdr*, align 8
  %19 = alloca %struct.tcphdr, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.nf_conn* %2, %struct.nf_conn** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %25 = load %struct.nf_conn*, %struct.nf_conn** %11, align 8
  %26 = call %struct.TYPE_4__* @nfct_help(%struct.nf_conn* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store %struct.nf_ct_h323_master* %28, %struct.nf_ct_h323_master** %16, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i32 @CTINFO2DIR(i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i8* @skb_header_pointer(%struct.sk_buff* %31, i32 %32, i32 4, %struct.tcphdr* %19)
  %34 = bitcast i8* %33 to %struct.tcphdr*
  store %struct.tcphdr* %34, %struct.tcphdr** %18, align 8
  %35 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %36 = icmp eq %struct.tcphdr* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %219

38:                                               ; preds = %7
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.tcphdr*, %struct.tcphdr** %18, align 8
  %41 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %42, 4
  %44 = add i32 %39, %43
  store i32 %44, i32* %21, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %21, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %20, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %38
  br label %212

53:                                               ; preds = %38
  %54 = load i8**, i8*** %13, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %124

57:                                               ; preds = %53
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %20, align 4
  %61 = load %struct.tcphdr*, %struct.tcphdr** @h323_buffer, align 8
  %62 = call i8* @skb_header_pointer(%struct.sk_buff* %58, i32 %59, i32 %60, %struct.tcphdr* %61)
  store i8* %62, i8** %22, align 8
  %63 = load i8*, i8** %22, align 8
  %64 = icmp eq i8* %63, null
  %65 = zext i1 %64 to i32
  %66 = call i32 @BUG_ON(i32 %65)
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %81, label %69

69:                                               ; preds = %57
  %70 = load i8*, i8** %22, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 3
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load i8*, i8** %22, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %123

81:                                               ; preds = %75, %69, %57
  %82 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %83 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %17, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %81
  %91 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %92 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %100 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %90
  %109 = load i8*, i8** %22, align 8
  %110 = load i8**, i8*** %13, align 8
  store i8* %109, i8** %110, align 8
  %111 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %112 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %14, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32*, i32** %15, align 8
  store i32 0, i32* %119, align 4
  br label %205

120:                                              ; preds = %90
  %121 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %212

122:                                              ; preds = %81
  store i32 0, i32* %8, align 4
  br label %219

123:                                              ; preds = %75
  store i32 0, i32* %24, align 4
  br label %156

124:                                              ; preds = %53
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %14, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %126, %128
  store i32 %129, i32* %24, align 4
  %130 = load i32, i32* %24, align 4
  %131 = load i32, i32* %20, align 4
  %132 = sub nsw i32 %131, %130
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp sle i32 %133, 4
  br i1 %134, label %135, label %136

135:                                              ; preds = %124
  br label %212

136:                                              ; preds = %124
  %137 = load i8**, i8*** %13, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  store i8* %142, i8** %22, align 8
  %143 = load i8*, i8** %22, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 3
  br i1 %147, label %154, label %148

148:                                              ; preds = %136
  %149 = load i8*, i8** %22, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %148, %136
  br label %212

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %123
  %157 = load i8*, i8** %22, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 2
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = mul nsw i32 %160, 256
  %162 = load i8*, i8** %22, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 3
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = add nsw i32 %161, %165
  store i32 %166, i32* %23, align 4
  %167 = load i32, i32* %23, align 4
  %168 = icmp slt i32 %167, 4
  br i1 %168, label %169, label %170

169:                                              ; preds = %156
  br label %212

170:                                              ; preds = %156
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* %20, align 4
  %173 = icmp sgt i32 %171, %172
  br i1 %173, label %174, label %195

174:                                              ; preds = %170
  %175 = load i32, i32* %20, align 4
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load i32, i32* %23, align 4
  %179 = sub nsw i32 %178, 4
  %180 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load i32, i32* %23, align 4
  %182 = sub nsw i32 %181, 4
  %183 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %184 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  store i32 %182, i32* %188, align 4
  store i32 0, i32* %8, align 4
  br label %219

189:                                              ; preds = %174
  %190 = call i64 (...) @net_ratelimit()
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %189
  br label %212

195:                                              ; preds = %170
  %196 = load i8*, i8** %22, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 4
  %198 = load i8**, i8*** %13, align 8
  store i8* %197, i8** %198, align 8
  %199 = load i32, i32* %23, align 4
  %200 = sub nsw i32 %199, 4
  %201 = load i32*, i32** %14, align 8
  store i32 %200, i32* %201, align 4
  %202 = load i32, i32* %24, align 4
  %203 = add nsw i32 %202, 4
  %204 = load i32*, i32** %15, align 8
  store i32 %203, i32* %204, align 4
  br label %205

205:                                              ; preds = %195, %108
  %206 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %207 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 0, i32* %211, align 4
  store i32 1, i32* %8, align 4
  br label %219

212:                                              ; preds = %194, %169, %154, %135, %120, %52
  %213 = load %struct.nf_ct_h323_master*, %struct.nf_ct_h323_master** %16, align 8
  %214 = getelementptr inbounds %struct.nf_ct_h323_master, %struct.nf_ct_h323_master* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %215, i64 %217
  store i32 0, i32* %218, align 4
  store i32 0, i32* %8, align 4
  br label %219

219:                                              ; preds = %212, %205, %177, %122, %37
  %220 = load i32, i32* %8, align 4
  ret i32 %220
}

declare dso_local %struct.TYPE_4__* @nfct_help(%struct.nf_conn*) #1

declare dso_local i32 @CTINFO2DIR(i32) #1

declare dso_local i8* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.tcphdr*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
