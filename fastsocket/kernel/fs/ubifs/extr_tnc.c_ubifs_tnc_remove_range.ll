; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.ubifs_znode = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32, %union.ubifs_key }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"removing %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_remove_range(%struct.ubifs_info* %0, %union.ubifs_key* %1, %union.ubifs_key* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %union.ubifs_key*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubifs_znode*, align 8
  %12 = alloca %union.ubifs_key*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %5, align 8
  store %union.ubifs_key* %2, %union.ubifs_key** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  br label %16

16:                                               ; preds = %3, %189
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %18 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %19 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %17, %union.ubifs_key* %18, %struct.ubifs_znode** %11, i32* %8)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %190

23:                                               ; preds = %16
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  store %union.ubifs_key* %27, %union.ubifs_key** %12, align 8
  br label %56

28:                                               ; preds = %23
  %29 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %30 = call i32 @tnc_next(%struct.ubifs_info* %29, %struct.ubifs_znode** %11, i32* %8)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %190

36:                                               ; preds = %28
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %190

40:                                               ; preds = %36
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %42 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  store %union.ubifs_key* %47, %union.ubifs_key** %12, align 8
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %49 = load %union.ubifs_key*, %union.ubifs_key** %12, align 8
  %50 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %51 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %52 = call i32 @key_in_range(%struct.ubifs_info* %48, %union.ubifs_key* %49, %union.ubifs_key* %50, %union.ubifs_key* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  br label %190

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %58 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %63 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %68 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %66, %struct.ubifs_znode* %67)
  store %struct.ubifs_znode* %68, %struct.ubifs_znode** %11, align 8
  %69 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %70 = call i64 @IS_ERR(%struct.ubifs_znode* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %74 = call i32 @PTR_ERR(%struct.ubifs_znode* %73)
  store i32 %74, i32* %10, align 4
  br label %190

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %61
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %136, %76
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %82 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %141

85:                                               ; preds = %79
  %86 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %87 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  store %union.ubifs_key* %92, %union.ubifs_key** %12, align 8
  %93 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %94 = load %union.ubifs_key*, %union.ubifs_key** %12, align 8
  %95 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %96 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %97 = call i32 @key_in_range(%struct.ubifs_info* %93, %union.ubifs_key* %94, %union.ubifs_key* %95, %union.ubifs_key* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %85
  br label %141

100:                                              ; preds = %85
  %101 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %102 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = call i32 @lnc_free(%struct.TYPE_2__* %106)
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %109 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %110 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %118 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ubifs_add_dirt(%struct.ubifs_info* %108, i32 %116, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %100
  %129 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %130 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %131 = call i32 @dbg_dump_znode(%struct.ubifs_info* %129, %struct.ubifs_znode* %130)
  br label %190

132:                                              ; preds = %100
  %133 = load %union.ubifs_key*, %union.ubifs_key** %12, align 8
  %134 = call i32 @DBGKEY(%union.ubifs_key* %133)
  %135 = call i32 @dbg_tnc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %79

141:                                              ; preds = %99, %79
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %181

144:                                              ; preds = %141
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %172, %144
  %150 = load i32, i32* %7, align 4
  %151 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %152 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %175

155:                                              ; preds = %149
  %156 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %157 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %156, i32 0, i32 1
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %9, align 4
  %161 = sub nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %162
  %164 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %165 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %164, i32 0, i32 1
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = bitcast %struct.TYPE_2__* %163 to i8*
  %171 = bitcast %struct.TYPE_2__* %169 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 12, i1 false)
  br label %172

172:                                              ; preds = %155
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %149

175:                                              ; preds = %149
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %178 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %141
  %182 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %183 = load %struct.ubifs_znode*, %struct.ubifs_znode** %11, align 8
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @tnc_delete(%struct.ubifs_info* %182, %struct.ubifs_znode* %183, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  br label %190

189:                                              ; preds = %181
  br label %16

190:                                              ; preds = %188, %128, %72, %54, %39, %35, %22
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %195 = call i32 @dbg_check_tnc(%struct.ubifs_info* %194, i32 0)
  store i32 %195, i32* %10, align 4
  br label %196

196:                                              ; preds = %193, %190
  %197 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %198 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %197, i32 0, i32 0
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load i32, i32* %10, align 4
  ret i32 %200
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @tnc_next(%struct.ubifs_info*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @key_in_range(%struct.ubifs_info*, %union.ubifs_key*, %union.ubifs_key*, %union.ubifs_key*) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @lnc_free(%struct.TYPE_2__*) #1

declare dso_local i32 @ubifs_add_dirt(%struct.ubifs_info*, i32, i32) #1

declare dso_local i32 @dbg_dump_znode(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i32 @dbg_tnc(i8*, i32) #1

declare dso_local i32 @DBGKEY(%union.ubifs_key*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tnc_delete(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
