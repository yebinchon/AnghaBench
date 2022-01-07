; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_remove_btree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_anode.c_hpfs_remove_btree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.bplus_header = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.anode = type { i64, %struct.bplus_header }
%struct.buffer_head = type { i32 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [21 x i8] c"hpfs_remove_btree #1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"hpfs_remove_btree #2\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"reference to anode %08x not found in anode %08x (probably bad up pointer)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_remove_btree(%struct.super_block* %0, %struct.bplus_header* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.bplus_header*, align 8
  %5 = alloca %struct.bplus_header*, align 8
  %6 = alloca %struct.anode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.bplus_header* %1, %struct.bplus_header** %4, align 8
  %17 = load %struct.bplus_header*, %struct.bplus_header** %4, align 8
  store %struct.bplus_header* %17, %struct.bplus_header** %5, align 8
  store %struct.anode* null, %struct.anode** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %18

18:                                               ; preds = %162, %2
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %58, %18
  %20 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %21 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %63

24:                                               ; preds = %19
  %25 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %26 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %11, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %38 = call i32 @brelse(%struct.buffer_head* %37)
  br label %39

39:                                               ; preds = %36, %24
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %40)
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.super_block*, %struct.super_block** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @hpfs_stop_cycles(%struct.super_block* %46, i64 %47, i32* %15, i32* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %184

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %39
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %53, i64 %54, %struct.buffer_head** %9)
  store %struct.anode* %55, %struct.anode** %6, align 8
  %56 = icmp ne %struct.anode* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %184

58:                                               ; preds = %52
  %59 = load %struct.anode*, %struct.anode** %6, align 8
  %60 = getelementptr inbounds %struct.anode, %struct.anode* %59, i32 0, i32 1
  store %struct.bplus_header* %60, %struct.bplus_header** %5, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %19

63:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %67 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.super_block*, %struct.super_block** %3, align 8
  %72 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %73 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %82 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @hpfs_free_sectors(%struct.super_block* %71, i64 %80, i32 %89)
  br label %91

91:                                               ; preds = %70
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %64

94:                                               ; preds = %64
  br label %95

95:                                               ; preds = %163, %94
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %184

99:                                               ; preds = %95
  %100 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %101 = call i32 @brelse(%struct.buffer_head* %100)
  %102 = load %struct.super_block*, %struct.super_block** %3, align 8
  %103 = call %struct.TYPE_8__* @hpfs_sb(%struct.super_block* %102)
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.super_block*, %struct.super_block** %3, align 8
  %109 = load i64, i64* %7, align 8
  %110 = call i64 @hpfs_stop_cycles(%struct.super_block* %108, i64 %109, i32* %13, i32* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %184

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113, %99
  %115 = load %struct.super_block*, %struct.super_block** %3, align 8
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @hpfs_free_sectors(%struct.super_block* %115, i64 %116, i32 1)
  %118 = load i64, i64* %7, align 8
  store i64 %118, i64* %8, align 8
  %119 = load %struct.anode*, %struct.anode** %6, align 8
  %120 = getelementptr inbounds %struct.anode, %struct.anode* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %7, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %114
  %126 = load %struct.super_block*, %struct.super_block** %3, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call %struct.anode* @hpfs_map_anode(%struct.super_block* %126, i64 %127, %struct.buffer_head** %9)
  store %struct.anode* %128, %struct.anode** %6, align 8
  %129 = icmp ne %struct.anode* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %125
  br label %184

131:                                              ; preds = %125
  %132 = load %struct.anode*, %struct.anode** %6, align 8
  %133 = getelementptr inbounds %struct.anode, %struct.anode* %132, i32 0, i32 1
  store %struct.bplus_header* %133, %struct.bplus_header** %5, align 8
  br label %136

134:                                              ; preds = %114
  %135 = load %struct.bplus_header*, %struct.bplus_header** %4, align 8
  store %struct.bplus_header* %135, %struct.bplus_header** %5, align 8
  br label %136

136:                                              ; preds = %134, %131
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %165, %136
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %140 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %168

143:                                              ; preds = %137
  %144 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %145 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %143
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  %158 = load %struct.bplus_header*, %struct.bplus_header** %5, align 8
  %159 = getelementptr inbounds %struct.bplus_header, %struct.bplus_header* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %18

163:                                              ; preds = %155
  br label %95

164:                                              ; preds = %143
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %137

168:                                              ; preds = %137
  %169 = load %struct.super_block*, %struct.super_block** %3, align 8
  %170 = load i64, i64* %8, align 8
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i64, i64* %7, align 8
  br label %176

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175, %173
  %177 = phi i64 [ %174, %173 ], [ -1, %175 ]
  %178 = call i32 @hpfs_error(%struct.super_block* %169, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %170, i64 %177)
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %183 = call i32 @brelse(%struct.buffer_head* %182)
  br label %184

184:                                              ; preds = %50, %57, %98, %112, %130, %181, %176
  ret void
}

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_8__* @hpfs_sb(%struct.super_block*) #1

declare dso_local i64 @hpfs_stop_cycles(%struct.super_block*, i64, i32*, i32*, i8*) #1

declare dso_local %struct.anode* @hpfs_map_anode(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i64, i32) #1

declare dso_local i32 @hpfs_error(%struct.super_block*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
