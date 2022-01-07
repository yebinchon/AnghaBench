; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_direntplus_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_dir.c_fuse_direntplus_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32*, %struct.inode* }
%struct.inode = type { i32, i32 }
%struct.fuse_direntplus = type { %struct.fuse_dirent, %struct.fuse_entry_out }
%struct.fuse_dirent = type { i32, i8* }
%struct.fuse_entry_out = type { i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qstr = type { i32, i8*, i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32 }

@EIO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fuse_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.fuse_direntplus*, i32)* @fuse_direntplus_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_direntplus_link(%struct.file* %0, %struct.fuse_direntplus* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.fuse_direntplus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_entry_out*, align 8
  %10 = alloca %struct.fuse_dirent*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.qstr, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca %struct.inode*, align 8
  %16 = alloca %struct.fuse_conn*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.fuse_inode*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.fuse_direntplus* %1, %struct.fuse_direntplus** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %6, align 8
  %20 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %19, i32 0, i32 1
  store %struct.fuse_entry_out* %20, %struct.fuse_entry_out** %9, align 8
  %21 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %6, align 8
  %22 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %21, i32 0, i32 0
  store %struct.fuse_dirent* %22, %struct.fuse_dirent** %10, align 8
  %23 = load %struct.file*, %struct.file** %5, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  store %struct.dentry* %26, %struct.dentry** %11, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %28 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %29 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %27, align 8
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %32 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %33 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %31, align 8
  %35 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load %struct.dentry*, %struct.dentry** %11, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 1
  %38 = load %struct.inode*, %struct.inode** %37, align 8
  store %struct.inode* %38, %struct.inode** %15, align 8
  %39 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %40 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %222

44:                                               ; preds = %3
  %45 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %69

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %222

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %222

68:                                               ; preds = %63, %56
  br label %69

69:                                               ; preds = %68, %44
  %70 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %71 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @invalid_nodeid(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %222

78:                                               ; preds = %69
  %79 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %80 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fuse_valid_type(i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %222

88:                                               ; preds = %78
  %89 = load %struct.inode*, %struct.inode** %15, align 8
  %90 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %89)
  store %struct.fuse_conn* %90, %struct.fuse_conn** %16, align 8
  %91 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @full_name_hash(i8* %92, i32 %94)
  %96 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 2
  store i32 %95, i32* %96, align 8
  %97 = load %struct.dentry*, %struct.dentry** %11, align 8
  %98 = call %struct.dentry* @d_lookup(%struct.dentry* %97, %struct.qstr* %12)
  store %struct.dentry* %98, %struct.dentry** %13, align 8
  %99 = load %struct.dentry*, %struct.dentry** %13, align 8
  %100 = icmp ne %struct.dentry* %99, null
  br i1 %100, label %101, label %167

101:                                              ; preds = %88
  %102 = load %struct.dentry*, %struct.dentry** %13, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 1
  %104 = load %struct.inode*, %struct.inode** %103, align 8
  store %struct.inode* %104, %struct.inode** %17, align 8
  %105 = load %struct.inode*, %struct.inode** %17, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = load %struct.dentry*, %struct.dentry** %13, align 8
  %109 = call i32 @d_drop(%struct.dentry* %108)
  br label %164

110:                                              ; preds = %101
  %111 = load %struct.inode*, %struct.inode** %17, align 8
  %112 = call i64 @get_node_id(%struct.inode* %111)
  %113 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %114 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %129, label %117

117:                                              ; preds = %110
  %118 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %119 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.inode*, %struct.inode** %17, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = xor i32 %121, %124
  %126 = load i32, i32* @S_IFMT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %117, %110
  %130 = load %struct.dentry*, %struct.dentry** %13, align 8
  %131 = call i32 @d_invalidate(%struct.dentry* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %218

135:                                              ; preds = %129
  br label %163

136:                                              ; preds = %117
  %137 = load %struct.inode*, %struct.inode** %17, align 8
  %138 = call i64 @is_bad_inode(%struct.inode* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %8, align 4
  br label %218

143:                                              ; preds = %136
  %144 = load %struct.inode*, %struct.inode** %17, align 8
  %145 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %144)
  store %struct.fuse_inode* %145, %struct.fuse_inode** %18, align 8
  %146 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %147 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %146, i32 0, i32 0
  %148 = call i32 @spin_lock(i32* %147)
  %149 = load %struct.fuse_inode*, %struct.fuse_inode** %18, align 8
  %150 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.fuse_conn*, %struct.fuse_conn** %16, align 8
  %154 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %153, i32 0, i32 0
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load %struct.inode*, %struct.inode** %17, align 8
  %157 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %158 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %157, i32 0, i32 1
  %159 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %160 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %159)
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @fuse_change_attributes(%struct.inode* %156, %struct.TYPE_5__* %158, i32 %160, i32 %161)
  br label %214

163:                                              ; preds = %135
  br label %164

164:                                              ; preds = %163, %107
  %165 = load %struct.dentry*, %struct.dentry** %13, align 8
  %166 = call i32 @dput(%struct.dentry* %165)
  br label %167

167:                                              ; preds = %164, %88
  %168 = load %struct.dentry*, %struct.dentry** %11, align 8
  %169 = call %struct.dentry* @d_alloc(%struct.dentry* %168, %struct.qstr* %12)
  store %struct.dentry* %169, %struct.dentry** %13, align 8
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %8, align 4
  %172 = load %struct.dentry*, %struct.dentry** %13, align 8
  %173 = icmp ne %struct.dentry* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %167
  br label %218

175:                                              ; preds = %167
  %176 = load %struct.dentry*, %struct.dentry** %13, align 8
  %177 = getelementptr inbounds %struct.dentry, %struct.dentry* %176, i32 0, i32 0
  store i32* @fuse_dentry_operations, i32** %177, align 8
  %178 = load %struct.inode*, %struct.inode** %15, align 8
  %179 = getelementptr inbounds %struct.inode, %struct.inode* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %182 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %185 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %188 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %187, i32 0, i32 1
  %189 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %190 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %189)
  %191 = load i32, i32* %7, align 4
  %192 = call %struct.inode* @fuse_iget(i32 %180, i64 %183, i32 %186, %struct.TYPE_5__* %188, i32 %190, i32 %191)
  store %struct.inode* %192, %struct.inode** %17, align 8
  %193 = load %struct.inode*, %struct.inode** %17, align 8
  %194 = icmp ne %struct.inode* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %175
  br label %218

196:                                              ; preds = %175
  %197 = load %struct.dentry*, %struct.dentry** %13, align 8
  %198 = load %struct.inode*, %struct.inode** %17, align 8
  %199 = call %struct.dentry* @fuse_materialise_dentry(%struct.dentry* %197, %struct.inode* %198)
  store %struct.dentry* %199, %struct.dentry** %14, align 8
  %200 = load %struct.dentry*, %struct.dentry** %14, align 8
  %201 = call i32 @PTR_ERR(%struct.dentry* %200)
  store i32 %201, i32* %8, align 4
  %202 = load %struct.dentry*, %struct.dentry** %14, align 8
  %203 = call i64 @IS_ERR(%struct.dentry* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  br label %218

206:                                              ; preds = %196
  %207 = load %struct.dentry*, %struct.dentry** %14, align 8
  %208 = icmp ne %struct.dentry* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load %struct.dentry*, %struct.dentry** %13, align 8
  %211 = call i32 @dput(%struct.dentry* %210)
  %212 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %212, %struct.dentry** %13, align 8
  br label %213

213:                                              ; preds = %209, %206
  br label %214

214:                                              ; preds = %213, %143
  %215 = load %struct.dentry*, %struct.dentry** %13, align 8
  %216 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %217 = call i32 @fuse_change_entry_timeout(%struct.dentry* %215, %struct.fuse_entry_out* %216)
  store i32 0, i32* %8, align 4
  br label %218

218:                                              ; preds = %214, %205, %195, %174, %140, %134
  %219 = load %struct.dentry*, %struct.dentry** %13, align 8
  %220 = call i32 @dput(%struct.dentry* %219)
  %221 = load i32, i32* %8, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %218, %85, %75, %67, %55, %43
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local i64 @invalid_nodeid(i64) #1

declare dso_local i32 @fuse_valid_type(i32) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local i32 @full_name_hash(i8*, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local i32 @d_invalidate(%struct.dentry*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local %struct.inode* @fuse_iget(i32, i64, i32, %struct.TYPE_5__*, i32, i32) #1

declare dso_local %struct.dentry* @fuse_materialise_dentry(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
