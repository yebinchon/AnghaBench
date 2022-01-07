; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_dump_reqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_diag.c_inet_diag_dump_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.inet_diag_entry = type { i64, i32, i32*, i32*, i32, i32 }
%struct.inet_diag_req = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.inet_connection_sock = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, %struct.listen_sock* }
%struct.listen_sock = type { i32, %struct.request_sock**, i32 }
%struct.request_sock = type { %struct.request_sock* }
%struct.nlattr = type { i32 }
%struct.inet_sock = type { i32 }
%struct.inet_request_sock = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@INET_DIAG_REQ_BYTECODE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.sock*, %struct.netlink_callback*)* @inet_diag_dump_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_diag_dump_reqs(%struct.sk_buff* %0, %struct.sock* %1, %struct.netlink_callback* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.netlink_callback*, align 8
  %7 = alloca %struct.inet_diag_entry, align 8
  %8 = alloca %struct.inet_diag_req*, align 8
  %9 = alloca %struct.inet_connection_sock*, align 8
  %10 = alloca %struct.listen_sock*, align 8
  %11 = alloca %struct.nlattr*, align 8
  %12 = alloca %struct.inet_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.request_sock*, align 8
  %19 = alloca %struct.request_sock*, align 8
  %20 = alloca %struct.inet_request_sock*, align 8
  %21 = alloca %struct.TYPE_11__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.netlink_callback* %2, %struct.netlink_callback** %6, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %23 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %22, i32 0, i32 1
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  %25 = call %struct.inet_diag_req* @NLMSG_DATA(%struct.TYPE_16__* %24)
  store %struct.inet_diag_req* %25, %struct.inet_diag_req** %8, align 8
  %26 = load %struct.sock*, %struct.sock** %5, align 8
  %27 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %26)
  store %struct.inet_connection_sock* %27, %struct.inet_connection_sock** %9, align 8
  store %struct.nlattr* null, %struct.nlattr** %11, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call %struct.inet_sock* @inet_sk(%struct.sock* %28)
  store %struct.inet_sock* %29, %struct.inet_sock** %12, align 8
  store i32 0, i32* %17, align 4
  %30 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %31 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %36 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %3
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %14, align 4
  br label %45

45:                                               ; preds = %42, %3
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %51 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = call i32 @read_lock_bh(i32* %52)
  %54 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %55 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.listen_sock*, %struct.listen_sock** %56, align 8
  store %struct.listen_sock* %57, %struct.listen_sock** %10, align 8
  %58 = load %struct.listen_sock*, %struct.listen_sock** %10, align 8
  %59 = icmp ne %struct.listen_sock* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.listen_sock*, %struct.listen_sock** %10, align 8
  %62 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60, %45
  br label %198

66:                                               ; preds = %60
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 1
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = call i64 @nlmsg_attrlen(%struct.TYPE_16__* %69, i32 8)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %74 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %73, i32 0, i32 1
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load i32, i32* @INET_DIAG_REQ_BYTECODE, align 4
  %77 = call %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_16__* %75, i32 8, i32 %76)
  store %struct.nlattr* %77, %struct.nlattr** %11, align 8
  %78 = load %struct.inet_sock*, %struct.inet_sock** %12, align 8
  %79 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 5
  store i32 %80, i32* %81, align 4
  %82 = load %struct.sock*, %struct.sock** %5, align 8
  %83 = getelementptr inbounds %struct.sock, %struct.sock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 4
  store i32 %84, i32* %85, align 8
  br label %86

86:                                               ; preds = %72, %66
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %194, %86
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.listen_sock*, %struct.listen_sock** %10, align 8
  %91 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %197

94:                                               ; preds = %88
  %95 = load %struct.listen_sock*, %struct.listen_sock** %10, align 8
  %96 = getelementptr inbounds %struct.listen_sock, %struct.listen_sock* %95, i32 0, i32 1
  %97 = load %struct.request_sock**, %struct.request_sock*** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.request_sock*, %struct.request_sock** %97, i64 %99
  %101 = load %struct.request_sock*, %struct.request_sock** %100, align 8
  store %struct.request_sock* %101, %struct.request_sock** %19, align 8
  store i32 0, i32* %15, align 4
  %102 = load %struct.request_sock*, %struct.request_sock** %19, align 8
  store %struct.request_sock* %102, %struct.request_sock** %18, align 8
  br label %103

103:                                              ; preds = %187, %94
  %104 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %105 = icmp ne %struct.request_sock* %104, null
  br i1 %105, label %106, label %193

106:                                              ; preds = %103
  %107 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %108 = call %struct.inet_request_sock* @inet_rsk(%struct.request_sock* %107)
  store %struct.inet_request_sock* %108, %struct.inet_request_sock** %20, align 8
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  br label %187

113:                                              ; preds = %106
  %114 = load %struct.inet_diag_req*, %struct.inet_diag_req** %8, align 8
  %115 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.inet_request_sock*, %struct.inet_request_sock** %20, align 8
  %119 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %117, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %113
  %123 = load %struct.inet_diag_req*, %struct.inet_diag_req** %8, align 8
  %124 = getelementptr inbounds %struct.inet_diag_req, %struct.inet_diag_req* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %187

129:                                              ; preds = %122, %113
  %130 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %131 = icmp ne %struct.nlattr* %130, null
  br i1 %131, label %132, label %152

132:                                              ; preds = %129
  %133 = load %struct.inet_request_sock*, %struct.inet_request_sock** %20, align 8
  %134 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 3
  store i32* %134, i32** %135, align 8
  %136 = load %struct.inet_request_sock*, %struct.inet_request_sock** %20, align 8
  %137 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 2
  store i32* %137, i32** %138, align 8
  %139 = load %struct.inet_request_sock*, %struct.inet_request_sock** %20, align 8
  %140 = getelementptr inbounds %struct.inet_request_sock, %struct.inet_request_sock* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @ntohs(i64 %141)
  %143 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 1
  store i32 %142, i32* %143, align 8
  %144 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %145 = call i32 @nla_data(%struct.nlattr* %144)
  %146 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %147 = call i32 @nla_len(%struct.nlattr* %146)
  %148 = call i32 @inet_diag_bc_run(i32 %145, i32 %147, %struct.inet_diag_entry* %7)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %132
  br label %187

151:                                              ; preds = %132
  br label %152

152:                                              ; preds = %151, %129
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = load %struct.sock*, %struct.sock** %5, align 8
  %155 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %156 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %157 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @NETLINK_CB(i32 %158)
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %164 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %163, i32 0, i32 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %169 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %168, i32 0, i32 1
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = call i32 @inet_diag_fill_req(%struct.sk_buff* %153, %struct.sock* %154, %struct.request_sock* %155, i32 %162, i32 %167, %struct.TYPE_16__* %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %152
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  %177 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %178 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 3
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load %struct.netlink_callback*, %struct.netlink_callback** %6, align 8
  %183 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 4
  store i32 %181, i32* %185, align 4
  br label %198

186:                                              ; preds = %152
  br label %187

187:                                              ; preds = %186, %150, %128, %112
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  %190 = load %struct.request_sock*, %struct.request_sock** %18, align 8
  %191 = getelementptr inbounds %struct.request_sock, %struct.request_sock* %190, i32 0, i32 0
  %192 = load %struct.request_sock*, %struct.request_sock** %191, align 8
  store %struct.request_sock* %192, %struct.request_sock** %18, align 8
  br label %103

193:                                              ; preds = %103
  store i32 0, i32* %16, align 4
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %13, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %13, align 4
  br label %88

197:                                              ; preds = %88
  br label %198

198:                                              ; preds = %197, %174, %65
  %199 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %9, align 8
  %200 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 0
  %202 = call i32 @read_unlock_bh(i32* %201)
  %203 = load i32, i32* %17, align 4
  ret i32 %203
}

declare dso_local %struct.inet_diag_req* @NLMSG_DATA(%struct.TYPE_16__*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i64 @nlmsg_attrlen(%struct.TYPE_16__*, i32) #1

declare dso_local %struct.nlattr* @nlmsg_find_attr(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.inet_request_sock* @inet_rsk(%struct.request_sock*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i32 @inet_diag_bc_run(i32, i32, %struct.inet_diag_entry*) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @inet_diag_fill_req(%struct.sk_buff*, %struct.sock*, %struct.request_sock*, i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
