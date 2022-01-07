; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_server_capabilities.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c__nfs4_server_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_server = type { i32*, i32, i32*, i32, i32 }
%struct.nfs_fh = type { i32 }
%struct.nfs4_server_caps_arg = type { i32, %struct.nfs_fh* }
%struct.nfs4_server_caps_res = type { i32*, i64, i64, i32, i32 }
%struct.rpc_message = type { %struct.nfs4_server_caps_res*, %struct.nfs4_server_caps_arg*, i32* }

@nfs4_procedures = common dso_local global i32* null, align 8
@NFSPROC4_CLNT_SERVER_CAPS = common dso_local global i64 0, align 8
@NFS_CAP_ACLS = common dso_local global i32 0, align 4
@NFS_CAP_HARDLINKS = common dso_local global i32 0, align 4
@NFS_CAP_SYMLINKS = common dso_local global i32 0, align 4
@NFS_CAP_FILEID = common dso_local global i32 0, align 4
@NFS_CAP_MODE = common dso_local global i32 0, align 4
@NFS_CAP_NLINK = common dso_local global i32 0, align 4
@NFS_CAP_OWNER = common dso_local global i32 0, align 4
@NFS_CAP_OWNER_GROUP = common dso_local global i32 0, align 4
@NFS_CAP_ATIME = common dso_local global i32 0, align 4
@NFS_CAP_CTIME = common dso_local global i32 0, align 4
@NFS_CAP_MTIME = common dso_local global i32 0, align 4
@FATTR4_WORD0_ACL = common dso_local global i32 0, align 4
@FATTR4_WORD0_FILEID = common dso_local global i32 0, align 4
@FATTR4_WORD1_MODE = common dso_local global i32 0, align 4
@FATTR4_WORD1_NUMLINKS = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER = common dso_local global i32 0, align 4
@FATTR4_WORD1_OWNER_GROUP = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_ACCESS = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_METADATA = common dso_local global i32 0, align 4
@FATTR4_WORD1_TIME_MODIFY = common dso_local global i32 0, align 4
@FATTR4_WORD0_CHANGE = common dso_local global i32 0, align 4
@FATTR4_WORD0_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_server*, %struct.nfs_fh*)* @_nfs4_server_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_nfs4_server_capabilities(%struct.nfs_server* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca %struct.nfs_server*, align 8
  %4 = alloca %struct.nfs_fh*, align 8
  %5 = alloca %struct.nfs4_server_caps_arg, align 8
  %6 = alloca %struct.nfs4_server_caps_res, align 8
  %7 = alloca %struct.rpc_message, align 8
  %8 = alloca i32, align 4
  store %struct.nfs_server* %0, %struct.nfs_server** %3, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %4, align 8
  %9 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %5, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %5, i32 0, i32 1
  %11 = load %struct.nfs_fh*, %struct.nfs_fh** %4, align 8
  store %struct.nfs_fh* %11, %struct.nfs_fh** %10, align 8
  %12 = bitcast %struct.nfs4_server_caps_res* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 0
  store %struct.nfs4_server_caps_res* %6, %struct.nfs4_server_caps_res** %13, align 8
  %14 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 1
  store %struct.nfs4_server_caps_arg* %5, %struct.nfs4_server_caps_arg** %14, align 8
  %15 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %7, i32 0, i32 2
  %16 = load i32*, i32** @nfs4_procedures, align 8
  %17 = load i64, i64* @NFSPROC4_CLNT_SERVER_CAPS, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32* %18, i32** %15, align 8
  %19 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %20 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %23 = getelementptr inbounds %struct.nfs4_server_caps_arg, %struct.nfs4_server_caps_arg* %5, i32 0, i32 0
  %24 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 4
  %25 = call i32 @nfs4_call_sync(i32 %21, %struct.nfs_server* %22, %struct.rpc_message* %7, i32* %23, i32* %24, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %235

28:                                               ; preds = %2
  %29 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %30 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @memcpy(i32* %31, i32* %33, i32 8)
  %35 = load i32, i32* @NFS_CAP_ACLS, align 4
  %36 = load i32, i32* @NFS_CAP_HARDLINKS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @NFS_CAP_SYMLINKS, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @NFS_CAP_FILEID, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @NFS_CAP_MODE, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @NFS_CAP_NLINK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NFS_CAP_OWNER, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NFS_CAP_OWNER_GROUP, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @NFS_CAP_ATIME, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @NFS_CAP_CTIME, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @NFS_CAP_MTIME, align 4
  %55 = or i32 %53, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %58 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FATTR4_WORD0_ACL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %28
  %69 = load i32, i32* @NFS_CAP_ACLS, align 4
  %70 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %71 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %68, %28
  %75 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @NFS_CAP_HARDLINKS, align 4
  %80 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %81 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %74
  %85 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @NFS_CAP_SYMLINKS, align 4
  %90 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %91 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %84
  %95 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FATTR4_WORD0_FILEID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32, i32* @NFS_CAP_FILEID, align 4
  %104 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %105 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %94
  %109 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @FATTR4_WORD1_MODE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* @NFS_CAP_MODE, align 4
  %118 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %119 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %116, %108
  %123 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @FATTR4_WORD1_NUMLINKS, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %122
  %131 = load i32, i32* @NFS_CAP_NLINK, align 4
  %132 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %133 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %131
  store i32 %135, i32* %133, align 8
  br label %136

136:                                              ; preds = %130, %122
  %137 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @FATTR4_WORD1_OWNER, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load i32, i32* @NFS_CAP_OWNER, align 4
  %146 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %147 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %144, %136
  %151 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @FATTR4_WORD1_OWNER_GROUP, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %150
  %159 = load i32, i32* @NFS_CAP_OWNER_GROUP, align 4
  %160 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %161 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %158, %150
  %165 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @FATTR4_WORD1_TIME_ACCESS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %164
  %173 = load i32, i32* @NFS_CAP_ATIME, align 4
  %174 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %175 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  br label %178

178:                                              ; preds = %172, %164
  %179 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @FATTR4_WORD1_TIME_METADATA, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %178
  %187 = load i32, i32* @NFS_CAP_CTIME, align 4
  %188 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %189 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %186, %178
  %193 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %192
  %201 = load i32, i32* @NFS_CAP_MTIME, align 4
  %202 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %203 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %200, %192
  %207 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %208 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @memcpy(i32* %209, i32* %211, i32 8)
  %213 = load i32, i32* @FATTR4_WORD0_CHANGE, align 4
  %214 = load i32, i32* @FATTR4_WORD0_SIZE, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %217 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 0
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, %215
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* @FATTR4_WORD1_TIME_METADATA, align 4
  %223 = load i32, i32* @FATTR4_WORD1_TIME_MODIFY, align 4
  %224 = or i32 %222, %223
  %225 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %226 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, %224
  store i32 %230, i32* %228, align 4
  %231 = getelementptr inbounds %struct.nfs4_server_caps_res, %struct.nfs4_server_caps_res* %6, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.nfs_server*, %struct.nfs_server** %3, align 8
  %234 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %233, i32 0, i32 3
  store i32 %232, i32* %234, align 8
  br label %235

235:                                              ; preds = %206, %2
  %236 = load i32, i32* %8, align 4
  ret i32 %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @nfs4_call_sync(i32, %struct.nfs_server*, %struct.rpc_message*, i32*, i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
