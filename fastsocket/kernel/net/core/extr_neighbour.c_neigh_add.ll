; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_neighbour.c_neigh_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.neigh_table = type { i64, i64, %struct.neigh_table* }
%struct.sk_buff = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.net = type { i32 }
%struct.ndmsg = type { i64, i32, i32, i64 }
%struct.net_device = type { i64 }
%struct.neighbour = type { i32 }
%struct.pneigh_entry = type { i32 }
%struct.nlattr = type { i32 }

@NDA_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NDA_DST = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i64 0, align 8
@neigh_tbl_lock = common dso_local global i32 0, align 4
@neigh_tables = common dso_local global %struct.neigh_table* null, align 8
@NEIGH_UPDATE_F_ADMIN = common dso_local global i32 0, align 4
@NEIGH_UPDATE_F_OVERRIDE = common dso_local global i32 0, align 4
@NTF_PROXY = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@NLM_F_CREATE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NLM_F_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@NLM_F_REPLACE = common dso_local global i32 0, align 4
@NTF_USE = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.nlmsghdr*, i8*)* @neigh_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @neigh_add(%struct.sk_buff* %0, %struct.nlmsghdr* %1, i8* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nlmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.ndmsg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.neigh_table*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.neighbour*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.pneigh_entry*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.nlmsghdr* %1, %struct.nlmsghdr** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net* @sock_net(i32 %21)
  store %struct.net* %22, %struct.net** %7, align 8
  %23 = load i32, i32* @NDA_MAX, align 4
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca %struct.nlattr*, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  store %struct.net_device* null, %struct.net_device** %12, align 8
  %28 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %29 = load i32, i32* @NDA_MAX, align 4
  %30 = call i32 @nlmsg_parse(%struct.nlmsghdr* %28, i32 24, %struct.nlattr** %27, i32 %29, i32* null)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %241

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %13, align 4
  %37 = load i64, i64* @NDA_DST, align 8
  %38 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %37
  %39 = load %struct.nlattr*, %struct.nlattr** %38, align 8
  %40 = icmp eq %struct.nlattr* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %241

42:                                               ; preds = %34
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %44 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %43)
  store %struct.ndmsg* %44, %struct.ndmsg** %8, align 8
  %45 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %46 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %76

49:                                               ; preds = %42
  %50 = load %struct.net*, %struct.net** %7, align 8
  %51 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %52 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call %struct.net_device* @dev_get_by_index(%struct.net* %50, i64 %53)
  store %struct.net_device* %54, %struct.net_device** %12, align 8
  %55 = load %struct.net_device*, %struct.net_device** %12, align 8
  %56 = icmp eq %struct.net_device* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %241

60:                                               ; preds = %49
  %61 = load i64, i64* @NDA_LLADDR, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i64, i64* @NDA_LLADDR, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i64 @nla_len(%struct.nlattr* %68)
  %70 = load %struct.net_device*, %struct.net_device** %12, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %234

75:                                               ; preds = %65, %60
  br label %76

76:                                               ; preds = %75, %42
  %77 = call i32 @read_lock(i32* @neigh_tbl_lock)
  %78 = load %struct.neigh_table*, %struct.neigh_table** @neigh_tables, align 8
  store %struct.neigh_table* %78, %struct.neigh_table** %11, align 8
  br label %79

79:                                               ; preds = %226, %76
  %80 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %81 = icmp ne %struct.neigh_table* %80, null
  br i1 %81, label %82, label %230

82:                                               ; preds = %79
  %83 = load i32, i32* @NEIGH_UPDATE_F_ADMIN, align 4
  %84 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %14, align 4
  %86 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %87 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %90 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %226

94:                                               ; preds = %82
  %95 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  %96 = load i64, i64* @NDA_DST, align 8
  %97 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %96
  %98 = load %struct.nlattr*, %struct.nlattr** %97, align 8
  %99 = call i64 @nla_len(%struct.nlattr* %98)
  %100 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %101 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %234

105:                                              ; preds = %94
  %106 = load i64, i64* @NDA_DST, align 8
  %107 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %106
  %108 = load %struct.nlattr*, %struct.nlattr** %107, align 8
  %109 = call i32* @nla_data(%struct.nlattr* %108)
  %110 = bitcast i32* %109 to i8*
  store i8* %110, i8** %16, align 8
  %111 = load i64, i64* @NDA_LLADDR, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = icmp ne %struct.nlattr* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %105
  %116 = load i64, i64* @NDA_LLADDR, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = call i32* @nla_data(%struct.nlattr* %118)
  br label %121

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %115
  %122 = phi i32* [ %119, %115 ], [ null, %120 ]
  %123 = bitcast i32* %122 to i8*
  store i8* %123, i8** %17, align 8
  %124 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %125 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @NTF_PROXY, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %121
  %131 = load i32, i32* @ENOBUFS, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %13, align 4
  %133 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %134 = load %struct.net*, %struct.net** %7, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load %struct.net_device*, %struct.net_device** %12, align 8
  %137 = call %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table* %133, %struct.net* %134, i8* %135, %struct.net_device* %136, i32 1)
  store %struct.pneigh_entry* %137, %struct.pneigh_entry** %18, align 8
  %138 = load %struct.pneigh_entry*, %struct.pneigh_entry** %18, align 8
  %139 = icmp ne %struct.pneigh_entry* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %130
  %141 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %142 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.pneigh_entry*, %struct.pneigh_entry** %18, align 8
  %145 = getelementptr inbounds %struct.pneigh_entry, %struct.pneigh_entry* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %13, align 4
  br label %146

146:                                              ; preds = %140, %130
  br label %234

147:                                              ; preds = %121
  %148 = load %struct.net_device*, %struct.net_device** %12, align 8
  %149 = icmp eq %struct.net_device* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %147
  br label %234

151:                                              ; preds = %147
  %152 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %153 = load i8*, i8** %16, align 8
  %154 = load %struct.net_device*, %struct.net_device** %12, align 8
  %155 = call %struct.neighbour* @neigh_lookup(%struct.neigh_table* %152, i8* %153, %struct.net_device* %154)
  store %struct.neighbour* %155, %struct.neighbour** %15, align 8
  %156 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %157 = icmp eq %struct.neighbour* %156, null
  br i1 %157, label %158, label %180

158:                                              ; preds = %151
  %159 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %160 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NLM_F_CREATE, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = load i32, i32* @ENOENT, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %13, align 4
  br label %234

168:                                              ; preds = %158
  %169 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = load %struct.net_device*, %struct.net_device** %12, align 8
  %172 = call %struct.neighbour* @__neigh_lookup_errno(%struct.neigh_table* %169, i8* %170, %struct.net_device* %171)
  store %struct.neighbour* %172, %struct.neighbour** %15, align 8
  %173 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %174 = call i64 @IS_ERR(%struct.neighbour* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %178 = call i32 @PTR_ERR(%struct.neighbour* %177)
  store i32 %178, i32* %13, align 4
  br label %234

179:                                              ; preds = %168
  br label %205

180:                                              ; preds = %151
  %181 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %182 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @NLM_F_EXCL, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %180
  %188 = load i32, i32* @EEXIST, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %13, align 4
  %190 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %191 = call i32 @neigh_release(%struct.neighbour* %190)
  br label %234

192:                                              ; preds = %180
  %193 = load %struct.nlmsghdr*, %struct.nlmsghdr** %5, align 8
  %194 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @NLM_F_REPLACE, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %192
  %200 = load i32, i32* @NEIGH_UPDATE_F_OVERRIDE, align 4
  %201 = xor i32 %200, -1
  %202 = load i32, i32* %14, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %14, align 4
  br label %204

204:                                              ; preds = %199, %192
  br label %205

205:                                              ; preds = %204, %179
  %206 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %207 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @NTF_USE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %214 = call i32 @neigh_event_send(%struct.neighbour* %213, i32* null)
  store i32 0, i32* %13, align 4
  br label %223

215:                                              ; preds = %205
  %216 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %217 = load i8*, i8** %17, align 8
  %218 = load %struct.ndmsg*, %struct.ndmsg** %8, align 8
  %219 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %14, align 4
  %222 = call i32 @neigh_update(%struct.neighbour* %216, i8* %217, i32 %220, i32 %221)
  store i32 %222, i32* %13, align 4
  br label %223

223:                                              ; preds = %215, %212
  %224 = load %struct.neighbour*, %struct.neighbour** %15, align 8
  %225 = call i32 @neigh_release(%struct.neighbour* %224)
  br label %234

226:                                              ; preds = %93
  %227 = load %struct.neigh_table*, %struct.neigh_table** %11, align 8
  %228 = getelementptr inbounds %struct.neigh_table, %struct.neigh_table* %227, i32 0, i32 2
  %229 = load %struct.neigh_table*, %struct.neigh_table** %228, align 8
  store %struct.neigh_table* %229, %struct.neigh_table** %11, align 8
  br label %79

230:                                              ; preds = %79
  %231 = call i32 @read_unlock(i32* @neigh_tbl_lock)
  %232 = load i32, i32* @EAFNOSUPPORT, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %13, align 4
  br label %234

234:                                              ; preds = %230, %223, %187, %176, %165, %150, %146, %104, %74
  %235 = load %struct.net_device*, %struct.net_device** %12, align 8
  %236 = icmp ne %struct.net_device* %235, null
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load %struct.net_device*, %struct.net_device** %12, align 8
  %239 = call i32 @dev_put(%struct.net_device* %238)
  br label %240

240:                                              ; preds = %237, %234
  br label %241

241:                                              ; preds = %240, %57, %41, %33
  %242 = load i32, i32* %13, align 4
  %243 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %243)
  ret i32 %242
}

declare dso_local %struct.net* @sock_net(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nlmsg_parse(%struct.nlmsghdr*, i32, %struct.nlattr**, i32, i32*) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i64) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.pneigh_entry* @pneigh_lookup(%struct.neigh_table*, %struct.net*, i8*, %struct.net_device*, i32) #1

declare dso_local %struct.neighbour* @neigh_lookup(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local %struct.neighbour* @__neigh_lookup_errno(%struct.neigh_table*, i8*, %struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @PTR_ERR(%struct.neighbour*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @neigh_event_send(%struct.neighbour*, i32*) #1

declare dso_local i32 @neigh_update(%struct.neighbour*, i8*, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
