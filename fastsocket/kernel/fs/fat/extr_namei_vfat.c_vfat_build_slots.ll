; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_build_slots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_build_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.timespec = type { i32 }
%struct.msdos_dir_slot = type { i32, i8, i32, i32, i32, i64, i64, i32 }
%struct.msdos_sb_info = type { i32, i32, %struct.fat_mount_options }
%struct.fat_mount_options = type { i32, i32 }
%struct.msdos_dir_entry = type { i8, i64, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATTR_EXT = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@ATTR_ARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32, i32, %struct.timespec*, %struct.msdos_dir_slot*, i32*)* @vfat_build_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_build_slots(%struct.inode* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.timespec* %5, %struct.msdos_dir_slot* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.timespec*, align 8
  %16 = alloca %struct.msdos_dir_slot*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.msdos_sb_info*, align 8
  %19 = alloca %struct.fat_mount_options*, align 8
  %20 = alloca %struct.msdos_dir_slot*, align 8
  %21 = alloca %struct.msdos_dir_entry*, align 8
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.timespec* %5, %struct.timespec** %15, align 8
  store %struct.msdos_dir_slot* %6, %struct.msdos_dir_slot** %16, align 8
  store i32* %7, i32** %17, align 8
  %36 = load %struct.inode*, %struct.inode** %10, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %38)
  store %struct.msdos_sb_info* %39, %struct.msdos_sb_info** %18, align 8
  %40 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %18, align 8
  %41 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %40, i32 0, i32 2
  store %struct.fat_mount_options* %41, %struct.fat_mount_options** %19, align 8
  %42 = load i32, i32* @MSDOS_NAME, align 4
  %43 = zext i32 %42 to i64
  %44 = call i8* @llvm.stacksave()
  store i8* %44, i8** %24, align 8
  %45 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %25, align 8
  %46 = load i32*, i32** %17, align 8
  store i32 0, i32* %46, align 4
  %47 = call i32* (...) @__getname()
  store i32* %47, i32** %26, align 8
  %48 = load i32*, i32** %26, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  store i32 1, i32* %35, align 4
  br label %218

53:                                               ; preds = %8
  %54 = load i8*, i8** %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %26, align 8
  %57 = bitcast i32* %56 to i8*
  %58 = load %struct.fat_mount_options*, %struct.fat_mount_options** %19, align 8
  %59 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.fat_mount_options*, %struct.fat_mount_options** %19, align 8
  %62 = getelementptr inbounds %struct.fat_mount_options, %struct.fat_mount_options* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %18, align 8
  %65 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @xlate_to_uni(i8* %54, i32 %55, i8* %57, i32* %31, i32* %32, i32 %60, i32 %63, i32 %66)
  store i32 %67, i32* %30, align 4
  %68 = load i32, i32* %30, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %214

71:                                               ; preds = %53
  %72 = load i32*, i32** %26, align 8
  %73 = load i32, i32* %31, align 4
  %74 = call i32 @vfat_is_used_badchars(i32* %72, i32 %73)
  store i32 %74, i32* %30, align 4
  %75 = load i32, i32* %30, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %214

78:                                               ; preds = %71
  %79 = load %struct.inode*, %struct.inode** %10, align 8
  %80 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %18, align 8
  %81 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %26, align 8
  %84 = load i32, i32* %31, align 4
  %85 = call i32 @vfat_create_shortname(%struct.inode* %79, i32 %82, i32* %83, i32 %84, i8* %45, i8* %23)
  store i32 %85, i32* %30, align 4
  %86 = load i32, i32* %30, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %214

89:                                               ; preds = %78
  %90 = load i32, i32* %30, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %16, align 8
  %94 = bitcast %struct.msdos_dir_slot* %93 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %94, %struct.msdos_dir_entry** %21, align 8
  store i32 0, i32* %30, align 4
  br label %163

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = call zeroext i8 @fat_checksum(i8* %45)
  store i8 %97, i8* %22, align 1
  %98 = load i32, i32* %32, align 4
  %99 = sdiv i32 %98, 13
  %100 = load i32*, i32** %17, align 8
  store i32 %99, i32* %100, align 4
  %101 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %16, align 8
  store %struct.msdos_dir_slot* %101, %struct.msdos_dir_slot** %20, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %33, align 4
  br label %104

104:                                              ; preds = %150, %96
  %105 = load i32, i32* %33, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %155

107:                                              ; preds = %104
  %108 = load i32, i32* %33, align 4
  %109 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %110 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @ATTR_EXT, align 4
  %112 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %113 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 8
  %114 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %115 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %114, i32 0, i32 6
  store i64 0, i64* %115, align 8
  %116 = load i8, i8* %22, align 1
  %117 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %118 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %117, i32 0, i32 1
  store i8 %116, i8* %118, align 4
  %119 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %120 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %119, i32 0, i32 5
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* %33, align 4
  %122 = sub nsw i32 %121, 1
  %123 = mul nsw i32 %122, 13
  store i32 %123, i32* %34, align 4
  %124 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %125 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %26, align 8
  %128 = load i32, i32* %34, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @fatwchar_to16(i32 %126, i32* %130, i32 5)
  %132 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %133 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %26, align 8
  %136 = load i32, i32* %34, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = getelementptr inbounds i32, i32* %138, i64 5
  %140 = call i32 @fatwchar_to16(i32 %134, i32* %139, i32 6)
  %141 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %142 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %26, align 8
  %145 = load i32, i32* %34, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = getelementptr inbounds i32, i32* %147, i64 11
  %149 = call i32 @fatwchar_to16(i32 %143, i32* %148, i32 2)
  br label %150

150:                                              ; preds = %107
  %151 = load i32, i32* %33, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %33, align 4
  %153 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %154 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %153, i32 1
  store %struct.msdos_dir_slot* %154, %struct.msdos_dir_slot** %20, align 8
  br label %104

155:                                              ; preds = %104
  %156 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %16, align 8
  %157 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %156, i64 0
  %158 = getelementptr inbounds %struct.msdos_dir_slot, %struct.msdos_dir_slot* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, 64
  store i32 %160, i32* %158, align 8
  %161 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %20, align 8
  %162 = bitcast %struct.msdos_dir_slot* %161 to %struct.msdos_dir_entry*
  store %struct.msdos_dir_entry* %162, %struct.msdos_dir_entry** %21, align 8
  br label %163

163:                                              ; preds = %155, %92
  %164 = load i32*, i32** %17, align 8
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %168 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @MSDOS_NAME, align 4
  %171 = call i32 @memcpy(i32 %169, i8* %45, i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i32, i32* @ATTR_DIR, align 4
  br label %178

176:                                              ; preds = %163
  %177 = load i32, i32* @ATTR_ARCH, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i32 [ %175, %174 ], [ %177, %176 ]
  %180 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %181 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %180, i32 0, i32 10
  store i32 %179, i32* %181, align 8
  %182 = load i8, i8* %23, align 1
  %183 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %184 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %183, i32 0, i32 0
  store i8 %182, i8* %184, align 8
  %185 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %18, align 8
  %186 = load %struct.timespec*, %struct.timespec** %15, align 8
  %187 = call i32 @fat_time_unix2fat(%struct.msdos_sb_info* %185, %struct.timespec* %186, i8** %27, i8** %28, i32* %29)
  %188 = load i8*, i8** %27, align 8
  %189 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %190 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %189, i32 0, i32 8
  store i8* %188, i8** %190, align 8
  %191 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %192 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %191, i32 0, i32 9
  store i8* %188, i8** %192, align 8
  %193 = load i8*, i8** %28, align 8
  %194 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %195 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  %196 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %197 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %196, i32 0, i32 6
  store i8* %193, i8** %197, align 8
  %198 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %199 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %198, i32 0, i32 7
  store i8* %193, i8** %199, align 8
  %200 = load i32, i32* %29, align 4
  %201 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %202 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* %14, align 4
  %204 = call i8* @cpu_to_le16(i32 %203)
  %205 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %206 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  %207 = load i32, i32* %14, align 4
  %208 = ashr i32 %207, 16
  %209 = call i8* @cpu_to_le16(i32 %208)
  %210 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %211 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %210, i32 0, i32 2
  store i8* %209, i8** %211, align 8
  %212 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %21, align 8
  %213 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %178, %88, %77, %70
  %215 = load i32*, i32** %26, align 8
  %216 = call i32 @__putname(i32* %215)
  %217 = load i32, i32* %30, align 4
  store i32 %217, i32* %9, align 4
  store i32 1, i32* %35, align 4
  br label %218

218:                                              ; preds = %214, %50
  %219 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i32, i32* %9, align 4
  ret i32 %220
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @__getname(...) #1

declare dso_local i32 @xlate_to_uni(i8*, i32, i8*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @vfat_is_used_badchars(i32*, i32) #1

declare dso_local i32 @vfat_create_shortname(%struct.inode*, i32, i32*, i32, i8*, i8*) #1

declare dso_local zeroext i8 @fat_checksum(i8*) #1

declare dso_local i32 @fatwchar_to16(i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fat_time_unix2fat(%struct.msdos_sb_info*, %struct.timespec*, i8**, i8**, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @__putname(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
