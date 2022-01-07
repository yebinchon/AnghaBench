; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_setclientid_confirm = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.nfs4_client = type { i32, i32, i32, i32, i32, i32 }

@nfserr_stale_clientid = common dso_local global i32 0, align 4
@nfserr_clid_inuse = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_setclientid_confirm(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_setclientid_confirm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_setclientid_confirm*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.nfs4_client*, align 8
  %10 = alloca %struct.nfs4_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_setclientid_confirm* %2, %struct.nfsd4_setclientid_confirm** %7, align 8
  %15 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %16 = call %struct.sockaddr* @svc_addr(%struct.svc_rqst* %15)
  store %struct.sockaddr* %16, %struct.sockaddr** %8, align 8
  %17 = load %struct.nfsd4_setclientid_confirm*, %struct.nfsd4_setclientid_confirm** %7, align 8
  %18 = getelementptr inbounds %struct.nfsd4_setclientid_confirm, %struct.nfsd4_setclientid_confirm* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.nfsd4_setclientid_confirm*, %struct.nfsd4_setclientid_confirm** %7, align 8
  %21 = getelementptr inbounds %struct.nfsd4_setclientid_confirm, %struct.nfsd4_setclientid_confirm* %20, i32 0, i32 0
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @STALE_CLIENTID(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %26, i32* %4, align 4
  br label %185

27:                                               ; preds = %3
  %28 = call i32 (...) @nfs4_lock_state()
  %29 = load i32*, i32** %12, align 8
  %30 = call %struct.nfs4_client* @find_confirmed_client(i32* %29)
  store %struct.nfs4_client* %30, %struct.nfs4_client** %9, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = call %struct.nfs4_client* @find_unconfirmed_client(i32* %31)
  store %struct.nfs4_client* %32, %struct.nfs4_client** %10, align 8
  %33 = load i32, i32* @nfserr_clid_inuse, align 4
  store i32 %33, i32* %13, align 4
  %34 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %35 = icmp ne %struct.nfs4_client* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %27
  %37 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %38 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %37, i32 0, i32 5
  %39 = bitcast i32* %38 to %struct.sockaddr*
  %40 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %41 = call i32 @rpc_cmp_addr(%struct.sockaddr* %39, %struct.sockaddr* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %182

44:                                               ; preds = %36, %27
  %45 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %46 = icmp ne %struct.nfs4_client* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %49 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %48, i32 0, i32 5
  %50 = bitcast i32* %49 to %struct.sockaddr*
  %51 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %52 = call i32 @rpc_cmp_addr(%struct.sockaddr* %50, %struct.sockaddr* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %182

55:                                               ; preds = %47, %44
  %56 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %57 = icmp ne %struct.nfs4_client* %56, null
  br i1 %57, label %58, label %89

58:                                               ; preds = %55
  %59 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %60 = icmp ne %struct.nfs4_client* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %62, i32 0, i32 0
  %64 = call i64 @same_verf(i32* %11, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %61
  %67 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %68 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %67, i32 0, i32 2
  %69 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %70 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %69, i32 0, i32 2
  %71 = call i32 @same_creds(i32* %68, i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = load i32, i32* @nfserr_clid_inuse, align 4
  store i32 %74, i32* %13, align 4
  br label %88

75:                                               ; preds = %66
  %76 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %77 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %76, i32 0, i32 4
  %78 = call i32 @atomic_set(i32* %77, i32 0)
  %79 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %80 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %81 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %80, i32 0, i32 3
  %82 = call i32 @nfsd4_change_callback(%struct.nfs4_client* %79, i32* %81)
  %83 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %84 = call i32 @nfsd4_probe_callback(%struct.nfs4_client* %83)
  %85 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %86 = call i32 @expire_client(%struct.nfs4_client* %85)
  %87 = load i32, i32* @nfs_ok, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %75, %73
  br label %181

89:                                               ; preds = %61, %58, %55
  %90 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %91 = icmp ne %struct.nfs4_client* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %89
  %93 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %94 = icmp ne %struct.nfs4_client* %93, null
  br i1 %94, label %107, label %95

95:                                               ; preds = %92
  %96 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %97 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %96, i32 0, i32 2
  %98 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %99 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %98, i32 0, i32 0
  %100 = call i32 @same_creds(i32* %97, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* @nfserr_clid_inuse, align 4
  store i32 %103, i32* %13, align 4
  br label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @nfs_ok, align 4
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %104, %102
  br label %180

107:                                              ; preds = %92, %89
  %108 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %109 = icmp ne %struct.nfs4_client* %108, null
  br i1 %109, label %152, label %110

110:                                              ; preds = %107
  %111 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %112 = icmp ne %struct.nfs4_client* %111, null
  br i1 %112, label %113, label %152

113:                                              ; preds = %110
  %114 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %115 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %114, i32 0, i32 0
  %116 = call i64 @same_verf(i32* %115, i32* %11)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %152

118:                                              ; preds = %113
  %119 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %120 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %119, i32 0, i32 2
  %121 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %122 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %121, i32 0, i32 0
  %123 = call i32 @same_creds(i32* %120, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* @nfserr_clid_inuse, align 4
  store i32 %126, i32* %13, align 4
  br label %151

127:                                              ; preds = %118
  %128 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %129 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clientstr_hashval(i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %133 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call %struct.nfs4_client* @find_confirmed_client_by_str(i32 %134, i32 %135, i32 0)
  store %struct.nfs4_client* %136, %struct.nfs4_client** %9, align 8
  %137 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %138 = icmp ne %struct.nfs4_client* %137, null
  br i1 %138, label %139, label %144

139:                                              ; preds = %127
  %140 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %141 = call i32 @nfsd4_remove_clid_dir(%struct.nfs4_client* %140)
  %142 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %143 = call i32 @expire_client(%struct.nfs4_client* %142)
  br label %144

144:                                              ; preds = %139, %127
  %145 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %146 = call i32 @move_to_confirmed(%struct.nfs4_client* %145)
  %147 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  store %struct.nfs4_client* %147, %struct.nfs4_client** %9, align 8
  %148 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %149 = call i32 @nfsd4_probe_callback(%struct.nfs4_client* %148)
  %150 = load i32, i32* @nfs_ok, align 4
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %144, %125
  br label %179

152:                                              ; preds = %113, %110, %107
  %153 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %154 = icmp ne %struct.nfs4_client* %153, null
  br i1 %154, label %155, label %163

155:                                              ; preds = %152
  %156 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %157 = icmp ne %struct.nfs4_client* %156, null
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load %struct.nfs4_client*, %struct.nfs4_client** %9, align 8
  %160 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %159, i32 0, i32 0
  %161 = call i64 @same_verf(i32* %160, i32* %11)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %158, %152
  %164 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %165 = icmp ne %struct.nfs4_client* %164, null
  br i1 %165, label %166, label %174

166:                                              ; preds = %163
  %167 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %168 = icmp ne %struct.nfs4_client* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.nfs4_client*, %struct.nfs4_client** %10, align 8
  %171 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %170, i32 0, i32 0
  %172 = call i64 @same_verf(i32* %171, i32* %11)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %169, %163
  %175 = load i32, i32* @nfserr_stale_clientid, align 4
  store i32 %175, i32* %13, align 4
  br label %178

176:                                              ; preds = %169, %166, %158, %155
  %177 = load i32, i32* @nfserr_clid_inuse, align 4
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %176, %174
  br label %179

179:                                              ; preds = %178, %151
  br label %180

180:                                              ; preds = %179, %106
  br label %181

181:                                              ; preds = %180, %88
  br label %182

182:                                              ; preds = %181, %54, %43
  %183 = call i32 (...) @nfs4_unlock_state()
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %4, align 4
  br label %185

185:                                              ; preds = %182, %25
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.sockaddr* @svc_addr(%struct.svc_rqst*) #1

declare dso_local i64 @STALE_CLIENTID(i32*) #1

declare dso_local i32 @nfs4_lock_state(...) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client(i32*) #1

declare dso_local %struct.nfs4_client* @find_unconfirmed_client(i32*) #1

declare dso_local i32 @rpc_cmp_addr(%struct.sockaddr*, %struct.sockaddr*) #1

declare dso_local i64 @same_verf(i32*, i32*) #1

declare dso_local i32 @same_creds(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nfsd4_change_callback(%struct.nfs4_client*, i32*) #1

declare dso_local i32 @nfsd4_probe_callback(%struct.nfs4_client*) #1

declare dso_local i32 @expire_client(%struct.nfs4_client*) #1

declare dso_local i32 @clientstr_hashval(i32) #1

declare dso_local %struct.nfs4_client* @find_confirmed_client_by_str(i32, i32, i32) #1

declare dso_local i32 @nfsd4_remove_clid_dir(%struct.nfs4_client*) #1

declare dso_local i32 @move_to_confirmed(%struct.nfs4_client*) #1

declare dso_local i32 @nfs4_unlock_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
