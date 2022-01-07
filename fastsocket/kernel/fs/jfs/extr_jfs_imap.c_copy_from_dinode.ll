; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_copy_from_dinode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_copy_from_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinode = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.jfs_inode_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.jfs_sb_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dinode*, %struct.inode*)* @copy_from_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_dinode(%struct.dinode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dinode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.jfs_inode_info*, align 8
  %6 = alloca %struct.jfs_sb_info*, align 8
  store %struct.dinode* %0, %struct.dinode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %7)
  store %struct.jfs_inode_info* %8, %struct.jfs_inode_info** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.jfs_sb_info* @JFS_SBI(i32 %11)
  store %struct.jfs_sb_info* %12, %struct.jfs_sb_info** %6, align 8
  %13 = load %struct.dinode*, %struct.dinode** %3, align 8
  %14 = getelementptr inbounds %struct.dinode, %struct.dinode* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %18 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dinode*, %struct.dinode** %3, align 8
  %20 = getelementptr inbounds %struct.dinode, %struct.dinode* %19, i32 0, i32 19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %24 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @jfs_set_inode_flags(%struct.inode* %25)
  %27 = load %struct.dinode*, %struct.dinode** %3, align 8
  %28 = getelementptr inbounds %struct.dinode, %struct.dinode* %27, i32 0, i32 19
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = and i32 %30, 65535
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %91

38:                                               ; preds = %2
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -512
  %43 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 511, %46
  %48 = or i32 %42, %47
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %38
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 64
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, 8
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89, %38
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.dinode*, %struct.dinode** %3, align 8
  %93 = getelementptr inbounds %struct.dinode, %struct.dinode* %92, i32 0, i32 18
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.dinode*, %struct.dinode** %3, align 8
  %99 = getelementptr inbounds %struct.dinode, %struct.dinode* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %103 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %105 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %114

108:                                              ; preds = %91
  %109 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %110 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.inode*, %struct.inode** %4, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  br label %120

114:                                              ; preds = %91
  %115 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %116 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.inode*, %struct.inode** %4, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %114, %108
  %121 = load %struct.dinode*, %struct.dinode** %3, align 8
  %122 = getelementptr inbounds %struct.dinode, %struct.dinode* %121, i32 0, i32 16
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le32_to_cpu(i32 %123)
  %125 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %126 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %128 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %137

131:                                              ; preds = %120
  %132 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %133 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  br label %143

137:                                              ; preds = %120
  %138 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %139 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.inode*, %struct.inode** %4, align 8
  %142 = getelementptr inbounds %struct.inode, %struct.inode* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  br label %143

143:                                              ; preds = %137, %131
  %144 = load %struct.dinode*, %struct.dinode** %3, align 8
  %145 = getelementptr inbounds %struct.dinode, %struct.dinode* %144, i32 0, i32 15
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le64_to_cpu(i32 %146)
  %148 = load %struct.inode*, %struct.inode** %4, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 11
  store i32 %147, i32* %149, align 4
  %150 = load %struct.dinode*, %struct.dinode** %3, align 8
  %151 = getelementptr inbounds %struct.dinode, %struct.dinode* %150, i32 0, i32 14
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le32_to_cpu(i32 %153)
  %155 = load %struct.inode*, %struct.inode** %4, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 10
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 4
  %158 = load %struct.dinode*, %struct.dinode** %3, align 8
  %159 = getelementptr inbounds %struct.dinode, %struct.dinode* %158, i32 0, i32 14
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @le32_to_cpu(i32 %161)
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 10
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load %struct.dinode*, %struct.dinode** %3, align 8
  %167 = getelementptr inbounds %struct.dinode, %struct.dinode* %166, i32 0, i32 13
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @le32_to_cpu(i32 %169)
  %171 = load %struct.inode*, %struct.inode** %4, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  store i32 %170, i32* %173, align 4
  %174 = load %struct.dinode*, %struct.dinode** %3, align 8
  %175 = getelementptr inbounds %struct.dinode, %struct.dinode* %174, i32 0, i32 13
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @le32_to_cpu(i32 %177)
  %179 = load %struct.inode*, %struct.inode** %4, align 8
  %180 = getelementptr inbounds %struct.inode, %struct.inode* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 4
  %182 = load %struct.dinode*, %struct.dinode** %3, align 8
  %183 = getelementptr inbounds %struct.dinode, %struct.dinode* %182, i32 0, i32 12
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @le32_to_cpu(i32 %185)
  %187 = load %struct.inode*, %struct.inode** %4, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 4
  %190 = load %struct.dinode*, %struct.dinode** %3, align 8
  %191 = getelementptr inbounds %struct.dinode, %struct.dinode* %190, i32 0, i32 12
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @le32_to_cpu(i32 %193)
  %195 = load %struct.inode*, %struct.inode** %4, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 4
  %198 = load %struct.inode*, %struct.inode** %4, align 8
  %199 = getelementptr inbounds %struct.inode, %struct.inode* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.dinode*, %struct.dinode** %3, align 8
  %202 = getelementptr inbounds %struct.dinode, %struct.dinode* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @le64_to_cpu(i32 %203)
  %205 = call i32 @LBLK2PBLK(i32 %200, i32 %204)
  %206 = load %struct.inode*, %struct.inode** %4, align 8
  %207 = getelementptr inbounds %struct.inode, %struct.inode* %206, i32 0, i32 7
  store i32 %205, i32* %207, align 4
  %208 = load %struct.dinode*, %struct.dinode** %3, align 8
  %209 = getelementptr inbounds %struct.dinode, %struct.dinode* %208, i32 0, i32 10
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @le32_to_cpu(i32 %210)
  %212 = load %struct.inode*, %struct.inode** %4, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 4
  store i32 %211, i32* %213, align 4
  %214 = load %struct.dinode*, %struct.dinode** %3, align 8
  %215 = getelementptr inbounds %struct.dinode, %struct.dinode* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %218 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %217, i32 0, i32 21
  store i32 %216, i32* %218, align 4
  %219 = load %struct.dinode*, %struct.dinode** %3, align 8
  %220 = getelementptr inbounds %struct.dinode, %struct.dinode* %219, i32 0, i32 8
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %223 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %222, i32 0, i32 20
  store i32 %221, i32* %223, align 8
  %224 = load %struct.dinode*, %struct.dinode** %3, align 8
  %225 = getelementptr inbounds %struct.dinode, %struct.dinode* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %228 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %227, i32 0, i32 19
  store i32 %226, i32* %228, align 4
  %229 = load %struct.dinode*, %struct.dinode** %3, align 8
  %230 = getelementptr inbounds %struct.dinode, %struct.dinode* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @le32_to_cpu(i32 %231)
  %233 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %234 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  %235 = load %struct.dinode*, %struct.dinode** %3, align 8
  %236 = getelementptr inbounds %struct.dinode, %struct.dinode* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @le32_to_cpu(i32 %238)
  %240 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %241 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %240, i32 0, i32 5
  store i32 %239, i32* %241, align 4
  %242 = load %struct.dinode*, %struct.dinode** %3, align 8
  %243 = getelementptr inbounds %struct.dinode, %struct.dinode* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le32_to_cpu(i32 %244)
  %246 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %247 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 8
  %248 = load %struct.inode*, %struct.inode** %4, align 8
  %249 = getelementptr inbounds %struct.inode, %struct.inode* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i64 @S_ISCHR(i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %259, label %253

253:                                              ; preds = %143
  %254 = load %struct.inode*, %struct.inode** %4, align 8
  %255 = getelementptr inbounds %struct.inode, %struct.inode* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i64 @S_ISBLK(i32 %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %253, %143
  %260 = load %struct.dinode*, %struct.dinode** %3, align 8
  %261 = getelementptr inbounds %struct.dinode, %struct.dinode* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @le32_to_cpu(i32 %262)
  %264 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %265 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %264, i32 0, i32 7
  store i32 %263, i32* %265, align 4
  %266 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %267 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %266, i32 0, i32 7
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @new_decode_dev(i32 %268)
  %270 = load %struct.inode*, %struct.inode** %4, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 5
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %259, %253
  %273 = load %struct.inode*, %struct.inode** %4, align 8
  %274 = getelementptr inbounds %struct.inode, %struct.inode* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i64 @S_ISDIR(i32 %275)
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %280 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %279, i32 0, i32 18
  %281 = load %struct.dinode*, %struct.dinode** %3, align 8
  %282 = getelementptr inbounds %struct.dinode, %struct.dinode* %281, i32 0, i32 2
  %283 = call i32 @memcpy(i32* %280, i32* %282, i32 384)
  br label %309

284:                                              ; preds = %272
  %285 = load %struct.inode*, %struct.inode** %4, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i64 @S_ISREG(i32 %287)
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %296, label %290

290:                                              ; preds = %284
  %291 = load %struct.inode*, %struct.inode** %4, align 8
  %292 = getelementptr inbounds %struct.inode, %struct.inode* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @S_ISLNK(i32 %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %290, %284
  %297 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %298 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %297, i32 0, i32 17
  %299 = load %struct.dinode*, %struct.dinode** %3, align 8
  %300 = getelementptr inbounds %struct.dinode, %struct.dinode* %299, i32 0, i32 1
  %301 = call i32 @memcpy(i32* %298, i32* %300, i32 288)
  br label %308

302:                                              ; preds = %290
  %303 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %304 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %303, i32 0, i32 16
  %305 = load %struct.dinode*, %struct.dinode** %3, align 8
  %306 = getelementptr inbounds %struct.dinode, %struct.dinode* %305, i32 0, i32 0
  %307 = call i32 @memcpy(i32* %304, i32* %306, i32 128)
  br label %308

308:                                              ; preds = %302, %296
  br label %309

309:                                              ; preds = %308, %278
  %310 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %311 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %310, i32 0, i32 15
  store i64 0, i64* %311, align 8
  %312 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %313 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %312, i32 0, i32 14
  store i64 0, i64* %313, align 8
  %314 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %315 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %314, i32 0, i32 13
  store i64 0, i64* %315, align 8
  %316 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %317 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %316, i32 0, i32 12
  store i64 0, i64* %317, align 8
  %318 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %319 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %318, i32 0, i32 11
  store i64 0, i64* %319, align 8
  %320 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %321 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %320, i32 0, i32 10
  store i64 0, i64* %321, align 8
  %322 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %323 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %322, i32 0, i32 9
  store i64 0, i64* %323, align 8
  %324 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %325 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %324, i32 0, i32 8
  store i64 0, i64* %325, align 8
  ret i32 0
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @jfs_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @LBLK2PBLK(i32, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
