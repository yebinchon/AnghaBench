; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_dealloc_unstuffed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_dealloc_unstuffed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_ea_header = type { i32, i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrpd = type { i64, i32 }
%struct.gfs2_holder = type { i32 }

@EIO = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_EATTR = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@GFS2_EAFLAG_LAST = common dso_local global i32 0, align 4
@GFS2_EATYPE_UNUSED = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, %struct.buffer_head*, %struct.gfs2_ea_header*, %struct.gfs2_ea_header*, i8*)* @ea_dealloc_unstuffed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_dealloc_unstuffed(%struct.gfs2_inode* %0, %struct.buffer_head* %1, %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.gfs2_ea_header*, align 8
  %10 = alloca %struct.gfs2_ea_header*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.gfs2_sbd*, align 8
  %14 = alloca %struct.gfs2_rgrpd*, align 8
  %15 = alloca %struct.gfs2_holder, align 4
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %7, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %8, align 8
  store %struct.gfs2_ea_header* %2, %struct.gfs2_ea_header** %9, align 8
  store %struct.gfs2_ea_header* %3, %struct.gfs2_ea_header** %10, align 8
  store i8* %4, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %12, align 8
  %27 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %28 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %27, i32 0, i32 1
  %29 = call %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_3__* %28)
  store %struct.gfs2_sbd* %29, %struct.gfs2_sbd** %13, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %30 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %31 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %30)
  store i32 %31, i32* %23, align 4
  %32 = load i32, i32* %23, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %5
  %35 = load i32, i32* %23, align 4
  store i32 %35, i32* %6, align 4
  br label %229

36:                                               ; preds = %5
  %37 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %38 = call i64 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %229

41:                                               ; preds = %36
  %42 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %43 = call i64* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %42)
  store i64* %43, i64** %17, align 8
  store i32 0, i32* %22, align 4
  br label %44

44:                                               ; preds = %61, %41
  %45 = load i32, i32* %22, align 4
  %46 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %47 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i64*, i64** %17, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %21, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %21, align 4
  %57 = load i64*, i64** %17, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @be64_to_cpu(i64 %58)
  store i64 %59, i64* %18, align 8
  br label %60

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %22, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %22, align 4
  %64 = load i64*, i64** %17, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %17, align 8
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %229

70:                                               ; preds = %66
  %71 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %72 = load i64, i64* %18, align 8
  %73 = call %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd* %71, i64 %72, i32 1)
  store %struct.gfs2_rgrpd* %73, %struct.gfs2_rgrpd** %14, align 8
  %74 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %75 = icmp ne %struct.gfs2_rgrpd* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %78 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %6, align 4
  br label %229

81:                                               ; preds = %70
  %82 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %83 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %86 = call i32 @gfs2_glock_nq_init(i32 %84, i32 %85, i32 0, %struct.gfs2_holder* %15)
  store i32 %86, i32* %23, align 4
  %87 = load i32, i32* %23, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %23, align 4
  store i32 %90, i32* %6, align 4
  br label %229

91:                                               ; preds = %81
  %92 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %93 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %14, align 8
  %94 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @RES_DINODE, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i64, i64* @RES_EATTR, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i64, i64* @RES_STATFS, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i64, i64* @RES_QUOTA, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %92, i64 %103, i32 %104)
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %23, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %226

109:                                              ; preds = %91
  %110 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %111 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %114 = call i32 @gfs2_trans_add_meta(i32 %112, %struct.buffer_head* %113)
  %115 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %116 = call i64* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header* %115)
  store i64* %116, i64** %17, align 8
  store i32 0, i32* %22, align 4
  br label %117

117:                                              ; preds = %156, %109
  %118 = load i32, i32* %22, align 4
  %119 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %120 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ult i32 %118, %121
  br i1 %122, label %123, label %161

123:                                              ; preds = %117
  %124 = load i64*, i64** %17, align 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %161

128:                                              ; preds = %123
  %129 = load i64*, i64** %17, align 8
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @be64_to_cpu(i64 %130)
  store i64 %131, i64* %18, align 8
  %132 = load i64, i64* %19, align 8
  %133 = load i32, i32* %20, align 4
  %134 = zext i32 %133 to i64
  %135 = add nsw i64 %132, %134
  %136 = load i64, i64* %18, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %128
  %139 = load i32, i32* %20, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %151

141:                                              ; preds = %128
  %142 = load i64, i64* %19, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %146 = load i64, i64* %19, align 8
  %147 = load i32, i32* %20, align 4
  %148 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %145, i64 %146, i32 %147)
  br label %149

149:                                              ; preds = %144, %141
  %150 = load i64, i64* %18, align 8
  store i64 %150, i64* %19, align 8
  store i32 1, i32* %20, align 4
  br label %151

151:                                              ; preds = %149, %138
  %152 = load i64*, i64** %17, align 8
  store i64 0, i64* %152, align 8
  %153 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %154 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %153, i32 0, i32 1
  %155 = call i32 @gfs2_add_inode_blocks(%struct.TYPE_3__* %154, i32 -1)
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %22, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %22, align 4
  %159 = load i64*, i64** %17, align 8
  %160 = getelementptr inbounds i64, i64* %159, i32 1
  store i64* %160, i64** %17, align 8
  br label %117

161:                                              ; preds = %127, %117
  %162 = load i64, i64* %19, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load i32, i32* %20, align 4
  %168 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %165, i64 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %161
  %170 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %171 = icmp ne %struct.gfs2_ea_header* %170, null
  br i1 %171, label %172, label %195

172:                                              ; preds = %169
  %173 = load i32*, i32** %12, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %195, label %175

175:                                              ; preds = %172
  %176 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %177 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %176)
  %178 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %179 = call i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header* %178)
  %180 = add nsw i64 %177, %179
  store i64 %180, i64* %24, align 8
  %181 = load i64, i64* %24, align 8
  %182 = call i32 @cpu_to_be32(i64 %181)
  %183 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %184 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %183, i32 0, i32 3
  store i32 %182, i32* %184, align 4
  %185 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %186 = call i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %175
  %189 = load i32, i32* @GFS2_EAFLAG_LAST, align 4
  %190 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %10, align 8
  %191 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %175
  br label %201

195:                                              ; preds = %172, %169
  %196 = load i32, i32* @GFS2_EATYPE_UNUSED, align 4
  %197 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %198 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.gfs2_ea_header*, %struct.gfs2_ea_header** %9, align 8
  %200 = getelementptr inbounds %struct.gfs2_ea_header, %struct.gfs2_ea_header* %199, i32 0, i32 0
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %195, %194
  %202 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %203 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %202, %struct.buffer_head** %16)
  store i32 %203, i32* %23, align 4
  %204 = load i32, i32* %23, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %223, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* @CURRENT_TIME, align 4
  %208 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %209 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 4
  %211 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %212 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %215 = call i32 @gfs2_trans_add_meta(i32 %213, %struct.buffer_head* %214)
  %216 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %217 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %218 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %216, i32 %219)
  %221 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %222 = call i32 @brelse(%struct.buffer_head* %221)
  br label %223

223:                                              ; preds = %206, %201
  %224 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %13, align 8
  %225 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %224)
  br label %226

226:                                              ; preds = %223, %108
  %227 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %15)
  %228 = load i32, i32* %23, align 4
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %226, %89, %76, %69, %40, %34
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.TYPE_3__*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i64 @GFS2_EA_IS_STUFFED(%struct.gfs2_ea_header*) #1

declare dso_local i64* @GFS2_EA2DATAPTRS(%struct.gfs2_ea_header*) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local %struct.gfs2_rgrpd* @gfs2_blk2rgrpd(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_free_meta(%struct.gfs2_inode*, i64, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @GFS2_EA_REC_LEN(%struct.gfs2_ea_header*) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local i64 @GFS2_EA_IS_LAST(%struct.gfs2_ea_header*) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
