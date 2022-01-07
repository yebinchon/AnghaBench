; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.jfs_sb_info = type { i64, i32, i32, %struct.inode* }
%struct.dinode = type { i32, i32 }
%struct.iag = type { i32, i32* }
%struct.metapage = type { i64 }
%struct.inomap = type { i64 }
%struct.TYPE_2__ = type { i32, i32, %struct.inomap*, %struct.inode* }

@.str = private unnamed_addr constant [18 x i8] c"diRead: ino = %ld\00", align 1
@RDWRLOCK_IMAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"diRead: diIAGRead returned %d\00", align 1
@INOSPERIAG = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@INOSPERPAGE = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"diRead: read_metapage failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"diRead: i_ino != di_number\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diRead(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.jfs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dinode*, align 8
  %11 = alloca %struct.iag*, align 8
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.inomap*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.jfs_sb_info* @JFS_SBI(i32 %22)
  store %struct.jfs_sb_info* %23, %struct.jfs_sb_info** %4, align 8
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @jfs_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %29 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %28, i32 0, i32 3
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  store %struct.inode* %30, %struct.inode** %9, align 8
  %31 = load %struct.inode*, %struct.inode** %9, align 8
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store %struct.inode* %31, %struct.inode** %34, align 8
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @INOTOIAG(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.inode*, %struct.inode** %9, align 8
  %40 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load %struct.inomap*, %struct.inomap** %41, align 8
  store %struct.inomap* %42, %struct.inomap** %15, align 8
  %43 = load %struct.inode*, %struct.inode** %9, align 8
  %44 = load i32, i32* @RDWRLOCK_IMAP, align 4
  %45 = call i32 @IREAD_LOCK(%struct.inode* %43, i32 %44)
  %46 = load %struct.inomap*, %struct.inomap** %15, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @diIAGRead(%struct.inomap* %46, i32 %47, %struct.metapage** %12)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.inode*, %struct.inode** %9, align 8
  %50 = call i32 @IREAD_UNLOCK(%struct.inode* %49)
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %1
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %225

57:                                               ; preds = %1
  %58 = load %struct.metapage*, %struct.metapage** %12, align 8
  %59 = getelementptr inbounds %struct.metapage, %struct.metapage* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.iag*
  store %struct.iag* %61, %struct.iag** %11, align 8
  %62 = load %struct.inode*, %struct.inode** %3, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @INOSPERIAG, align 4
  %66 = sub nsw i32 %65, 1
  %67 = and i32 %64, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @L2INOSPEREXT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %7, align 4
  %71 = load %struct.iag*, %struct.iag** %11, align 8
  %72 = getelementptr inbounds %struct.iag, %struct.iag* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i64 @lengthPXD(i32* %76)
  %78 = load %struct.inomap*, %struct.inomap** %15, align 8
  %79 = getelementptr inbounds %struct.inomap, %struct.inomap* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %91, label %82

82:                                               ; preds = %57
  %83 = load %struct.iag*, %struct.iag** %11, align 8
  %84 = getelementptr inbounds %struct.iag, %struct.iag* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i64 @addressPXD(i32* %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %82, %57
  %92 = load %struct.metapage*, %struct.metapage** %12, align 8
  %93 = call i32 @release_metapage(%struct.metapage* %92)
  %94 = load i32, i32* @ESTALE, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %225

96:                                               ; preds = %82
  %97 = load %struct.iag*, %struct.iag** %11, align 8
  %98 = getelementptr inbounds %struct.iag, %struct.iag* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %105 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i64 @INOPBLK(i32* %102, i32 %103, i64 %106)
  store i64 %107, i64* %13, align 8
  %108 = load %struct.iag*, %struct.iag** %11, align 8
  %109 = getelementptr inbounds %struct.iag, %struct.iag* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @le64_to_cpu(i32 %110)
  store i64 %111, i64* %14, align 8
  %112 = load %struct.metapage*, %struct.metapage** %12, align 8
  %113 = call i32 @release_metapage(%struct.metapage* %112)
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @INOSPERPAGE, align 4
  %116 = sub nsw i32 %115, 1
  %117 = and i32 %114, %116
  store i32 %117, i32* %19, align 4
  %118 = load i64, i64* %13, align 8
  %119 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %120 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = lshr i64 %118, %121
  store i64 %122, i64* %18, align 8
  %123 = load i64, i64* %13, align 8
  %124 = trunc i64 %123 to i32
  %125 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %126 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = and i32 %124, %128
  store i32 %129, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %96
  %132 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %133 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %138 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %136, %139
  store i32 %140, i32* %17, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load i32, i32* %17, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %131
  %145 = load i32, i32* %16, align 4
  %146 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %147 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 %145, %148
  %150 = load i32, i32* %19, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %19, align 4
  br label %158

152:                                              ; preds = %131
  %153 = load i64, i64* %18, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %18, align 8
  %155 = load i32, i32* %17, align 4
  %156 = load i32, i32* %19, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %19, align 4
  br label %158

158:                                              ; preds = %152, %144
  br label %159

159:                                              ; preds = %158, %96
  %160 = load %struct.inode*, %struct.inode** %9, align 8
  %161 = load i64, i64* %18, align 8
  %162 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %163 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = shl i64 %161, %164
  %166 = load i32, i32* @PSIZE, align 4
  %167 = call %struct.metapage* @read_metapage(%struct.inode* %160, i64 %165, i32 %166, i32 1)
  store %struct.metapage* %167, %struct.metapage** %12, align 8
  %168 = load %struct.metapage*, %struct.metapage** %12, align 8
  %169 = icmp ne %struct.metapage* %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %159
  %171 = call i32 (i8*, ...) @jfs_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %225

174:                                              ; preds = %159
  %175 = load %struct.metapage*, %struct.metapage** %12, align 8
  %176 = getelementptr inbounds %struct.metapage, %struct.metapage* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.dinode*
  store %struct.dinode* %178, %struct.dinode** %10, align 8
  %179 = load i32, i32* %19, align 4
  %180 = load %struct.dinode*, %struct.dinode** %10, align 8
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds %struct.dinode, %struct.dinode* %180, i64 %181
  store %struct.dinode* %182, %struct.dinode** %10, align 8
  %183 = load %struct.inode*, %struct.inode** %3, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.dinode*, %struct.dinode** %10, align 8
  %187 = getelementptr inbounds %struct.dinode, %struct.dinode* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @le32_to_cpu(i32 %188)
  %190 = icmp ne i32 %185, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %174
  %192 = load %struct.inode*, %struct.inode** %3, align 8
  %193 = getelementptr inbounds %struct.inode, %struct.inode* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @jfs_error(i32 %194, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %8, align 4
  br label %212

198:                                              ; preds = %174
  %199 = load %struct.dinode*, %struct.dinode** %10, align 8
  %200 = getelementptr inbounds %struct.dinode, %struct.dinode* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @le32_to_cpu(i32 %201)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load i32, i32* @ESTALE, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %211

207:                                              ; preds = %198
  %208 = load %struct.dinode*, %struct.dinode** %10, align 8
  %209 = load %struct.inode*, %struct.inode** %3, align 8
  %210 = call i32 @copy_from_dinode(%struct.dinode* %208, %struct.inode* %209)
  store i32 %210, i32* %8, align 4
  br label %211

211:                                              ; preds = %207, %204
  br label %212

212:                                              ; preds = %211, %191
  %213 = load %struct.metapage*, %struct.metapage** %12, align 8
  %214 = call i32 @release_metapage(%struct.metapage* %213)
  %215 = load i64, i64* %14, align 8
  %216 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %4, align 8
  %217 = call i32 @BLKTOAG(i64 %215, %struct.jfs_sb_info* %216)
  %218 = load %struct.inode*, %struct.inode** %3, align 8
  %219 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %218)
  %220 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i32 0, i32 1
  store i32 %217, i32* %220, align 4
  %221 = load %struct.inode*, %struct.inode** %3, align 8
  %222 = call %struct.TYPE_2__* @JFS_IP(%struct.inode* %221)
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  store i32 -1, i32* %223, align 8
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %212, %170, %91, %53
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_info(i8*, i32) #1

declare dso_local %struct.TYPE_2__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @INOTOIAG(i32) #1

declare dso_local i32 @IREAD_LOCK(%struct.inode*, i32) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @IREAD_UNLOCK(%struct.inode*) #1

declare dso_local i32 @jfs_err(i8*, ...) #1

declare dso_local i64 @lengthPXD(i32*) #1

declare dso_local i64 @addressPXD(i32*) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i64 @INOPBLK(i32*, i32, i64) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i64, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @copy_from_dinode(%struct.dinode*, %struct.inode*) #1

declare dso_local i32 @BLKTOAG(i64, %struct.jfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
