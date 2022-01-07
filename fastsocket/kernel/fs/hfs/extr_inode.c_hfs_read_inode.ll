; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hfs/extr_inode.c_hfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.inode = type { i32, i32, i32*, i32*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.hfs_iget_data = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hfs_sb_info = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32* }

@HFS_FLG_RSRC = common dso_local global i32 0, align 4
@sys_tz = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@HFS_FIL_LOCK = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@hfs_file_inode_operations = common dso_local global i32 0, align 4
@hfs_file_operations = common dso_local global i32 0, align 4
@hfs_aops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@hfs_dir_inode_operations = common dso_local global i32 0, align 4
@hfs_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @hfs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfs_read_inode(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hfs_iget_data*, align 8
  %6 = alloca %struct.hfs_sb_info*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hfs_iget_data*
  store %struct.hfs_iget_data* %9, %struct.hfs_iget_data** %5, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.hfs_sb_info* @HFS_SB(i32 %12)
  store %struct.hfs_sb_info* %13, %struct.hfs_sb_info** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %17)
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  store i32* null, i32** %19, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = call i32 @mutex_init(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %29 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.inode*, %struct.inode** %3, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 11
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %34 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 8
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.hfs_iget_data*, %struct.hfs_iget_data** %5, align 8
  %41 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %2
  %45 = load %struct.hfs_iget_data*, %struct.hfs_iget_data** %5, align 8
  %46 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inode*, %struct.inode** %3, align 8
  %50 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %49)
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  br label %59

52:                                               ; preds = %2
  %53 = load i32, i32* @HFS_FLG_RSRC, align 4
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %44
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @sys_tz, i32 0, i32 0), align 4
  %61 = mul nsw i32 %60, 60
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.hfs_iget_data*, %struct.hfs_iget_data** %5, align 8
  %66 = getelementptr inbounds %struct.hfs_iget_data, %struct.hfs_iget_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %7, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %218 [
    i32 128, label %71
    i32 129, label %174
  ]

71:                                               ; preds = %59
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call i32 @HFS_IS_RSRC(%struct.inode* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @be16_to_cpu(i32 %92)
  %94 = call i32 @hfs_inode_read_fork(%struct.inode* %76, i32 %80, i32 %84, i32 %88, i32 %93)
  br label %115

95:                                               ; preds = %71
  %96 = load %struct.inode*, %struct.inode** %3, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @be16_to_cpu(i32 %112)
  %114 = call i32 @hfs_inode_read_fork(%struct.inode* %96, i32 %100, i32 %104, i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %95, %75
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @be32_to_cpu(i32 %119)
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 8
  store i8* %120, i8** %122, align 8
  %123 = load i32, i32* @S_IRUGO, align 4
  %124 = load i32, i32* @S_IXUGO, align 4
  %125 = or i32 %123, %124
  %126 = load %struct.inode*, %struct.inode** %3, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @HFS_FIL_LOCK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %115
  %136 = load i32, i32* @S_IWUGO, align 4
  %137 = load %struct.inode*, %struct.inode** %3, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %115
  %142 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %143 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.inode*, %struct.inode** %3, align 8
  %147 = getelementptr inbounds %struct.inode, %struct.inode* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* @S_IFREG, align 4
  %151 = load %struct.inode*, %struct.inode** %3, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @hfs_m_to_utime(i32 %158)
  %160 = load %struct.inode*, %struct.inode** %3, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 4
  store i8* %159, i8** %161, align 8
  %162 = load %struct.inode*, %struct.inode** %3, align 8
  %163 = getelementptr inbounds %struct.inode, %struct.inode* %162, i32 0, i32 5
  store i8* %159, i8** %163, align 8
  %164 = load %struct.inode*, %struct.inode** %3, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 6
  store i8* %159, i8** %165, align 8
  %166 = load %struct.inode*, %struct.inode** %3, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 3
  store i32* @hfs_file_inode_operations, i32** %167, align 8
  %168 = load %struct.inode*, %struct.inode** %3, align 8
  %169 = getelementptr inbounds %struct.inode, %struct.inode* %168, i32 0, i32 2
  store i32* @hfs_file_operations, i32** %169, align 8
  %170 = load %struct.inode*, %struct.inode** %3, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 9
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i32* @hfs_aops, i32** %173, align 8
  br label %221

174:                                              ; preds = %59
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @be32_to_cpu(i32 %178)
  %180 = load %struct.inode*, %struct.inode** %3, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 8
  store i8* %179, i8** %181, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @be16_to_cpu(i32 %185)
  %187 = add nsw i32 %186, 2
  %188 = load %struct.inode*, %struct.inode** %3, align 8
  %189 = getelementptr inbounds %struct.inode, %struct.inode* %188, i32 0, i32 7
  store i32 %187, i32* %189, align 8
  %190 = load %struct.inode*, %struct.inode** %3, align 8
  %191 = call %struct.TYPE_12__* @HFS_I(%struct.inode* %190)
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  %193 = load i32, i32* @S_IFDIR, align 4
  %194 = load i32, i32* @S_IRWXUGO, align 4
  %195 = load %struct.hfs_sb_info*, %struct.hfs_sb_info** %6, align 8
  %196 = getelementptr inbounds %struct.hfs_sb_info, %struct.hfs_sb_info* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %194, %198
  %200 = or i32 %193, %199
  %201 = load %struct.inode*, %struct.inode** %3, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 1
  store i32 %200, i32* %202, align 4
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i8* @hfs_m_to_utime(i32 %206)
  %208 = load %struct.inode*, %struct.inode** %3, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 4
  store i8* %207, i8** %209, align 8
  %210 = load %struct.inode*, %struct.inode** %3, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 5
  store i8* %207, i8** %211, align 8
  %212 = load %struct.inode*, %struct.inode** %3, align 8
  %213 = getelementptr inbounds %struct.inode, %struct.inode* %212, i32 0, i32 6
  store i8* %207, i8** %213, align 8
  %214 = load %struct.inode*, %struct.inode** %3, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 3
  store i32* @hfs_dir_inode_operations, i32** %215, align 8
  %216 = load %struct.inode*, %struct.inode** %3, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 2
  store i32* @hfs_dir_operations, i32** %217, align 8
  br label %221

218:                                              ; preds = %59
  %219 = load %struct.inode*, %struct.inode** %3, align 8
  %220 = call i32 @make_bad_inode(%struct.inode* %219)
  br label %221

221:                                              ; preds = %218, %174, %141
  ret i32 0
}

declare dso_local %struct.hfs_sb_info* @HFS_SB(i32) #1

declare dso_local %struct.TYPE_12__* @HFS_I(%struct.inode*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @HFS_IS_RSRC(%struct.inode*) #1

declare dso_local i32 @hfs_inode_read_fork(%struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @hfs_m_to_utime(i32) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
