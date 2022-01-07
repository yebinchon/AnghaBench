; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_do_gfs2_set_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_file.c_do_gfs2_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.buffer_head = type { i32 }
%struct.gfs2_holder = type { i32 }

@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFS2_FLAGS_USER_SET = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFS2_DIF_IMMUTABLE = common dso_local global i32 0, align 4
@GFS2_DIF_APPENDONLY = common dso_local global i32 0, align 4
@CAP_LINUX_IMMUTABLE = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@GFS2_DIF_JDATA = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @do_gfs2_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_gfs2_set_flags(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.gfs2_inode*, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.gfs2_holder, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %8, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = call %struct.gfs2_inode* @GFS2_I(%struct.inode* %22)
  store %struct.gfs2_inode* %23, %struct.gfs2_inode** %9, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call %struct.gfs2_sbd* @GFS2_SB(%struct.inode* %24)
  store %struct.gfs2_sbd* %25, %struct.gfs2_sbd** %10, align 8
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mnt_want_write(i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %4, align 4
  br label %205

35:                                               ; preds = %3
  %36 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %37 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %40 = call i32 @gfs2_glock_nq_init(i32 %38, i32 %39, i32 0, %struct.gfs2_holder* %12)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %198

44:                                               ; preds = %35
  %45 = load i32, i32* @EACCES, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.inode*, %struct.inode** %8, align 8
  %48 = call i32 @is_owner_or_cap(%struct.inode* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %196

51:                                               ; preds = %44
  store i32 0, i32* %13, align 4
  %52 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %53 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %7, align 4
  %57 = xor i32 %56, -1
  %58 = and i32 %55, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %59, %60
  %62 = or i32 %58, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = xor i32 %63, %64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %51
  br label %196

68:                                               ; preds = %51
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = xor i32 %71, %72
  %74 = load i32, i32* @GFS2_FLAGS_USER_SET, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %196

79:                                               ; preds = %68
  %80 = load i32, i32* @EPERM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %13, align 4
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = call i64 @IS_IMMUTABLE(%struct.inode* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* @GFS2_DIF_IMMUTABLE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %196

91:                                               ; preds = %85, %79
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call i64 @IS_APPEND(%struct.inode* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @GFS2_DIF_APPENDONLY, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %196

101:                                              ; preds = %95, %91
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %15, align 4
  %104 = xor i32 %102, %103
  %105 = load i32, i32* @GFS2_DIF_IMMUTABLE, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i32, i32* @CAP_LINUX_IMMUTABLE, align 4
  %110 = call i32 @capable(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  br label %196

113:                                              ; preds = %108, %101
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i64 @IS_IMMUTABLE(%struct.inode* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %113
  %118 = load %struct.inode*, %struct.inode** %8, align 8
  %119 = load i32, i32* @MAY_WRITE, align 4
  %120 = call i32 @gfs2_permission(%struct.inode* %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %196

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %14, align 4
  %128 = xor i32 %126, %127
  %129 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %125
  %133 = load i32, i32* %15, align 4
  %134 = load i32, i32* @GFS2_DIF_JDATA, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %139 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %140 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %138, i32 %141)
  br label %143

143:                                              ; preds = %137, %132
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = getelementptr inbounds %struct.inode, %struct.inode* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @filemap_fdatawrite(i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %196

151:                                              ; preds = %143
  %152 = load %struct.inode*, %struct.inode** %8, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @filemap_fdatawait(i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %196

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %125
  %161 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %162 = load i32, i32* @RES_DINODE, align 4
  %163 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %161, i32 %162, i32 0)
  store i32 %163, i32* %13, align 4
  %164 = load i32, i32* %13, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %196

167:                                              ; preds = %160
  %168 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %169 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %168, %struct.buffer_head** %11)
  store i32 %169, i32* %13, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  br label %193

173:                                              ; preds = %167
  %174 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %175 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %178 = call i32 @gfs2_trans_add_meta(i32 %176, %struct.buffer_head* %177)
  %179 = load i32, i32* %14, align 4
  %180 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %181 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %180, i32 0, i32 0
  store i32 %179, i32* %181, align 4
  %182 = load %struct.gfs2_inode*, %struct.gfs2_inode** %9, align 8
  %183 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %184 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %182, i32 %185)
  %187 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %188 = call i32 @brelse(%struct.buffer_head* %187)
  %189 = load %struct.inode*, %struct.inode** %8, align 8
  %190 = call i32 @gfs2_set_inode_flags(%struct.inode* %189)
  %191 = load %struct.inode*, %struct.inode** %8, align 8
  %192 = call i32 @gfs2_set_aops(%struct.inode* %191)
  br label %193

193:                                              ; preds = %173, %172
  %194 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %195 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %194)
  br label %196

196:                                              ; preds = %193, %166, %158, %150, %123, %112, %100, %90, %78, %67, %50
  %197 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %12)
  br label %198

198:                                              ; preds = %196, %43
  %199 = load %struct.file*, %struct.file** %5, align 8
  %200 = getelementptr inbounds %struct.file, %struct.file* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @mnt_drop_write(i32 %202)
  %204 = load i32, i32* %13, align 4
  store i32 %204, i32* %4, align 4
  br label %205

205:                                              ; preds = %198, %33
  %206 = load i32, i32* %4, align 4
  ret i32 %206
}

declare dso_local %struct.gfs2_inode* @GFS2_I(%struct.inode*) #1

declare dso_local %struct.gfs2_sbd* @GFS2_SB(%struct.inode*) #1

declare dso_local i32 @mnt_want_write(i32) #1

declare dso_local i32 @gfs2_glock_nq_init(i32, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @is_owner_or_cap(%struct.inode*) #1

declare dso_local i64 @IS_IMMUTABLE(%struct.inode*) #1

declare dso_local i64 @IS_APPEND(%struct.inode*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @gfs2_permission(%struct.inode*, i32) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, i32) #1

declare dso_local i32 @filemap_fdatawrite(i32) #1

declare dso_local i32 @filemap_fdatawait(i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_set_inode_flags(%struct.inode*) #1

declare dso_local i32 @gfs2_set_aops(%struct.inode*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @mnt_drop_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
