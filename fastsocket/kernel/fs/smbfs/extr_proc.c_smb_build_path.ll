; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_build_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/smbfs/extr_proc.c_smb_build_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smb_sb_info = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 (i8*, i32, i32, i32, i32, i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.dentry = type { i32, %struct.dentry*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qstr = type { i32, i32 }

@SMB_MOUNT_UNICODE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@SMB_MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smb_sb_info*, i8*, i32, %struct.dentry*, %struct.qstr*)* @smb_build_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_build_path(%struct.smb_sb_info* %0, i8* %1, i32 %2, %struct.dentry* %3, %struct.qstr* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.smb_sb_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.qstr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.dentry*, align 8
  store %struct.smb_sb_info* %0, %struct.smb_sb_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store %struct.qstr* %4, %struct.qstr** %11, align 8
  %16 = load i8*, i8** %8, align 8
  store i8* %16, i8** %12, align 8
  %17 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %18 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SMB_MOUNT_UNICODE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %14, align 4
  %28 = shl i32 2, %27
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @ENAMETOOLONG, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %253

33:                                               ; preds = %5
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @SMB_MAXPATHLEN, align 4
  %36 = add nsw i32 %35, 1
  %37 = icmp sgt i32 %34, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @SMB_MAXPATHLEN, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load %struct.dentry*, %struct.dentry** %10, align 8
  %43 = icmp eq %struct.dentry* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %182

45:                                               ; preds = %41
  %46 = load %struct.dentry*, %struct.dentry** %10, align 8
  %47 = call i64 @IS_ROOT(%struct.dentry* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %45
  %50 = load %struct.qstr*, %struct.qstr** %11, align 8
  %51 = icmp ne %struct.qstr* %50, null
  br i1 %51, label %75, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %12, align 8
  store i8 92, i8* %53, align 1
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %12, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %12, align 8
  store i8 0, i8* %58, align 1
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i8*, i8** %12, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %12, align 8
  store i8 0, i8* %61, align 1
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  store i8 0, i8* %66, align 1
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %12, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %6, align 4
  br label %253

75:                                               ; preds = %49, %45
  %76 = load %struct.dentry*, %struct.dentry** %10, align 8
  %77 = call i32 @dget(%struct.dentry* %76)
  %78 = load %struct.dentry*, %struct.dentry** %10, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = call i32 @spin_lock(i32* %79)
  br label %81

81:                                               ; preds = %147, %75
  %82 = load %struct.dentry*, %struct.dentry** %10, align 8
  %83 = call i64 @IS_ROOT(%struct.dentry* %82)
  %84 = icmp ne i64 %83, 0
  %85 = xor i1 %84, true
  br i1 %85, label %86, label %168

86:                                               ; preds = %81
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %14, align 4
  %89 = shl i32 3, %88
  %90 = icmp slt i32 %87, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.dentry*, %struct.dentry** %10, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load %struct.dentry*, %struct.dentry** %10, align 8
  %96 = call i32 @dput(%struct.dentry* %95)
  %97 = load i32, i32* @ENAMETOOLONG, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %6, align 4
  br label %253

99:                                               ; preds = %86
  %100 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %101 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %103, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 2
  %108 = load %struct.dentry*, %struct.dentry** %10, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.dentry*, %struct.dentry** %10, align 8
  %113 = getelementptr inbounds %struct.dentry, %struct.dentry* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %117 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %120 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 %104(i8* %105, i32 %107, i32 %111, i32 %115, i32 %118, i32 %121)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %99
  %126 = load %struct.dentry*, %struct.dentry** %10, align 8
  %127 = getelementptr inbounds %struct.dentry, %struct.dentry* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.dentry*, %struct.dentry** %10, align 8
  %130 = call i32 @dput(%struct.dentry* %129)
  %131 = load i32, i32* %13, align 4
  store i32 %131, i32* %6, align 4
  br label %253

132:                                              ; preds = %99
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @reverse_string(i8* %133, i32 %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i8*, i8** %12, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %12, align 8
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %12, align 8
  store i8 0, i8* %143, align 1
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %142, %132
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  store i8 92, i8* %148, align 1
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, 1
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, %151
  store i32 %153, i32* %9, align 4
  %154 = load %struct.dentry*, %struct.dentry** %10, align 8
  %155 = getelementptr inbounds %struct.dentry, %struct.dentry* %154, i32 0, i32 1
  %156 = load %struct.dentry*, %struct.dentry** %155, align 8
  store %struct.dentry* %156, %struct.dentry** %15, align 8
  %157 = load %struct.dentry*, %struct.dentry** %15, align 8
  %158 = call i32 @dget(%struct.dentry* %157)
  %159 = load %struct.dentry*, %struct.dentry** %10, align 8
  %160 = getelementptr inbounds %struct.dentry, %struct.dentry* %159, i32 0, i32 0
  %161 = call i32 @spin_unlock(i32* %160)
  %162 = load %struct.dentry*, %struct.dentry** %10, align 8
  %163 = call i32 @dput(%struct.dentry* %162)
  %164 = load %struct.dentry*, %struct.dentry** %15, align 8
  store %struct.dentry* %164, %struct.dentry** %10, align 8
  %165 = load %struct.dentry*, %struct.dentry** %10, align 8
  %166 = getelementptr inbounds %struct.dentry, %struct.dentry* %165, i32 0, i32 0
  %167 = call i32 @spin_lock(i32* %166)
  br label %81

168:                                              ; preds = %81
  %169 = load %struct.dentry*, %struct.dentry** %10, align 8
  %170 = getelementptr inbounds %struct.dentry, %struct.dentry* %169, i32 0, i32 0
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load %struct.dentry*, %struct.dentry** %10, align 8
  %173 = call i32 @dput(%struct.dentry* %172)
  %174 = load i8*, i8** %8, align 8
  %175 = load i8*, i8** %12, align 8
  %176 = load i8*, i8** %8, align 8
  %177 = ptrtoint i8* %175 to i64
  %178 = ptrtoint i8* %176 to i64
  %179 = sub i64 %177, %178
  %180 = trunc i64 %179 to i32
  %181 = call i32 @reverse_string(i8* %174, i32 %180)
  br label %182

182:                                              ; preds = %168, %44
  %183 = load %struct.qstr*, %struct.qstr** %11, align 8
  %184 = icmp ne %struct.qstr* %183, null
  br i1 %184, label %185, label %238

185:                                              ; preds = %182
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %14, align 4
  %188 = shl i32 3, %187
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32, i32* @ENAMETOOLONG, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %253

193:                                              ; preds = %185
  %194 = load i8*, i8** %12, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %12, align 8
  store i8 92, i8* %194, align 1
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %193
  %199 = load i8*, i8** %12, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %12, align 8
  store i8 0, i8* %199, align 1
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %9, align 4
  br label %203

203:                                              ; preds = %198, %193
  %204 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %205 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32 (i8*, i32, i32, i32, i32, i32)*, i32 (i8*, i32, i32, i32, i32, i32)** %207, align 8
  %209 = load i8*, i8** %12, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sub nsw i32 %210, 2
  %212 = load %struct.qstr*, %struct.qstr** %11, align 8
  %213 = getelementptr inbounds %struct.qstr, %struct.qstr* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.qstr*, %struct.qstr** %11, align 8
  %216 = getelementptr inbounds %struct.qstr, %struct.qstr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %219 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.smb_sb_info*, %struct.smb_sb_info** %7, align 8
  %222 = getelementptr inbounds %struct.smb_sb_info, %struct.smb_sb_info* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i32 %208(i8* %209, i32 %211, i32 %214, i32 %217, i32 %220, i32 %223)
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %203
  %228 = load i32, i32* %13, align 4
  store i32 %228, i32* %6, align 4
  br label %253

229:                                              ; preds = %203
  %230 = load i32, i32* %13, align 4
  %231 = load i8*, i8** %12, align 8
  %232 = sext i32 %230 to i64
  %233 = getelementptr inbounds i8, i8* %231, i64 %232
  store i8* %233, i8** %12, align 8
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  %236 = load i32, i32* %9, align 4
  %237 = sub nsw i32 %236, %235
  store i32 %237, i32* %9, align 4
  br label %238

238:                                              ; preds = %229, %182
  %239 = load i8*, i8** %12, align 8
  %240 = getelementptr inbounds i8, i8* %239, i32 1
  store i8* %240, i8** %12, align 8
  store i8 0, i8* %239, align 1
  %241 = load i32, i32* %14, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %238
  %244 = load i8*, i8** %12, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %12, align 8
  store i8 0, i8* %244, align 1
  br label %246

246:                                              ; preds = %243, %238
  %247 = load i8*, i8** %12, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = ptrtoint i8* %247 to i64
  %250 = ptrtoint i8* %248 to i64
  %251 = sub i64 %249, %250
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %6, align 4
  br label %253

253:                                              ; preds = %246, %227, %190, %125, %91, %68, %30
  %254 = load i32, i32* %6, align 4
  ret i32 %254
}

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @reverse_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
