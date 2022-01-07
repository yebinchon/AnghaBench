; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_opendata_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_nfs4proc.c_nfs4_opendata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.nfs4_opendata = type { i32, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, i32, %struct.nfs4_state_owner*, %struct.dentry*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_12__, i8*, i32, %struct.nfs_server*, i32*, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.nfs_server = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32*, i32*, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.dentry = type { %struct.inode*, i32, i32 }
%struct.inode = type { i32 }
%struct.nfs4_state_owner = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.iattr = type { i64 }

@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@NFS4_ACCESS_READ = common dso_local global i32 0, align 4
@NFS4_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXTEND = common dso_local global i32 0, align 4
@NFS4_ACCESS_EXECUTE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfs4_opendata* (%struct.dentry*, %struct.nfs4_state_owner*, i32, i32, %struct.iattr*, i32, i32)* @nfs4_opendata_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfs4_opendata* @nfs4_opendata_alloc(%struct.dentry* %0, %struct.nfs4_state_owner* %1, i32 %2, i32 %3, %struct.iattr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.nfs4_opendata*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.nfs4_state_owner*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.iattr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.nfs_server*, align 8
  %19 = alloca %struct.nfs4_opendata*, align 8
  %20 = alloca i32*, align 8
  store %struct.dentry* %0, %struct.dentry** %9, align 8
  store %struct.nfs4_state_owner* %1, %struct.nfs4_state_owner** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.iattr* %4, %struct.iattr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.dentry*, %struct.dentry** %9, align 8
  %22 = call %struct.dentry* @dget_parent(%struct.dentry* %21)
  store %struct.dentry* %22, %struct.dentry** %16, align 8
  %23 = load %struct.dentry*, %struct.dentry** %16, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %17, align 8
  %26 = load %struct.inode*, %struct.inode** %17, align 8
  %27 = call %struct.nfs_server* @NFS_SERVER(%struct.inode* %26)
  store %struct.nfs_server* %27, %struct.nfs_server** %18, align 8
  %28 = load i32, i32* %15, align 4
  %29 = call %struct.nfs4_opendata* @kzalloc(i32 152, i32 %28)
  store %struct.nfs4_opendata* %29, %struct.nfs4_opendata** %19, align 8
  %30 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %31 = icmp eq %struct.nfs4_opendata* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  br label %210

33:                                               ; preds = %7
  %34 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %10, align 8
  %35 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %34, i32 0, i32 2
  %36 = load i32, i32* %15, align 4
  %37 = call i32* @nfs_alloc_seqid(i32* %35, i32 %36)
  %38 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %39 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  store i32* %37, i32** %40, align 8
  %41 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %42 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %207

47:                                               ; preds = %33
  %48 = load %struct.dentry*, %struct.dentry** %9, align 8
  %49 = getelementptr inbounds %struct.dentry, %struct.dentry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nfs_sb_active(i32 %50)
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = call i32 @dget(%struct.dentry* %52)
  %54 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %55 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 8
  %56 = load %struct.dentry*, %struct.dentry** %16, align 8
  %57 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %58 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %57, i32 0, i32 6
  store %struct.dentry* %56, %struct.dentry** %58, align 8
  %59 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %10, align 8
  %60 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %61 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %60, i32 0, i32 5
  store %struct.nfs4_state_owner* %59, %struct.nfs4_state_owner** %61, align 8
  %62 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %10, align 8
  %63 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %62, i32 0, i32 1
  %64 = call i32 @atomic_inc(i32* %63)
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %67 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @FMODE_READ, align 4
  %71 = load i32, i32* @FMODE_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %75 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @O_EXCL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %47
  %82 = load i32, i32* @NFS4_ACCESS_READ, align 4
  %83 = load i32, i32* @NFS4_ACCESS_MODIFY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @NFS4_ACCESS_EXTEND, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @NFS4_ACCESS_EXECUTE, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %90 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %81, %47
  %93 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  %94 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %93, i32 0, i32 1
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %99 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 11
  store i32 %97, i32* %100, align 4
  %101 = load %struct.nfs4_state_owner*, %struct.nfs4_state_owner** %10, align 8
  %102 = getelementptr inbounds %struct.nfs4_state_owner, %struct.nfs4_state_owner* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %106 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 10
  store i32 %104, i32* %107, align 8
  %108 = load %struct.dentry*, %struct.dentry** %9, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 1
  %110 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %111 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 9
  store i32* %109, i32** %112, align 8
  %113 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  %114 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %115 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 8
  store %struct.nfs_server* %113, %struct.nfs_server** %116, align 8
  %117 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  %118 = getelementptr inbounds %struct.nfs_server, %struct.nfs_server* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %121 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 7
  store i32 %119, i32* %122, align 8
  %123 = load %struct.nfs_server*, %struct.nfs_server** %18, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @nfs4_map_atomic_open_claim(%struct.nfs_server* %123, i32 %124)
  %126 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %127 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 3
  store i32 %125, i32* %128, align 4
  %129 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %130 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %147 [
    i32 129, label %133
    i32 134, label %133
    i32 133, label %133
    i32 128, label %139
    i32 130, label %139
    i32 132, label %139
    i32 131, label %139
  ]

133:                                              ; preds = %92, %92, %92
  %134 = load %struct.inode*, %struct.inode** %17, align 8
  %135 = call i8* @NFS_FH(%struct.inode* %134)
  %136 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %137 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 6
  store i8* %135, i8** %138, align 8
  br label %147

139:                                              ; preds = %92, %92, %92, %92
  %140 = load %struct.dentry*, %struct.dentry** %9, align 8
  %141 = getelementptr inbounds %struct.dentry, %struct.dentry* %140, i32 0, i32 0
  %142 = load %struct.inode*, %struct.inode** %141, align 8
  %143 = call i8* @NFS_FH(%struct.inode* %142)
  %144 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %145 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 6
  store i8* %143, i8** %146, align 8
  br label %147

147:                                              ; preds = %139, %92, %133
  %148 = load %struct.iattr*, %struct.iattr** %13, align 8
  %149 = icmp ne %struct.iattr* %148, null
  br i1 %149, label %150, label %181

150:                                              ; preds = %147
  %151 = load %struct.iattr*, %struct.iattr** %13, align 8
  %152 = getelementptr inbounds %struct.iattr, %struct.iattr* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %150
  %156 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %157 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %156, i32 0, i32 4
  %158 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %159 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i32* %157, i32** %161, align 8
  %162 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %163 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %162, i32 0, i32 4
  %164 = load %struct.iattr*, %struct.iattr** %13, align 8
  %165 = call i32 @memcpy(i32* %163, %struct.iattr* %164, i32 4)
  %166 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %167 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 5
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i32*
  store i32* %172, i32** %20, align 8
  %173 = load i32, i32* @jiffies, align 4
  %174 = load i32*, i32** %20, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %173, i32* %175, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** @current, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %20, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %178, i32* %180, align 4
  br label %181

181:                                              ; preds = %155, %150, %147
  %182 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %183 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %186 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  store i32* %184, i32** %187, align 8
  %188 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %189 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %192 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  store i32* %190, i32** %193, align 8
  %194 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %195 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 4
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %199 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 0
  store i32* %197, i32** %200, align 8
  %201 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %202 = call i32 @nfs4_init_opendata_res(%struct.nfs4_opendata* %201)
  %203 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %204 = getelementptr inbounds %struct.nfs4_opendata, %struct.nfs4_opendata* %203, i32 0, i32 0
  %205 = call i32 @kref_init(i32* %204)
  %206 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  store %struct.nfs4_opendata* %206, %struct.nfs4_opendata** %8, align 8
  br label %213

207:                                              ; preds = %46
  %208 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %19, align 8
  %209 = call i32 @kfree(%struct.nfs4_opendata* %208)
  br label %210

210:                                              ; preds = %207, %32
  %211 = load %struct.dentry*, %struct.dentry** %16, align 8
  %212 = call i32 @dput(%struct.dentry* %211)
  store %struct.nfs4_opendata* null, %struct.nfs4_opendata** %8, align 8
  br label %213

213:                                              ; preds = %210, %181
  %214 = load %struct.nfs4_opendata*, %struct.nfs4_opendata** %8, align 8
  ret %struct.nfs4_opendata* %214
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.nfs_server* @NFS_SERVER(%struct.inode*) #1

declare dso_local %struct.nfs4_opendata* @kzalloc(i32, i32) #1

declare dso_local i32* @nfs_alloc_seqid(i32*, i32) #1

declare dso_local i32 @nfs_sb_active(i32) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfs4_map_atomic_open_claim(%struct.nfs_server*, i32) #1

declare dso_local i8* @NFS_FH(%struct.inode*) #1

declare dso_local i32 @memcpy(i32*, %struct.iattr*, i32) #1

declare dso_local i32 @nfs4_init_opendata_res(%struct.nfs4_opendata*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @kfree(%struct.nfs4_opendata*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
