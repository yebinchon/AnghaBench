; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_copy_to_dinode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_copy_to_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinode = type { i8*, i8*, %struct.TYPE_14__, i8*, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i64, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.inode = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.jfs_inode_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jfs_sb_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dinode*, %struct.inode*)* @copy_to_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_to_dinode(%struct.dinode* %0, %struct.inode* %1) #0 {
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
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.jfs_sb_info* @JFS_SBI(i32 %11)
  store %struct.jfs_sb_info* %12, %struct.jfs_sb_info** %6, align 8
  %13 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %14 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.dinode*, %struct.dinode** %3, align 8
  %18 = getelementptr inbounds %struct.dinode, %struct.dinode* %17, i32 0, i32 19
  store i8* %16, i8** %18, align 8
  %19 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %20 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = load %struct.dinode*, %struct.dinode** %3, align 8
  %24 = getelementptr inbounds %struct.dinode, %struct.dinode* %23, i32 0, i32 18
  store i8* %22, i8** %24, align 8
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = load %struct.dinode*, %struct.dinode** %3, align 8
  %30 = getelementptr inbounds %struct.dinode, %struct.dinode* %29, i32 0, i32 17
  store i8* %28, i8** %30, align 8
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.dinode*, %struct.dinode** %3, align 8
  %36 = getelementptr inbounds %struct.dinode, %struct.dinode* %35, i32 0, i32 16
  store i8* %34, i8** %36, align 8
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @cpu_to_le64(i32 %39)
  %41 = load %struct.dinode*, %struct.dinode** %3, align 8
  %42 = getelementptr inbounds %struct.dinode, %struct.dinode* %41, i32 0, i32 15
  store i8* %40, i8** %42, align 8
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @PBLK2LBLK(i32 %45, i32 %48)
  %50 = call i8* @cpu_to_le64(i32 %49)
  %51 = load %struct.dinode*, %struct.dinode** %3, align 8
  %52 = getelementptr inbounds %struct.dinode, %struct.dinode* %51, i32 0, i32 14
  store i8* %50, i8** %52, align 8
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_le32(i32 %55)
  %57 = load %struct.dinode*, %struct.dinode** %3, align 8
  %58 = getelementptr inbounds %struct.dinode, %struct.dinode* %57, i32 0, i32 13
  store i8* %56, i8** %58, align 8
  %59 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %60 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %70

63:                                               ; preds = %2
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.dinode*, %struct.dinode** %3, align 8
  %69 = getelementptr inbounds %struct.dinode, %struct.dinode* %68, i32 0, i32 12
  store i8* %67, i8** %69, align 8
  br label %77

70:                                               ; preds = %2
  %71 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %72 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.dinode*, %struct.dinode** %3, align 8
  %76 = getelementptr inbounds %struct.dinode, %struct.dinode* %75, i32 0, i32 12
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %79 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.inode*, %struct.inode** %4, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.dinode*, %struct.dinode** %3, align 8
  %88 = getelementptr inbounds %struct.dinode, %struct.dinode* %87, i32 0, i32 11
  store i8* %86, i8** %88, align 8
  br label %96

89:                                               ; preds = %77
  %90 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %91 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @cpu_to_le32(i32 %92)
  %94 = load %struct.dinode*, %struct.dinode** %3, align 8
  %95 = getelementptr inbounds %struct.dinode, %struct.dinode* %94, i32 0, i32 11
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %89, %82
  %97 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %98 = call i32 @jfs_get_inode_flags(%struct.jfs_inode_info* %97)
  %99 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %100 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %105 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, -65536
  %108 = load %struct.inode*, %struct.inode** %4, align 8
  %109 = getelementptr inbounds %struct.inode, %struct.inode* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %107, %110
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.dinode*, %struct.dinode** %3, align 8
  %114 = getelementptr inbounds %struct.dinode, %struct.dinode* %113, i32 0, i32 10
  store i8* %112, i8** %114, align 8
  br label %122

115:                                              ; preds = %96
  %116 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %117 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = load %struct.dinode*, %struct.dinode** %3, align 8
  %121 = getelementptr inbounds %struct.dinode, %struct.dinode* %120, i32 0, i32 10
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %115, %103
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = load %struct.dinode*, %struct.dinode** %3, align 8
  %129 = getelementptr inbounds %struct.dinode, %struct.dinode* %128, i32 0, i32 9
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i8* %127, i8** %130, align 8
  %131 = load %struct.inode*, %struct.inode** %4, align 8
  %132 = getelementptr inbounds %struct.inode, %struct.inode* %131, i32 0, i32 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @cpu_to_le32(i32 %134)
  %136 = load %struct.dinode*, %struct.dinode** %3, align 8
  %137 = getelementptr inbounds %struct.dinode, %struct.dinode* %136, i32 0, i32 9
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.dinode*, %struct.dinode** %3, align 8
  %145 = getelementptr inbounds %struct.dinode, %struct.dinode* %144, i32 0, i32 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store i8* %143, i8** %146, align 8
  %147 = load %struct.inode*, %struct.inode** %4, align 8
  %148 = getelementptr inbounds %struct.inode, %struct.inode* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.dinode*, %struct.dinode** %3, align 8
  %153 = getelementptr inbounds %struct.dinode, %struct.dinode* %152, i32 0, i32 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  store i8* %151, i8** %154, align 8
  %155 = load %struct.inode*, %struct.inode** %4, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 6
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = load %struct.dinode*, %struct.dinode** %3, align 8
  %161 = getelementptr inbounds %struct.dinode, %struct.dinode* %160, i32 0, i32 7
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load %struct.inode*, %struct.inode** %4, align 8
  %164 = getelementptr inbounds %struct.inode, %struct.inode* %163, i32 0, i32 6
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.dinode*, %struct.dinode** %3, align 8
  %169 = getelementptr inbounds %struct.dinode, %struct.dinode* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  store i8* %167, i8** %170, align 8
  %171 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %172 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.dinode*, %struct.dinode** %3, align 8
  %175 = getelementptr inbounds %struct.dinode, %struct.dinode* %174, i32 0, i32 6
  store i32 %173, i32* %175, align 8
  %176 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %177 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.dinode*, %struct.dinode** %3, align 8
  %180 = getelementptr inbounds %struct.dinode, %struct.dinode* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 4
  %181 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %182 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.dinode*, %struct.dinode** %3, align 8
  %185 = getelementptr inbounds %struct.dinode, %struct.dinode* %184, i32 0, i32 4
  store i32 %183, i32* %185, align 8
  %186 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %187 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @cpu_to_le32(i32 %188)
  %190 = load %struct.dinode*, %struct.dinode** %3, align 8
  %191 = getelementptr inbounds %struct.dinode, %struct.dinode* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  %192 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %193 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @cpu_to_le32(i32 %194)
  %196 = load %struct.dinode*, %struct.dinode** %3, align 8
  %197 = getelementptr inbounds %struct.dinode, %struct.dinode* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load %struct.dinode*, %struct.dinode** %3, align 8
  %200 = getelementptr inbounds %struct.dinode, %struct.dinode* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  store i64 0, i64* %201, align 8
  %202 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %203 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 4
  %205 = call i8* @cpu_to_le32(i32 %204)
  %206 = load %struct.dinode*, %struct.dinode** %3, align 8
  %207 = getelementptr inbounds %struct.dinode, %struct.dinode* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load %struct.inode*, %struct.inode** %4, align 8
  %209 = getelementptr inbounds %struct.inode, %struct.inode* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @S_ISCHR(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %122
  %214 = load %struct.inode*, %struct.inode** %4, align 8
  %215 = getelementptr inbounds %struct.inode, %struct.inode* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i64 @S_ISBLK(i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %226

219:                                              ; preds = %213, %122
  %220 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %221 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %220, i32 0, i32 7
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @cpu_to_le32(i32 %222)
  %224 = load %struct.dinode*, %struct.dinode** %3, align 8
  %225 = getelementptr inbounds %struct.dinode, %struct.dinode* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %219, %213
  ret void
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @PBLK2LBLK(i32, i32) #1

declare dso_local i32 @jfs_get_inode_flags(%struct.jfs_inode_info*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
