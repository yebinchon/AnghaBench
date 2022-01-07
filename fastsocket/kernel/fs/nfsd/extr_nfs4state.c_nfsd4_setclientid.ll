; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_nfsd4_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.nfsd4_compound_state = type { i32 }
%struct.nfsd4_setclientid = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.xdr_netobj = type { i32, i32 }
%struct.nfs4_client = type { %struct.TYPE_8__, %struct.TYPE_6__, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sockaddr = type { i32 }

@HEXDIR_LEN = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i64 0, align 8
@nfserr_clid_inuse = common dso_local global i64 0, align 8
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"NFSD: setclientid: string in use by client at %s\0A\00", align 1
@nfserr_resource = common dso_local global i64 0, align 8
@nfs_ok = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfsd4_setclientid(%struct.svc_rqst* %0, %struct.nfsd4_compound_state* %1, %struct.nfsd4_setclientid* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.nfsd4_compound_state*, align 8
  %7 = alloca %struct.nfsd4_setclientid*, align 8
  %8 = alloca %struct.xdr_netobj, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs4_client*, align 8
  %12 = alloca %struct.nfs4_client*, align 8
  %13 = alloca %struct.nfs4_client*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.nfsd4_compound_state* %1, %struct.nfsd4_compound_state** %6, align 8
  store %struct.nfsd4_setclientid* %2, %struct.nfsd4_setclientid** %7, align 8
  %20 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %8, i32 0, i32 0
  %21 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %22 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %8, i32 0, i32 1
  %25 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %26 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %24, align 4
  %28 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @HEXDIR_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %15, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %16, align 8
  %35 = bitcast %struct.xdr_netobj* %8 to i64*
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @check_name(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %3
  %40 = load i64, i64* @nfserr_inval, align 8
  store i64 %40, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %188

41:                                               ; preds = %3
  %42 = call i64 @nfs4_make_rec_clidname(i8* %34, %struct.xdr_netobj* %8)
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* %14, align 8
  store i64 %46, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %188

47:                                               ; preds = %41
  %48 = call i32 @clientstr_hashval(i8* %34)
  store i32 %48, i32* %10, align 4
  %49 = call i32 (...) @nfs4_lock_state()
  %50 = load i32, i32* %10, align 4
  %51 = call %struct.nfs4_client* @find_confirmed_client_by_str(i8* %34, i32 %50, i32 0)
  store %struct.nfs4_client* %51, %struct.nfs4_client** %11, align 8
  %52 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %53 = icmp ne %struct.nfs4_client* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %47
  %55 = load i64, i64* @nfserr_clid_inuse, align 8
  store i64 %55, i64* %14, align 8
  %56 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %57 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %56, i32 0, i32 5
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 0
  %60 = call i32 @same_creds(i32* %57, i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %64 = zext i32 %63 to i64
  %65 = call i8* @llvm.stacksave()
  store i8* %65, i8** %18, align 8
  %66 = alloca i8, i64 %64, align 16
  store i64 %64, i64* %19, align 8
  %67 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %68 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %67, i32 0, i32 4
  %69 = bitcast i32* %68 to %struct.sockaddr*
  %70 = trunc i64 %64 to i32
  %71 = call i32 @rpc_ntop(%struct.sockaddr* %69, i8* %66, i32 %70)
  %72 = call i32 @dprintk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %66)
  store i32 2, i32* %17, align 4
  %73 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %17, align 4
  switch i32 %74, label %188 [
    i32 2, label %185
  ]

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %47
  %77 = load i32, i32* %10, align 4
  %78 = call %struct.nfs4_client* @find_unconfirmed_client_by_str(i8* %34, i32 %77, i32 0)
  store %struct.nfs4_client* %78, %struct.nfs4_client** %12, align 8
  %79 = load i64, i64* @nfserr_resource, align 8
  store i64 %79, i64* %14, align 8
  %80 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %81 = icmp ne %struct.nfs4_client* %80, null
  br i1 %81, label %99, label %82

82:                                               ; preds = %76
  %83 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %84 = icmp ne %struct.nfs4_client* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %87 = call i32 @expire_client(%struct.nfs4_client* %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %90 = bitcast %struct.xdr_netobj* %8 to i64*
  %91 = load i64, i64* %90, align 4
  %92 = call %struct.nfs4_client* @create_client(i64 %91, i8* %34, %struct.svc_rqst* %89, i32* %9)
  store %struct.nfs4_client* %92, %struct.nfs4_client** %13, align 8
  %93 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %94 = icmp eq %struct.nfs4_client* %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %185

96:                                               ; preds = %88
  %97 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %98 = call i32 @gen_clid(%struct.nfs4_client* %97)
  br label %151

99:                                               ; preds = %76
  %100 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %101 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %100, i32 0, i32 3
  %102 = call i64 @same_verf(i32* %101, i32* %9)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %106 = icmp ne %struct.nfs4_client* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %109 = call i32 @expire_client(%struct.nfs4_client* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %112 = bitcast %struct.xdr_netobj* %8 to i64*
  %113 = load i64, i64* %112, align 4
  %114 = call %struct.nfs4_client* @create_client(i64 %113, i8* %34, %struct.svc_rqst* %111, i32* %9)
  store %struct.nfs4_client* %114, %struct.nfs4_client** %13, align 8
  %115 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %116 = icmp eq %struct.nfs4_client* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %185

118:                                              ; preds = %110
  %119 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %120 = load %struct.nfs4_client*, %struct.nfs4_client** %11, align 8
  %121 = call i32 @copy_clid(%struct.nfs4_client* %119, %struct.nfs4_client* %120)
  br label %150

122:                                              ; preds = %99
  %123 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %124 = icmp ne %struct.nfs4_client* %123, null
  br i1 %124, label %136, label %125

125:                                              ; preds = %122
  %126 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %127 = bitcast %struct.xdr_netobj* %8 to i64*
  %128 = load i64, i64* %127, align 4
  %129 = call %struct.nfs4_client* @create_client(i64 %128, i8* %34, %struct.svc_rqst* %126, i32* %9)
  store %struct.nfs4_client* %129, %struct.nfs4_client** %13, align 8
  %130 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %131 = icmp eq %struct.nfs4_client* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %185

133:                                              ; preds = %125
  %134 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %135 = call i32 @gen_clid(%struct.nfs4_client* %134)
  br label %149

136:                                              ; preds = %122
  %137 = load %struct.nfs4_client*, %struct.nfs4_client** %12, align 8
  %138 = call i32 @expire_client(%struct.nfs4_client* %137)
  %139 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %140 = bitcast %struct.xdr_netobj* %8 to i64*
  %141 = load i64, i64* %140, align 4
  %142 = call %struct.nfs4_client* @create_client(i64 %141, i8* %34, %struct.svc_rqst* %139, i32* %9)
  store %struct.nfs4_client* %142, %struct.nfs4_client** %13, align 8
  %143 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %144 = icmp eq %struct.nfs4_client* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  br label %185

146:                                              ; preds = %136
  %147 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %148 = call i32 @gen_clid(%struct.nfs4_client* %147)
  br label %149

149:                                              ; preds = %146, %133
  br label %150

150:                                              ; preds = %149, %118
  br label %151

151:                                              ; preds = %150, %96
  %152 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %153 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %155 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %156 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %157 = call i32 @gen_callback(%struct.nfs4_client* %154, %struct.nfsd4_setclientid* %155, %struct.svc_rqst* %156)
  %158 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @add_to_unconfirmed(%struct.nfs4_client* %158, i32 %159)
  %161 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %162 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %166 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %169 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %173 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  %175 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %7, align 8
  %176 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.nfs4_client*, %struct.nfs4_client** %13, align 8
  %180 = getelementptr inbounds %struct.nfs4_client, %struct.nfs4_client* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @memcpy(i32 %178, i32 %182, i32 4)
  %184 = load i64, i64* @nfs_ok, align 8
  store i64 %184, i64* %14, align 8
  br label %185

185:                                              ; preds = %151, %62, %145, %132, %117, %95
  %186 = call i32 (...) @nfs4_unlock_state()
  %187 = load i64, i64* %14, align 8
  store i64 %187, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %188

188:                                              ; preds = %185, %62, %45, %39
  %189 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i64, i64* %4, align 8
  ret i64 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_name(i64) #2

declare dso_local i64 @nfs4_make_rec_clidname(i8*, %struct.xdr_netobj*) #2

declare dso_local i32 @clientstr_hashval(i8*) #2

declare dso_local i32 @nfs4_lock_state(...) #2

declare dso_local %struct.nfs4_client* @find_confirmed_client_by_str(i8*, i32, i32) #2

declare dso_local i32 @same_creds(i32*, i32*) #2

declare dso_local i32 @rpc_ntop(%struct.sockaddr*, i8*, i32) #2

declare dso_local i32 @dprintk(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.nfs4_client* @find_unconfirmed_client_by_str(i8*, i32, i32) #2

declare dso_local i32 @expire_client(%struct.nfs4_client*) #2

declare dso_local %struct.nfs4_client* @create_client(i64, i8*, %struct.svc_rqst*, i32*) #2

declare dso_local i32 @gen_clid(%struct.nfs4_client*) #2

declare dso_local i64 @same_verf(i32*, i32*) #2

declare dso_local i32 @copy_clid(%struct.nfs4_client*, %struct.nfs4_client*) #2

declare dso_local i32 @gen_callback(%struct.nfs4_client*, %struct.nfsd4_setclientid*, %struct.svc_rqst*) #2

declare dso_local i32 @add_to_unconfirmed(%struct.nfs4_client*, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @nfs4_unlock_state(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
