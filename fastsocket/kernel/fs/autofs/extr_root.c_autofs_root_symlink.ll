; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs/extr_root.c_autofs_root_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32, i32 }
%struct.autofs_sb_info = type { i32, %struct.autofs_symlink*, %struct.autofs_dirhash }
%struct.autofs_symlink = type { i32, i32, %struct.autofs_dir_ent* }
%struct.autofs_dir_ent = type { i64, i32*, i32, %struct.autofs_dir_ent*, i32 }
%struct.autofs_dirhash = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"autofs_root_symlink: %s <- \00", align 1
@EACCES = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@AUTOFS_MAX_SYMLINKS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AUTOFS_FIRST_SYMLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @autofs_root_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_root_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_dirhash*, align 8
  %10 = alloca %struct.autofs_dir_ent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.autofs_symlink*, align 8
  %14 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.autofs_sb_info* @autofs_sbi(i32 %17)
  store %struct.autofs_sb_info* %18, %struct.autofs_sb_info** %8, align 8
  %19 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %19, i32 0, i32 2
  store %struct.autofs_dirhash* %20, %struct.autofs_dirhash** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @DPRINTK(i8* %21)
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @autofs_say(i8* %26, i32 %30)
  %32 = call i32 (...) @lock_kernel()
  %33 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %34 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = call i32 (...) @unlock_kernel()
  %38 = load i32, i32* @EACCES, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %210

40:                                               ; preds = %3
  %41 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %9, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = call i64 @autofs_hash_lookup(%struct.autofs_dirhash* %41, %struct.TYPE_2__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = call i32 (...) @unlock_kernel()
  %48 = load i32, i32* @EEXIST, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %210

50:                                               ; preds = %40
  %51 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %52 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AUTOFS_MAX_SYMLINKS, align 4
  %55 = call i32 @find_first_zero_bit(i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @AUTOFS_MAX_SYMLINKS, align 4
  %58 = icmp uge i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = call i32 (...) @unlock_kernel()
  %61 = load i32, i32* @ENOSPC, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %210

63:                                               ; preds = %50
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %66 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @set_bit(i32 %64, i32 %67)
  %69 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %70 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %69, i32 0, i32 1
  %71 = load %struct.autofs_symlink*, %struct.autofs_symlink** %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %71, i64 %73
  store %struct.autofs_symlink* %74, %struct.autofs_symlink** %13, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %78 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %80 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* @GFP_KERNEL, align 4
  %84 = call i8* @kmalloc(i32 %82, i32 %83)
  %85 = bitcast i8* %84 to %struct.autofs_dir_ent*
  %86 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %87 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %86, i32 0, i32 2
  store %struct.autofs_dir_ent* %85, %struct.autofs_dir_ent** %87, align 8
  %88 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %89 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %88, i32 0, i32 2
  %90 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %89, align 8
  %91 = icmp ne %struct.autofs_dir_ent* %90, null
  br i1 %91, label %101, label %92

92:                                               ; preds = %63
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %95 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clear_bit(i32 %93, i32 %96)
  %98 = call i32 (...) @unlock_kernel()
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %210

101:                                              ; preds = %63
  %102 = load i32, i32* @GFP_KERNEL, align 4
  %103 = call i8* @kmalloc(i32 40, i32 %102)
  %104 = bitcast i8* %103 to %struct.autofs_dir_ent*
  store %struct.autofs_dir_ent* %104, %struct.autofs_dir_ent** %10, align 8
  %105 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %106 = icmp ne %struct.autofs_dir_ent* %105, null
  br i1 %106, label %120, label %107

107:                                              ; preds = %101
  %108 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %109 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %108, i32 0, i32 2
  %110 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %109, align 8
  %111 = call i32 @kfree(%struct.autofs_dir_ent* %110)
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %114 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @clear_bit(i32 %112, i32 %115)
  %117 = call i32 (...) @unlock_kernel()
  %118 = load i32, i32* @ENOSPC, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %210

120:                                              ; preds = %101
  %121 = load %struct.dentry*, %struct.dentry** %6, align 8
  %122 = getelementptr inbounds %struct.dentry, %struct.dentry* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i8* @kmalloc(i32 %125, i32 %126)
  %128 = bitcast i8* %127 to %struct.autofs_dir_ent*
  %129 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %130 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %129, i32 0, i32 3
  store %struct.autofs_dir_ent* %128, %struct.autofs_dir_ent** %130, align 8
  %131 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %132 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %131, i32 0, i32 3
  %133 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %132, align 8
  %134 = icmp ne %struct.autofs_dir_ent* %133, null
  br i1 %134, label %150, label %135

135:                                              ; preds = %120
  %136 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %137 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %136, i32 0, i32 2
  %138 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %137, align 8
  %139 = call i32 @kfree(%struct.autofs_dir_ent* %138)
  %140 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %141 = call i32 @kfree(%struct.autofs_dir_ent* %140)
  %142 = load i32, i32* %11, align 4
  %143 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %144 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @clear_bit(i32 %142, i32 %145)
  %147 = call i32 (...) @unlock_kernel()
  %148 = load i32, i32* @ENOSPC, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %4, align 4
  br label %210

150:                                              ; preds = %120
  %151 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %152 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %151, i32 0, i32 2
  %153 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %152, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @memcpy(%struct.autofs_dir_ent* %153, i8* %154, i32 %155)
  %157 = call i32 (...) @get_seconds()
  %158 = load %struct.autofs_symlink*, %struct.autofs_symlink** %13, align 8
  %159 = getelementptr inbounds %struct.autofs_symlink, %struct.autofs_symlink* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i64, i64* @AUTOFS_FIRST_SYMLINK, align 8
  %161 = load i32, i32* %11, align 4
  %162 = zext i32 %161 to i64
  %163 = add nsw i64 %160, %162
  %164 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %165 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  %166 = load %struct.dentry*, %struct.dentry** %6, align 8
  %167 = getelementptr inbounds %struct.dentry, %struct.dentry* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %171 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 8
  %172 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %173 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %172, i32 0, i32 3
  %174 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %173, align 8
  %175 = load %struct.dentry*, %struct.dentry** %6, align 8
  %176 = getelementptr inbounds %struct.dentry, %struct.dentry* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.dentry*, %struct.dentry** %6, align 8
  %180 = getelementptr inbounds %struct.dentry, %struct.dentry* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %184 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %183, i32 0, i32 2
  store i32 %182, i32* %184, align 8
  %185 = add nsw i32 1, %182
  %186 = call i32 @memcpy(%struct.autofs_dir_ent* %174, i8* %178, i32 %185)
  %187 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %188 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %187, i32 0, i32 1
  store i32* null, i32** %188, align 8
  %189 = load %struct.autofs_dirhash*, %struct.autofs_dirhash** %9, align 8
  %190 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %191 = call i32 @autofs_hash_insert(%struct.autofs_dirhash* %189, %struct.autofs_dir_ent* %190)
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.autofs_dir_ent*, %struct.autofs_dir_ent** %10, align 8
  %196 = getelementptr inbounds %struct.autofs_dir_ent, %struct.autofs_dir_ent* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = call %struct.inode* @autofs_iget(i32 %194, i64 %197)
  store %struct.inode* %198, %struct.inode** %14, align 8
  %199 = load %struct.inode*, %struct.inode** %14, align 8
  %200 = call i64 @IS_ERR(%struct.inode* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %150
  %203 = load %struct.inode*, %struct.inode** %14, align 8
  %204 = call i32 @PTR_ERR(%struct.inode* %203)
  store i32 %204, i32* %4, align 4
  br label %210

205:                                              ; preds = %150
  %206 = load %struct.dentry*, %struct.dentry** %6, align 8
  %207 = load %struct.inode*, %struct.inode** %14, align 8
  %208 = call i32 @d_instantiate(%struct.dentry* %206, %struct.inode* %207)
  %209 = call i32 (...) @unlock_kernel()
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %205, %202, %135, %107, %92, %59, %46, %36
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @autofs_say(i8*, i32) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

declare dso_local i64 @autofs_hash_lookup(%struct.autofs_dirhash*, %struct.TYPE_2__*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.autofs_dir_ent*) #1

declare dso_local i32 @memcpy(%struct.autofs_dir_ent*, i8*, i32) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @autofs_hash_insert(%struct.autofs_dirhash*, %struct.autofs_dir_ent*) #1

declare dso_local %struct.inode* @autofs_iget(i32, i64) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
