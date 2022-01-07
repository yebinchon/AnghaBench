; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_file.c_fat_setattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_file.c_fat_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode*, i32 }
%struct.inode = type { i64 }
%struct.iattr = type { i32, i64, i64, i64, i32 }
%struct.msdos_sb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ATTR_SIZE = common dso_local global i32 0, align 4
@TIMES_SET_FLAGS = common dso_local global i32 0, align 4
@ATTR_UID = common dso_local global i32 0, align 4
@ATTR_GID = common dso_local global i32 0, align 4
@ATTR_MODE = common dso_local global i32 0, align 4
@FAT_VALID_MODE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_setattr(%struct.dentry* %0, %struct.iattr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.iattr*, align 8
  %5 = alloca %struct.msdos_sb_info*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.iattr* %1, %struct.iattr** %4, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = getelementptr inbounds %struct.dentry, %struct.dentry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %11)
  store %struct.msdos_sb_info* %12, %struct.msdos_sb_info** %5, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.iattr*, %struct.iattr** %4, align 8
  %17 = getelementptr inbounds %struct.iattr, %struct.iattr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATTR_SIZE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %2
  %23 = load %struct.iattr*, %struct.iattr** %4, align 8
  %24 = getelementptr inbounds %struct.iattr, %struct.iattr* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %22
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = load %struct.iattr*, %struct.iattr** %4, align 8
  %33 = getelementptr inbounds %struct.iattr, %struct.iattr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @fat_cont_expand(%struct.inode* %31, i64 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.iattr*, %struct.iattr** %4, align 8
  %40 = getelementptr inbounds %struct.iattr, %struct.iattr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ATTR_SIZE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %30
  br label %184

45:                                               ; preds = %38
  %46 = load i32, i32* @ATTR_SIZE, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.iattr*, %struct.iattr** %4, align 8
  %49 = getelementptr inbounds %struct.iattr, %struct.iattr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %22
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.iattr*, %struct.iattr** %4, align 8
  %55 = getelementptr inbounds %struct.iattr, %struct.iattr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @TIMES_SET_FLAGS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %53
  %62 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = call i64 @fat_allow_set_time(%struct.msdos_sb_info* %62, %struct.inode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load i32, i32* @TIMES_SET_FLAGS, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.iattr*, %struct.iattr** %4, align 8
  %70 = getelementptr inbounds %struct.iattr, %struct.iattr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %66, %61
  br label %74

74:                                               ; preds = %73, %53
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = load %struct.iattr*, %struct.iattr** %4, align 8
  %77 = call i32 @inode_change_ok(%struct.inode* %75, %struct.iattr* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.iattr*, %struct.iattr** %4, align 8
  %80 = getelementptr inbounds %struct.iattr, %struct.iattr* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %85 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %184

91:                                               ; preds = %74
  %92 = load %struct.iattr*, %struct.iattr** %4, align 8
  %93 = getelementptr inbounds %struct.iattr, %struct.iattr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ATTR_UID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.iattr*, %struct.iattr** %4, align 8
  %100 = getelementptr inbounds %struct.iattr, %struct.iattr* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %103 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %101, %105
  br i1 %106, label %138, label %107

107:                                              ; preds = %98, %91
  %108 = load %struct.iattr*, %struct.iattr** %4, align 8
  %109 = getelementptr inbounds %struct.iattr, %struct.iattr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ATTR_GID, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load %struct.iattr*, %struct.iattr** %4, align 8
  %116 = getelementptr inbounds %struct.iattr, %struct.iattr* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %119 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %117, %121
  br i1 %122, label %138, label %123

123:                                              ; preds = %114, %107
  %124 = load %struct.iattr*, %struct.iattr** %4, align 8
  %125 = getelementptr inbounds %struct.iattr, %struct.iattr* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @ATTR_MODE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %123
  %131 = load %struct.iattr*, %struct.iattr** %4, align 8
  %132 = getelementptr inbounds %struct.iattr, %struct.iattr* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @FAT_VALID_MODE, align 4
  %135 = xor i32 %134, -1
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130, %114, %98
  %139 = load i32, i32* @EPERM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %138, %130, %123
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %141
  %145 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %146 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 0, i32* %8, align 4
  br label %151

151:                                              ; preds = %150, %144
  br label %184

152:                                              ; preds = %141
  %153 = load %struct.iattr*, %struct.iattr** %4, align 8
  %154 = getelementptr inbounds %struct.iattr, %struct.iattr* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ATTR_MODE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %152
  %160 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %5, align 8
  %161 = load %struct.inode*, %struct.inode** %6, align 8
  %162 = load %struct.iattr*, %struct.iattr** %4, align 8
  %163 = getelementptr inbounds %struct.iattr, %struct.iattr* %162, i32 0, i32 4
  %164 = call i64 @fat_sanitize_mode(%struct.msdos_sb_info* %160, %struct.inode* %161, i32* %163)
  %165 = icmp slt i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load i32, i32* @ATTR_MODE, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.iattr*, %struct.iattr** %4, align 8
  %170 = getelementptr inbounds %struct.iattr, %struct.iattr* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %166, %159
  br label %174

174:                                              ; preds = %173, %152
  %175 = load %struct.iattr*, %struct.iattr** %4, align 8
  %176 = getelementptr inbounds %struct.iattr, %struct.iattr* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.inode*, %struct.inode** %6, align 8
  %181 = load %struct.iattr*, %struct.iattr** %4, align 8
  %182 = call i32 @inode_setattr(%struct.inode* %180, %struct.iattr* %181)
  store i32 %182, i32* %8, align 4
  br label %183

183:                                              ; preds = %179, %174
  br label %184

184:                                              ; preds = %183, %151, %90, %44
  %185 = load i32, i32* %8, align 4
  ret i32 %185
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local i32 @fat_cont_expand(%struct.inode*, i64) #1

declare dso_local i64 @fat_allow_set_time(%struct.msdos_sb_info*, %struct.inode*) #1

declare dso_local i32 @inode_change_ok(%struct.inode*, %struct.iattr*) #1

declare dso_local i64 @fat_sanitize_mode(%struct.msdos_sb_info*, %struct.inode*, i32*) #1

declare dso_local i32 @inode_setattr(%struct.inode*, %struct.iattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
