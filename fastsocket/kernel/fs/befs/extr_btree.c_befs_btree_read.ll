; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_btree_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/befs/extr_btree.c_befs_btree_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"---> befs_btree_read()\00", align 1
@BEFS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"befs_btree_read() failed to read index superblock\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"befs_btree_read() failed to allocate %u bytes of memory\00", align 1
@BEFS_BT_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"<--- befs_btree_read() Tree is EMPTY\00", align 1
@BEFS_ERR = common dso_local global i32 0, align 4
@befs_bt_inval = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [42 x i8] c"<--- befs_btree_read() END of keys at %Lu\00", align 1
@BEFS_BT_END = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"befs_btree_read() failed to read node at %Lu\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Read [%Lu,%d]: keysize %d\00", align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"befs_btree_read() keybuf too small (%u) for key of size %d\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Read [%Lu,%d]: Key \22%.*s\22, Value %Lu\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"<--- befs_btree_read()\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"<--- befs_btree_read() ERROR\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @befs_btree_read(%struct.super_block* %0, i32* %1, i64 %2, i64 %3, i8* %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_12__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %9, align 8
  %26 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.super_block*, %struct.super_block** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i64 @befs_bt_read_super(%struct.super_block* %27, i32* %28, %struct.TYPE_12__* %17)
  %30 = load i64, i64* @BEFS_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %7
  %33 = load %struct.super_block*, %struct.super_block** %9, align 8
  %34 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %202

35:                                               ; preds = %7
  %36 = load i32, i32* @GFP_NOFS, align 4
  %37 = call i64 @kmalloc(i32 24, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %16, align 8
  %39 = icmp eq %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.super_block*, %struct.super_block** %9, align 8
  %42 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %41, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 24)
  br label %202

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %18, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  %48 = load %struct.super_block*, %struct.super_block** %9, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %51 = call i32 @befs_btree_seekleaf(%struct.super_block* %48, i32* %49, %struct.TYPE_12__* %17, %struct.TYPE_13__* %50, i64* %18)
  store i32 %51, i32* %23, align 4
  %52 = load i32, i32* %23, align 4
  %53 = load i32, i32* @BEFS_BT_EMPTY, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %43
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @brelse(i32* %58)
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %61 = call i32 @kfree(%struct.TYPE_13__* %60)
  %62 = load i64*, i64** %15, align 8
  store i64 0, i64* %62, align 8
  %63 = load i64*, i64** %14, align 8
  store i64 0, i64* %63, align 8
  %64 = load %struct.super_block*, %struct.super_block** %9, align 8
  %65 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %66 = load i32, i32* @BEFS_BT_EMPTY, align 4
  store i32 %66, i32* %8, align 4
  br label %208

67:                                               ; preds = %43
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* @BEFS_ERR, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %199

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72
  br label %74

74:                                               ; preds = %130, %73
  %75 = load i64, i64* %24, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  %81 = load i64, i64* %11, align 8
  %82 = icmp sle i64 %80, %81
  br i1 %82, label %83, label %131

83:                                               ; preds = %74
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @befs_bt_inval, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %83
  %91 = load i64*, i64** %14, align 8
  store i64 0, i64* %91, align 8
  %92 = load i64*, i64** %15, align 8
  store i64 0, i64* %92, align 8
  %93 = load %struct.super_block*, %struct.super_block** %9, align 8
  %94 = load i64, i64* %24, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  %100 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %93, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %99)
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @brelse(i32* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %106 = call i32 @kfree(%struct.TYPE_13__* %105)
  %107 = load i32, i32* @BEFS_BT_END, align 4
  store i32 %107, i32* %8, align 4
  br label %208

108:                                              ; preds = %83
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %24, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %24, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %18, align 8
  %119 = load %struct.super_block*, %struct.super_block** %9, align 8
  %120 = load i32*, i32** %10, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %122 = load i64, i64* %18, align 8
  %123 = call i64 @befs_bt_read_node(%struct.super_block* %119, i32* %120, %struct.TYPE_13__* %121, i64 %122)
  %124 = load i64, i64* @BEFS_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %108
  %127 = load %struct.super_block*, %struct.super_block** %9, align 8
  %128 = load i64, i64* %18, align 8
  %129 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %128)
  br label %199

130:                                              ; preds = %108
  br label %74

131:                                              ; preds = %74
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %24, align 8
  %134 = sub nsw i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %19, align 4
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %137 = call i32* @befs_bt_valarray(%struct.TYPE_13__* %136)
  store i32* %137, i32** %20, align 8
  %138 = load %struct.super_block*, %struct.super_block** %9, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %140 = load i32, i32* %19, align 4
  %141 = call i8* @befs_bt_get_key(%struct.super_block* %138, %struct.TYPE_13__* %139, i32 %140, i32* %22)
  store i8* %141, i8** %21, align 8
  %142 = load %struct.super_block*, %struct.super_block** %9, align 8
  %143 = load i64, i64* %18, align 8
  %144 = load i32, i32* %19, align 4
  %145 = load i32, i32* %22, align 4
  %146 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i64 %143, i32 %144, i32 %145)
  %147 = load i64, i64* %12, align 8
  %148 = load i32, i32* %22, align 4
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = icmp ult i64 %147, %150
  br i1 %151, label %152, label %161

152:                                              ; preds = %131
  %153 = load %struct.super_block*, %struct.super_block** %9, align 8
  %154 = load i64, i64* %12, align 8
  %155 = load i32, i32* %22, align 4
  %156 = call i32 (%struct.super_block*, i8*, ...) @befs_error(%struct.super_block* %153, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i64 %154, i32 %155)
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @brelse(i32* %159)
  br label %199

161:                                              ; preds = %131
  %162 = load i8*, i8** %13, align 8
  %163 = load i8*, i8** %21, align 8
  %164 = load i32, i32* %22, align 4
  %165 = call i32 @strncpy(i8* %162, i8* %163, i32 %164)
  %166 = load %struct.super_block*, %struct.super_block** %9, align 8
  %167 = load i32*, i32** %20, align 8
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i64 @fs64_to_cpu(%struct.super_block* %166, i32 %171)
  %173 = load i64*, i64** %15, align 8
  store i64 %172, i64* %173, align 8
  %174 = load i32, i32* %22, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64*, i64** %14, align 8
  store i64 %175, i64* %176, align 8
  %177 = load i8*, i8** %13, align 8
  %178 = load i32, i32* %22, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  store i8 0, i8* %180, align 1
  %181 = load %struct.super_block*, %struct.super_block** %9, align 8
  %182 = load i64, i64* %18, align 8
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %22, align 4
  %185 = load i8*, i8** %13, align 8
  %186 = load i64*, i64** %15, align 8
  %187 = load i64, i64* %186, align 8
  %188 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i64 %182, i32 %183, i32 %184, i8* %185, i64 %187)
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @brelse(i32* %191)
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %194 = call i32 @kfree(%struct.TYPE_13__* %193)
  %195 = load %struct.super_block*, %struct.super_block** %9, align 8
  %196 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %197 = load i64, i64* @BEFS_OK, align 8
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %8, align 4
  br label %208

199:                                              ; preds = %152, %126, %71
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %201 = call i32 @kfree(%struct.TYPE_13__* %200)
  br label %202

202:                                              ; preds = %199, %40, %32
  %203 = load i64*, i64** %14, align 8
  store i64 0, i64* %203, align 8
  %204 = load i64*, i64** %15, align 8
  store i64 0, i64* %204, align 8
  %205 = load %struct.super_block*, %struct.super_block** %9, align 8
  %206 = call i32 (%struct.super_block*, i8*, ...) @befs_debug(%struct.super_block* %205, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0))
  %207 = load i32, i32* @BEFS_ERR, align 4
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %202, %161, %90, %55
  %209 = load i32, i32* %8, align 4
  ret i32 %209
}

declare dso_local i32 @befs_debug(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @befs_bt_read_super(%struct.super_block*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @befs_error(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @befs_btree_seekleaf(%struct.super_block*, i32*, %struct.TYPE_12__*, %struct.TYPE_13__*, i64*) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_13__*) #1

declare dso_local i64 @befs_bt_read_node(%struct.super_block*, i32*, %struct.TYPE_13__*, i64) #1

declare dso_local i32* @befs_bt_valarray(%struct.TYPE_13__*) #1

declare dso_local i8* @befs_bt_get_key(%struct.super_block*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @fs64_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
