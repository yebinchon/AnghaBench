; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_block_to_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_inode.c_ext2_block_to_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EXT2_NDIR_BLOCKS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ext2_block_to_path\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"block < 0\00", align 1
@EXT2_IND_BLOCK = common dso_local global i32 0, align 4
@EXT2_DIND_BLOCK = common dso_local global i32 0, align 4
@EXT2_TIND_BLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"block > big\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i32*, i32*)* @ext2_block_to_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_block_to_path(%struct.inode* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @EXT2_ADDR_PER_BLOCK(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @EXT2_ADDR_PER_BLOCK_BITS(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i64, i64* @EXT2_NDIR_BLOCKS, align 8
  store i64 %24, i64* %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %12, align 8
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %27, 2
  %29 = shl i32 1, %28
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %31 = load i64, i64* %6, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ext2_warning(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %172

38:                                               ; preds = %4
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %11, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i64, i64* %6, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  store i32 %44, i32* %49, align 4
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  br label %171

52:                                               ; preds = %38
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* %6, align 8
  %55 = sub nsw i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %52
  %59 = load i32, i32* @EXT2_IND_BLOCK, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %15, align 4
  br label %170

73:                                               ; preds = %52
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub nsw i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load i32, i32* @EXT2_DIND_BLOCK, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i64, i64* %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = ashr i64 %86, %88
  %90 = trunc i64 %89 to i32
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %14, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = and i64 %96, %99
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  %105 = sext i32 %103 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %15, align 4
  br label %169

108:                                              ; preds = %73
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* %6, align 8
  %111 = sub nsw i64 %110, %109
  store i64 %111, i64* %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = mul nsw i32 %112, 2
  %114 = zext i32 %113 to i64
  %115 = ashr i64 %111, %114
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp slt i64 %115, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %108
  %120 = load i32, i32* @EXT2_TIND_BLOCK, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %14, align 4
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  store i32 %120, i32* %125, align 4
  %126 = load i64, i64* %6, align 8
  %127 = load i32, i32* %10, align 4
  %128 = mul nsw i32 %127, 2
  %129 = zext i32 %128 to i64
  %130 = ashr i64 %126, %129
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %14, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load i64, i64* %6, align 8
  %138 = load i32, i32* %10, align 4
  %139 = zext i32 %138 to i64
  %140 = ashr i64 %137, %139
  %141 = load i32, i32* %9, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = and i64 %140, %143
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %7, align 8
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  %151 = load i64, i64* %6, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = and i64 %151, %154
  %156 = trunc i64 %155 to i32
  %157 = load i32*, i32** %7, align 8
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %15, align 4
  br label %168

163:                                              ; preds = %108
  %164 = load %struct.inode*, %struct.inode** %5, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @ext2_warning(i32 %166, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %168

168:                                              ; preds = %163, %119
  br label %169

169:                                              ; preds = %168, %79
  br label %170

170:                                              ; preds = %169, %58
  br label %171

171:                                              ; preds = %170, %42
  br label %172

172:                                              ; preds = %171, %33
  %173 = load i32*, i32** %8, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = load i32, i32* %15, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %6, align 8
  %180 = load i32, i32* %9, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = and i64 %179, %182
  %184 = sub nsw i64 %178, %183
  %185 = trunc i64 %184 to i32
  %186 = load i32*, i32** %8, align 8
  store i32 %185, i32* %186, align 4
  br label %187

187:                                              ; preds = %175, %172
  %188 = load i32, i32* %14, align 4
  ret i32 %188
}

declare dso_local i32 @EXT2_ADDR_PER_BLOCK(i32) #1

declare dso_local i32 @EXT2_ADDR_PER_BLOCK_BITS(i32) #1

declare dso_local i32 @ext2_warning(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
