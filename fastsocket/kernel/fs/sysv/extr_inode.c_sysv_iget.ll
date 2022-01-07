; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_inode.c_sysv_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i8*, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i8*, i8*, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64, i8* }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32 }
%struct.buffer_head = type { i32 }
%struct.sysv_inode = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sysv_inode_info = type { i32*, i64 }

@.str = private unnamed_addr constant [48 x i8] c"Bad inode number on dev %s: %d is out of range\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Major problem: unable to read inode from dev %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @sysv_iget(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysv_sb_info*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.sysv_inode*, align 8
  %9 = alloca %struct.sysv_inode_info*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %12)
  store %struct.sysv_sb_info* %13, %struct.sysv_sb_info** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %19 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ugt i32 %17, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16, %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.inode* @ERR_PTR(i32 %29)
  store %struct.inode* %30, %struct.inode** %3, align 8
  br label %200

31:                                               ; preds = %16
  %32 = load %struct.super_block*, %struct.super_block** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call %struct.inode* @iget_locked(%struct.super_block* %32, i32 %33)
  store %struct.inode* %34, %struct.inode** %10, align 8
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = icmp ne %struct.inode* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.inode* @ERR_PTR(i32 %39)
  store %struct.inode* %40, %struct.inode** %3, align 8
  br label %200

41:                                               ; preds = %31
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I_NEW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %49, %struct.inode** %3, align 8
  br label %200

50:                                               ; preds = %41
  %51 = load %struct.super_block*, %struct.super_block** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call %struct.sysv_inode* @sysv_raw_inode(%struct.super_block* %51, i32 %52, %struct.buffer_head** %7)
  store %struct.sysv_inode* %53, %struct.sysv_inode** %8, align 8
  %54 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %55 = icmp ne %struct.sysv_inode* %54, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load %struct.inode*, %struct.inode** %10, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 10
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %194

63:                                               ; preds = %50
  %64 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %65 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %66 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %64, i32 %67)
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %72 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %73 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %71, i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 9
  store i64 %76, i64* %78, align 8
  %79 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %80 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %81 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %79, i32 %82)
  %84 = ptrtoint i8* %83 to i64
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 8
  store i64 %84, i64* %86, align 8
  %87 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %88 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %89 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %87, i32 %90)
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 7
  store i8* %91, i8** %93, align 8
  %94 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %95 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %96 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %94, i32 %97)
  %99 = load %struct.inode*, %struct.inode** %10, align 8
  %100 = getelementptr inbounds %struct.inode, %struct.inode* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %102 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %103 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %101, i32 %104)
  %106 = load %struct.inode*, %struct.inode** %10, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  %109 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %110 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %111 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %109, i32 %112)
  %114 = load %struct.inode*, %struct.inode** %10, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i8* %113, i8** %116, align 8
  %117 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %118 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %119 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %117, i32 %120)
  %122 = load %struct.inode*, %struct.inode** %10, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  store i8* %121, i8** %124, align 8
  %125 = load %struct.inode*, %struct.inode** %10, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  %128 = load %struct.inode*, %struct.inode** %10, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load %struct.inode*, %struct.inode** %10, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 2
  store i64 0, i64* %135, align 8
  %136 = load %struct.inode*, %struct.inode** %10, align 8
  %137 = call %struct.sysv_inode_info* @SYSV_I(%struct.inode* %136)
  store %struct.sysv_inode_info* %137, %struct.sysv_inode_info** %9, align 8
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %157, %63
  %139 = load i32, i32* %11, align 4
  %140 = icmp ult i32 %139, 13
  br i1 %140, label %141, label %160

141:                                              ; preds = %138
  %142 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %143 = load %struct.sysv_inode*, %struct.sysv_inode** %8, align 8
  %144 = getelementptr inbounds %struct.sysv_inode, %struct.sysv_inode* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %11, align 4
  %147 = mul i32 3, %146
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  %150 = load %struct.sysv_inode_info*, %struct.sysv_inode_info** %9, align 8
  %151 = getelementptr inbounds %struct.sysv_inode_info, %struct.sysv_inode_info* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %11, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = call i32 @read3byte(%struct.sysv_sb_info* %142, i32* %149, i32* %155)
  br label %157

157:                                              ; preds = %141
  %158 = load i32, i32* %11, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %138

160:                                              ; preds = %138
  %161 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %162 = call i32 @brelse(%struct.buffer_head* %161)
  %163 = load %struct.sysv_inode_info*, %struct.sysv_inode_info** %9, align 8
  %164 = getelementptr inbounds %struct.sysv_inode_info, %struct.sysv_inode_info* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.inode*, %struct.inode** %10, align 8
  %166 = getelementptr inbounds %struct.inode, %struct.inode* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @S_ISCHR(i8* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %160
  %171 = load %struct.inode*, %struct.inode** %10, align 8
  %172 = getelementptr inbounds %struct.inode, %struct.inode* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = call i64 @S_ISBLK(i8* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %187

176:                                              ; preds = %170, %160
  %177 = load %struct.inode*, %struct.inode** %10, align 8
  %178 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %6, align 8
  %179 = load %struct.sysv_inode_info*, %struct.sysv_inode_info** %9, align 8
  %180 = getelementptr inbounds %struct.sysv_inode_info, %struct.sysv_inode_info* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @fs32_to_cpu(%struct.sysv_sb_info* %178, i32 %183)
  %185 = call i32 @old_decode_dev(i8* %184)
  %186 = call i32 @sysv_set_inode(%struct.inode* %177, i32 %185)
  br label %190

187:                                              ; preds = %170
  %188 = load %struct.inode*, %struct.inode** %10, align 8
  %189 = call i32 @sysv_set_inode(%struct.inode* %188, i32 0)
  br label %190

190:                                              ; preds = %187, %176
  %191 = load %struct.inode*, %struct.inode** %10, align 8
  %192 = call i32 @unlock_new_inode(%struct.inode* %191)
  %193 = load %struct.inode*, %struct.inode** %10, align 8
  store %struct.inode* %193, %struct.inode** %3, align 8
  br label %200

194:                                              ; preds = %56
  %195 = load %struct.inode*, %struct.inode** %10, align 8
  %196 = call i32 @iget_failed(%struct.inode* %195)
  %197 = load i32, i32* @EIO, align 4
  %198 = sub nsw i32 0, %197
  %199 = call %struct.inode* @ERR_PTR(i32 %198)
  store %struct.inode* %199, %struct.inode** %3, align 8
  br label %200

200:                                              ; preds = %194, %190, %48, %37, %22
  %201 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %201
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i32) #1

declare dso_local %struct.sysv_inode* @sysv_raw_inode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i8* @fs16_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local i8* @fs32_to_cpu(%struct.sysv_sb_info*, i32) #1

declare dso_local %struct.sysv_inode_info* @SYSV_I(%struct.inode*) #1

declare dso_local i32 @read3byte(%struct.sysv_sb_info*, i32*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @S_ISCHR(i8*) #1

declare dso_local i64 @S_ISBLK(i8*) #1

declare dso_local i32 @sysv_set_inode(%struct.inode*, i32) #1

declare dso_local i32 @old_decode_dev(i8*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
