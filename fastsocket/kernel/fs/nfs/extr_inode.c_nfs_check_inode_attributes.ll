; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_check_inode_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfs/extr_inode.c_nfs_check_inode_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i64, i32, i32 }
%struct.nfs_fattr = type { i32, i64, i32, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.nfs_inode = type { i64, i64, i64, i64, i32 }

@NFS_ATTR_FATTR_FILEID = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_TYPE = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_CHANGE = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATTR = common dso_local global i64 0, align 8
@NFS_INO_REVAL_PAGECACHE = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_MTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_SIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_MODE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ACCESS = common dso_local global i64 0, align 8
@NFS_INO_INVALID_ACL = common dso_local global i64 0, align 8
@NFS_ATTR_FATTR_OWNER = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_GROUP = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_NLINK = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_ATIME = common dso_local global i32 0, align 4
@NFS_INO_INVALID_ATIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.nfs_fattr*)* @nfs_check_inode_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_check_inode_attributes(%struct.inode* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca %struct.nfs_inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = call %struct.nfs_inode* @NFS_I(%struct.inode* %10)
  store %struct.nfs_inode* %11, %struct.nfs_inode** %6, align 8
  store i64 0, i64* %9, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i64 @nfs_have_delegated_attributes(%struct.inode* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %249

16:                                               ; preds = %2
  %17 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %18 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NFS_ATTR_FATTR_FILEID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %16
  %24 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %25 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %28 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %249

34:                                               ; preds = %23, %16
  %35 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @NFS_ATTR_FATTR_TYPE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @S_IFMT, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @S_IFMT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %46, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %249

56:                                               ; preds = %41, %34
  %57 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %58 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NFS_ATTR_FATTR_CHANGE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %56
  %64 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %65 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %68 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %73 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* %9, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %71, %63, %56
  %78 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %79 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NFS_ATTR_FATTR_MTIME, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %77
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 5
  %87 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %88 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %87, i32 0, i32 10
  %89 = call i32 @timespec_equal(i32* %86, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %84
  %92 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %93 = load i64, i64* %9, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %9, align 8
  br label %95

95:                                               ; preds = %91, %84, %77
  %96 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %97 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @NFS_ATTR_FATTR_SIZE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %95
  %103 = load %struct.inode*, %struct.inode** %4, align 8
  %104 = call i64 @i_size_read(%struct.inode* %103)
  store i64 %104, i64* %7, align 8
  %105 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %106 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @nfs_size_to_loff_t(i32 %107)
  store i64 %108, i64* %8, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i64, i64* %8, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %102
  %113 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %114 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %112
  %118 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %119 = load i64, i64* @NFS_INO_REVAL_PAGECACHE, align 8
  %120 = or i64 %118, %119
  %121 = load i64, i64* %9, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %9, align 8
  br label %123

123:                                              ; preds = %117, %112, %102
  br label %124

124:                                              ; preds = %123, %95
  %125 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %126 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @NFS_ATTR_FATTR_MODE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %124
  %132 = load %struct.inode*, %struct.inode** %4, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @S_IALLUGO, align 4
  %136 = and i32 %134, %135
  %137 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %138 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @S_IALLUGO, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %136, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %131
  %144 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %145 = load i64, i64* @NFS_INO_INVALID_ACCESS, align 8
  %146 = or i64 %144, %145
  %147 = load i64, i64* @NFS_INO_INVALID_ACL, align 8
  %148 = or i64 %146, %147
  %149 = load i64, i64* %9, align 8
  %150 = or i64 %149, %148
  store i64 %150, i64* %9, align 8
  br label %151

151:                                              ; preds = %143, %131, %124
  %152 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %153 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @NFS_ATTR_FATTR_OWNER, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %151
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %163 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %168 = load i64, i64* @NFS_INO_INVALID_ACCESS, align 8
  %169 = or i64 %167, %168
  %170 = load i64, i64* @NFS_INO_INVALID_ACL, align 8
  %171 = or i64 %169, %170
  %172 = load i64, i64* %9, align 8
  %173 = or i64 %172, %171
  store i64 %173, i64* %9, align 8
  br label %174

174:                                              ; preds = %166, %158, %151
  %175 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %176 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @NFS_ATTR_FATTR_GROUP, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %197

181:                                              ; preds = %174
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %186 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %184, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %181
  %190 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %191 = load i64, i64* @NFS_INO_INVALID_ACCESS, align 8
  %192 = or i64 %190, %191
  %193 = load i64, i64* @NFS_INO_INVALID_ACL, align 8
  %194 = or i64 %192, %193
  %195 = load i64, i64* %9, align 8
  %196 = or i64 %195, %194
  store i64 %196, i64* %9, align 8
  br label %197

197:                                              ; preds = %189, %181, %174
  %198 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %199 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @NFS_ATTR_FATTR_NLINK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %197
  %205 = load %struct.inode*, %struct.inode** %4, align 8
  %206 = getelementptr inbounds %struct.inode, %struct.inode* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %209 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %208, i32 0, i32 6
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %207, %210
  br i1 %211, label %212, label %216

212:                                              ; preds = %204
  %213 = load i64, i64* @NFS_INO_INVALID_ATTR, align 8
  %214 = load i64, i64* %9, align 8
  %215 = or i64 %214, %213
  store i64 %215, i64* %9, align 8
  br label %216

216:                                              ; preds = %212, %204, %197
  %217 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %218 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @NFS_ATTR_FATTR_ATIME, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %216
  %224 = load %struct.inode*, %struct.inode** %4, align 8
  %225 = getelementptr inbounds %struct.inode, %struct.inode* %224, i32 0, i32 4
  %226 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %227 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %226, i32 0, i32 8
  %228 = call i32 @timespec_equal(i32* %225, i32* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %223
  %231 = load i64, i64* @NFS_INO_INVALID_ATIME, align 8
  %232 = load i64, i64* %9, align 8
  %233 = or i64 %232, %231
  store i64 %233, i64* %9, align 8
  br label %234

234:                                              ; preds = %230, %223, %216
  %235 = load i64, i64* %9, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %234
  %238 = load i64, i64* %9, align 8
  %239 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %240 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = or i64 %241, %238
  store i64 %242, i64* %240, align 8
  br label %243

243:                                              ; preds = %237, %234
  %244 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %245 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %244, i32 0, i32 7
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.nfs_inode*, %struct.nfs_inode** %6, align 8
  %248 = getelementptr inbounds %struct.nfs_inode, %struct.nfs_inode* %247, i32 0, i32 4
  store i32 %246, i32* %248, align 8
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %243, %53, %31, %15
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.nfs_inode* @NFS_I(%struct.inode*) #1

declare dso_local i64 @nfs_have_delegated_attributes(%struct.inode*) #1

declare dso_local i32 @timespec_equal(i32*, i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @nfs_size_to_loff_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
