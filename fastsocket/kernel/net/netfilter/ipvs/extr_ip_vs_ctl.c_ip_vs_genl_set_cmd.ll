; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_genl_set_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ip_vs_service = type { i32 }
%struct.ip_vs_service_user_kern = type { i64, i32, i32, i32, i32 }
%struct.ip_vs_dest_user_kern = type { i32 }
%struct.nlattr = type { i32 }

@__ip_vs_mutex = common dso_local global i32 0, align 4
@IPVS_CMD_FLUSH = common dso_local global i32 0, align 4
@IPVS_CMD_SET_CONFIG = common dso_local global i32 0, align 4
@IPVS_CMD_NEW_DAEMON = common dso_local global i32 0, align 4
@IPVS_CMD_DEL_DAEMON = common dso_local global i32 0, align 4
@IPVS_DAEMON_ATTR_MAX = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_DAEMON = common dso_local global i64 0, align 8
@ip_vs_daemon_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_SERVICE = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@IPVS_CMD_ATTR_DEST = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @ip_vs_genl_set_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_genl_set_cmd(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.ip_vs_service*, align 8
  %6 = alloca %struct.ip_vs_service_user_kern, align 8
  %7 = alloca %struct.ip_vs_dest_user_kern, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  store %struct.ip_vs_service* null, %struct.ip_vs_service** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = call i32 @mutex_lock(i32* @__ip_vs_mutex)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @IPVS_CMD_FLUSH, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = call i32 (...) @ip_vs_flush()
  store i32 %25, i32* %8, align 4
  br label %204

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @IPVS_CMD_SET_CONFIG, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %32 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @ip_vs_genl_set_config(i32* %33)
  store i32 %34, i32* %8, align 4
  br label %204

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @IPVS_CMD_NEW_DAEMON, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @IPVS_CMD_DEL_DAEMON, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @IPVS_DAEMON_ATTR_MAX, align 4
  %45 = add nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %12, align 8
  %48 = alloca %struct.nlattr*, i64 %46, align 16
  store i64 %46, i64* %13, align 8
  %49 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* @IPVS_CMD_ATTR_DAEMON, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %43
  %57 = load i32, i32* @IPVS_DAEMON_ATTR_MAX, align 4
  %58 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @IPVS_CMD_ATTR_DAEMON, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ip_vs_daemon_policy, align 4
  %65 = call i64 @nla_parse_nested(%struct.nlattr** %48, i32 %57, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56, %43
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %8, align 4
  store i32 2, i32* %14, align 4
  br label %79

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @IPVS_CMD_NEW_DAEMON, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @ip_vs_genl_new_daemon(%struct.nlattr** %48)
  store i32 %75, i32* %8, align 4
  br label %78

76:                                               ; preds = %70
  %77 = call i32 @ip_vs_genl_del_daemon(%struct.nlattr** %48)
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %74
  store i32 2, i32* %14, align 4
  br label %79

79:                                               ; preds = %78, %67
  %80 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %80)
  %81 = load i32, i32* %14, align 4
  switch i32 %81, label %213 [
    i32 2, label %204
  ]

82:                                               ; preds = %39
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 128
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %87 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @IPVS_CMD_ATTR_SERVICE, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %85
  %94 = call i32 (...) @ip_vs_zero_all()
  store i32 %94, i32* %8, align 4
  br label %204

95:                                               ; preds = %85, %82
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = icmp eq i32 %99, 131
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 129
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %101
  %106 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %107 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @IPVS_CMD_ATTR_SERVICE, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @ip_vs_genl_parse_service(%struct.ip_vs_service_user_kern* %6, i32 %111, i32 %112)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  br label %204

117:                                              ; preds = %105
  %118 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 3
  %127 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.ip_vs_service* @__ip_vs_service_get(i32 %123, i32 %125, i32* %126, i32 %128)
  store %struct.ip_vs_service* %129, %struct.ip_vs_service** %5, align 8
  br label %136

130:                                              ; preds = %117
  %131 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %6, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call %struct.ip_vs_service* @__ip_vs_svc_fwm_get(i32 %132, i64 %134)
  store %struct.ip_vs_service* %135, %struct.ip_vs_service** %5, align 8
  br label %136

136:                                              ; preds = %130, %121
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 131
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %141 = icmp eq %struct.ip_vs_service* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* @ESRCH, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %8, align 4
  br label %204

145:                                              ; preds = %139, %136
  %146 = load i32, i32* %9, align 4
  %147 = icmp eq i32 %146, 132
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  %150 = icmp eq i32 %149, 130
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %152, 134
  br i1 %153, label %154, label %171

154:                                              ; preds = %151, %148, %145
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 134
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 1, i32* %11, align 4
  br label %158

158:                                              ; preds = %157, %154
  %159 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %160 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @IPVS_CMD_ATTR_DEST, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @ip_vs_genl_parse_dest(%struct.ip_vs_dest_user_kern* %7, i32 %164, i32 %165)
  store i32 %166, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %158
  br label %204

170:                                              ; preds = %158
  br label %171

171:                                              ; preds = %170, %151
  %172 = load i32, i32* %9, align 4
  switch i32 %172, label %200 [
    i32 131, label %173
    i32 129, label %182
    i32 133, label %185
    i32 132, label %188
    i32 130, label %191
    i32 134, label %194
    i32 128, label %197
  ]

173:                                              ; preds = %171
  %174 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %175 = icmp eq %struct.ip_vs_service* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 @ip_vs_add_service(%struct.ip_vs_service_user_kern* %6, %struct.ip_vs_service** %5)
  store i32 %177, i32* %8, align 4
  br label %181

178:                                              ; preds = %173
  %179 = load i32, i32* @EEXIST, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %178, %176
  br label %203

182:                                              ; preds = %171
  %183 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %184 = call i32 @ip_vs_edit_service(%struct.ip_vs_service* %183, %struct.ip_vs_service_user_kern* %6)
  store i32 %184, i32* %8, align 4
  br label %203

185:                                              ; preds = %171
  %186 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %187 = call i32 @ip_vs_del_service(%struct.ip_vs_service* %186)
  store i32 %187, i32* %8, align 4
  br label %203

188:                                              ; preds = %171
  %189 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %190 = call i32 @ip_vs_add_dest(%struct.ip_vs_service* %189, %struct.ip_vs_dest_user_kern* %7)
  store i32 %190, i32* %8, align 4
  br label %203

191:                                              ; preds = %171
  %192 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %193 = call i32 @ip_vs_edit_dest(%struct.ip_vs_service* %192, %struct.ip_vs_dest_user_kern* %7)
  store i32 %193, i32* %8, align 4
  br label %203

194:                                              ; preds = %171
  %195 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %196 = call i32 @ip_vs_del_dest(%struct.ip_vs_service* %195, %struct.ip_vs_dest_user_kern* %7)
  store i32 %196, i32* %8, align 4
  br label %203

197:                                              ; preds = %171
  %198 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %199 = call i32 @ip_vs_zero_service(%struct.ip_vs_service* %198)
  store i32 %199, i32* %8, align 4
  br label %203

200:                                              ; preds = %171
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %8, align 4
  br label %203

203:                                              ; preds = %200, %197, %194, %191, %188, %185, %182, %181
  br label %204

204:                                              ; preds = %203, %169, %142, %116, %93, %79, %30, %24
  %205 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %206 = icmp ne %struct.ip_vs_service* %205, null
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load %struct.ip_vs_service*, %struct.ip_vs_service** %5, align 8
  %209 = call i32 @ip_vs_service_put(%struct.ip_vs_service* %208)
  br label %210

210:                                              ; preds = %207, %204
  %211 = call i32 @mutex_unlock(i32* @__ip_vs_mutex)
  %212 = load i32, i32* %8, align 4
  ret i32 %212

213:                                              ; preds = %79
  unreachable
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ip_vs_flush(...) #1

declare dso_local i32 @ip_vs_genl_set_config(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, i32, i32) #1

declare dso_local i32 @ip_vs_genl_new_daemon(%struct.nlattr**) #1

declare dso_local i32 @ip_vs_genl_del_daemon(%struct.nlattr**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ip_vs_zero_all(...) #1

declare dso_local i32 @ip_vs_genl_parse_service(%struct.ip_vs_service_user_kern*, i32, i32) #1

declare dso_local %struct.ip_vs_service* @__ip_vs_service_get(i32, i32, i32*, i32) #1

declare dso_local %struct.ip_vs_service* @__ip_vs_svc_fwm_get(i32, i64) #1

declare dso_local i32 @ip_vs_genl_parse_dest(%struct.ip_vs_dest_user_kern*, i32, i32) #1

declare dso_local i32 @ip_vs_add_service(%struct.ip_vs_service_user_kern*, %struct.ip_vs_service**) #1

declare dso_local i32 @ip_vs_edit_service(%struct.ip_vs_service*, %struct.ip_vs_service_user_kern*) #1

declare dso_local i32 @ip_vs_del_service(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_add_dest(%struct.ip_vs_service*, %struct.ip_vs_dest_user_kern*) #1

declare dso_local i32 @ip_vs_edit_dest(%struct.ip_vs_service*, %struct.ip_vs_dest_user_kern*) #1

declare dso_local i32 @ip_vs_del_dest(%struct.ip_vs_service*, %struct.ip_vs_dest_user_kern*) #1

declare dso_local i32 @ip_vs_zero_service(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_service_put(%struct.ip_vs_service*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
