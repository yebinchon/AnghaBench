; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_bplus_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_bplus_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.bplus_header = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.anode = type { %struct.bplus_header }
%struct.hpfs_inode_info = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [18 x i8] c"hpfs_bplus_lookup\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"sector %08x not found in internal anode %08x\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"sector %08x not found in external anode %08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hpfs_bplus_lookup(%struct.super_block* %0, %struct.inode* %1, %struct.bplus_header* %2, i32 %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.bplus_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.anode*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hpfs_inode_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.bplus_header* %2, %struct.bplus_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %18

18:                                               ; preds = %72, %5
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.super_block*, %struct.super_block** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i64 @hpfs_stop_cycles(%struct.super_block* %25, i32 %26, i32* %15, i32* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %217

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %18
  %32 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %33 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %76, %36
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %40 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %79

43:                                               ; preds = %37
  %44 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %45 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %75

55:                                               ; preds = %43
  %56 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %57 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %66 = call i32 @brelse(%struct.buffer_head* %65)
  %67 = load %struct.super_block*, %struct.super_block** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %67, i32 %68, %struct.buffer_head** %11)
  store %struct.anode* %69, %struct.anode** %13, align 8
  %70 = icmp ne %struct.anode* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %55
  store i32 -1, i32* %6, align 4
  br label %217

72:                                               ; preds = %55
  %73 = load %struct.anode*, %struct.anode** %13, align 8
  %74 = getelementptr inbounds %struct.anode, %struct.anode* %73, i32 0, i32 0
  store %struct.bplus_header* %74, %struct.bplus_header** %9, align 8
  br label %18

75:                                               ; preds = %43
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %37

79:                                               ; preds = %37
  %80 = load %struct.super_block*, %struct.super_block** %7, align 8
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @hpfs_error(%struct.super_block* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %85 = call i32 @brelse(%struct.buffer_head* %84)
  store i32 -1, i32* %6, align 4
  br label %217

86:                                               ; preds = %31
  store i32 0, i32* %14, align 4
  br label %87

87:                                               ; preds = %207, %86
  %88 = load i32, i32* %14, align 4
  %89 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %90 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %210

93:                                               ; preds = %87
  %94 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %95 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp ule i32 %102, %103
  br i1 %104, label %105, label %206

105:                                              ; preds = %93
  %106 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %107 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %116 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add i32 %114, %123
  %125 = load i32, i32* %10, align 4
  %126 = icmp ugt i32 %124, %125
  br i1 %126, label %127, label %206

127:                                              ; preds = %105
  %128 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %129 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %136, %137
  %139 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %140 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sub i32 %138, %147
  store i32 %148, i32* %12, align 4
  %149 = load %struct.super_block*, %struct.super_block** %7, align 8
  %150 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %149)
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %127
  %155 = load %struct.super_block*, %struct.super_block** %7, align 8
  %156 = load i32, i32* %12, align 4
  %157 = call i64 @hpfs_chk_sectors(%struct.super_block* %155, i32 %156, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %161 = call i32 @brelse(%struct.buffer_head* %160)
  store i32 -1, i32* %6, align 4
  br label %217

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %162, %127
  %164 = load %struct.inode*, %struct.inode** %8, align 8
  %165 = icmp ne %struct.inode* %164, null
  br i1 %165, label %166, label %202

166:                                              ; preds = %163
  %167 = load %struct.inode*, %struct.inode** %8, align 8
  %168 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %167)
  store %struct.hpfs_inode_info* %168, %struct.hpfs_inode_info** %17, align 8
  %169 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %170 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %17, align 8
  %179 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 4
  %180 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %181 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %182, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %17, align 8
  %190 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.bplus_header*, %struct.bplus_header** %9, align 8
  %192 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %17, align 8
  %201 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %166, %163
  %203 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %204 = call i32 @brelse(%struct.buffer_head* %203)
  %205 = load i32, i32* %12, align 4
  store i32 %205, i32* %6, align 4
  br label %217

206:                                              ; preds = %105, %93
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %87

210:                                              ; preds = %87
  %211 = load %struct.super_block*, %struct.super_block** %7, align 8
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @hpfs_error(%struct.super_block* %211, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %213)
  %215 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %216 = call i32 @brelse(%struct.buffer_head* %215)
  store i32 -1, i32* %6, align 4
  br label %217

217:                                              ; preds = %210, %202, %159, %79, %71, %29
  %218 = load i32, i32* %6, align 4
  ret i32 %218
}

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i32, i32) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i32, i32, i8*) #1

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
