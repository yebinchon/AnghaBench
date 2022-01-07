; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_fnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_map.c_hpfs_map_fnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fnode = type { i64, i32, i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i64, i64 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.extended_attribute = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"fnode\00", align 1
@FNODE_RD_AHEAD = common dso_local global i32 0, align 4
@FNODE_MAGIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"bad magic on fnode %08lx\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"bad number of nodes in fnode %08lx\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"bad first_free pointer in fnode %08lx\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"bad EA info in fnode %08lx: ea_offs == %04x ea_size_s == %04x\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"bad EA in fnode %08lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.fnode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.fnode*, align 8
  %9 = alloca %struct.extended_attribute*, align 8
  %10 = alloca %struct.extended_attribute*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.TYPE_4__* @hpfs_sb(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i64 @hpfs_chk_sectors(%struct.super_block* %17, i64 %18, i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.fnode* null, %struct.fnode** %4, align 8
  br label %161

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %3
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %27 = load i32, i32* @FNODE_RD_AHEAD, align 4
  %28 = call %struct.fnode* @hpfs_map_sector(%struct.super_block* %24, i64 %25, %struct.buffer_head** %26, i32 %27)
  store %struct.fnode* %28, %struct.fnode** %8, align 8
  %29 = icmp ne %struct.fnode* %28, null
  br i1 %29, label %30, label %155

30:                                               ; preds = %23
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = call %struct.TYPE_4__* @hpfs_sb(%struct.super_block* %31)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %154

36:                                               ; preds = %30
  %37 = load %struct.fnode*, %struct.fnode** %8, align 8
  %38 = getelementptr inbounds %struct.fnode, %struct.fnode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @FNODE_MAGIC, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.super_block*, %struct.super_block** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %157

46:                                               ; preds = %36
  %47 = load %struct.fnode*, %struct.fnode** %8, align 8
  %48 = getelementptr inbounds %struct.fnode, %struct.fnode* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %46
  %52 = load %struct.fnode*, %struct.fnode** %8, align 8
  %53 = getelementptr inbounds %struct.fnode, %struct.fnode* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.fnode*, %struct.fnode** %8, align 8
  %57 = getelementptr inbounds %struct.fnode, %struct.fnode* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = add i32 %55, %60
  %62 = load %struct.fnode*, %struct.fnode** %8, align 8
  %63 = getelementptr inbounds %struct.fnode, %struct.fnode* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 12, i32 8
  %69 = icmp ne i32 %61, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %51
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %72)
  br label %157

74:                                               ; preds = %51
  %75 = load %struct.fnode*, %struct.fnode** %8, align 8
  %76 = getelementptr inbounds %struct.fnode, %struct.fnode* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fnode*, %struct.fnode** %8, align 8
  %80 = getelementptr inbounds %struct.fnode, %struct.fnode* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.fnode*, %struct.fnode** %8, align 8
  %84 = getelementptr inbounds %struct.fnode, %struct.fnode* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 8, i32 12
  %90 = mul nsw i32 %82, %89
  %91 = add nsw i32 8, %90
  %92 = icmp ne i32 %78, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %74
  %94 = load %struct.super_block*, %struct.super_block** %5, align 8
  %95 = load i64, i64* %6, align 8
  %96 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %95)
  br label %157

97:                                               ; preds = %74
  br label %98

98:                                               ; preds = %97, %46
  %99 = load %struct.fnode*, %struct.fnode** %8, align 8
  %100 = getelementptr inbounds %struct.fnode, %struct.fnode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %133

103:                                              ; preds = %98
  %104 = load %struct.fnode*, %struct.fnode** %8, align 8
  %105 = getelementptr inbounds %struct.fnode, %struct.fnode* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = icmp slt i32 %107, 196
  br i1 %108, label %123, label %109

109:                                              ; preds = %103
  %110 = load %struct.fnode*, %struct.fnode** %8, align 8
  %111 = getelementptr inbounds %struct.fnode, %struct.fnode* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load %struct.fnode*, %struct.fnode** %8, align 8
  %115 = getelementptr inbounds %struct.fnode, %struct.fnode* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load %struct.fnode*, %struct.fnode** %8, align 8
  %119 = getelementptr inbounds %struct.fnode, %struct.fnode* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %117, %120
  %122 = icmp sgt i32 %121, 512
  br i1 %122, label %123, label %133

123:                                              ; preds = %109, %103
  %124 = load %struct.super_block*, %struct.super_block** %5, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load %struct.fnode*, %struct.fnode** %8, align 8
  %127 = getelementptr inbounds %struct.fnode, %struct.fnode* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.fnode*, %struct.fnode** %8, align 8
  %130 = getelementptr inbounds %struct.fnode, %struct.fnode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %124, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i64 %125, i64 %128, i32 %131)
  br label %157

133:                                              ; preds = %109, %98
  %134 = load %struct.fnode*, %struct.fnode** %8, align 8
  %135 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %134)
  store %struct.extended_attribute* %135, %struct.extended_attribute** %9, align 8
  %136 = load %struct.fnode*, %struct.fnode** %8, align 8
  %137 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %136)
  store %struct.extended_attribute* %137, %struct.extended_attribute** %10, align 8
  br label %138

138:                                              ; preds = %150, %133
  %139 = load %struct.extended_attribute*, %struct.extended_attribute** %9, align 8
  %140 = load %struct.extended_attribute*, %struct.extended_attribute** %10, align 8
  %141 = icmp ne %struct.extended_attribute* %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = load %struct.extended_attribute*, %struct.extended_attribute** %9, align 8
  %144 = load %struct.extended_attribute*, %struct.extended_attribute** %10, align 8
  %145 = icmp ugt %struct.extended_attribute* %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load %struct.super_block*, %struct.super_block** %5, align 8
  %148 = load i64, i64* %6, align 8
  %149 = call i32 (%struct.super_block*, i8*, i64, ...) @hpfs_error(%struct.super_block* %147, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i64 %148)
  br label %157

150:                                              ; preds = %142
  %151 = load %struct.extended_attribute*, %struct.extended_attribute** %9, align 8
  %152 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %151)
  store %struct.extended_attribute* %152, %struct.extended_attribute** %9, align 8
  br label %138

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153, %30
  br label %155

155:                                              ; preds = %154, %23
  %156 = load %struct.fnode*, %struct.fnode** %8, align 8
  store %struct.fnode* %156, %struct.fnode** %4, align 8
  br label %161

157:                                              ; preds = %146, %123, %93, %70, %42
  %158 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %159 = load %struct.buffer_head*, %struct.buffer_head** %158, align 8
  %160 = call i32 @brelse(%struct.buffer_head* %159)
  store %struct.fnode* null, %struct.fnode** %4, align 8
  br label %161

161:                                              ; preds = %157, %155, %21
  %162 = load %struct.fnode*, %struct.fnode** %4, align 8
  ret %struct.fnode* %162
}

declare dso_local %struct.TYPE_4__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_chk_sectors(%struct.super_block*, i64, i32, i8*) #1

declare dso_local %struct.fnode* @hpfs_map_sector(%struct.super_block*, i64, %struct.buffer_head**, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, ...) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
