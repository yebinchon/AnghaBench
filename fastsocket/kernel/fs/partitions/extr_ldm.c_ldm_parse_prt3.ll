; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_prt3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_prt3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vblk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vblk_part }
%struct.vblk_part = type { i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [15 x i8] c"r_objid %d < 0\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"r_name %d < 0\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"r_size %d < 0\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"r_parent %d < 0\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"r_diskid %d < 0\00", align 1
@VBLK_FLAG_PART_INDEX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"r_index %d < 0\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"len %d < 0\00", align 1
@VBLK_SIZE_PRT3 = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"len %d > BE32(buffer + 0x14) %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.vblk*)* @ldm_parse_prt3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_prt3(i32* %0, i32 %1, %struct.vblk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vblk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.vblk_part*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vblk* %2, %struct.vblk** %7, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.vblk*, %struct.vblk** %7, align 8
  %20 = icmp ne %struct.vblk* %19, null
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %3
  %23 = phi i1 [ true, %3 ], [ %21, %18 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ldm_relative(i32* %26, i32 %27, i32 24, i32 0)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %4, align 4
  br label %181

34:                                               ; preds = %22
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ldm_relative(i32* %35, i32 %36, i32 24, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 0, i32* %4, align 4
  br label %181

44:                                               ; preds = %34
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @ldm_relative(i32* %45, i32 %46, i32 52, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  store i32 0, i32* %4, align 4
  br label %181

54:                                               ; preds = %44
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @ldm_relative(i32* %55, i32 %56, i32 52, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  store i32 0, i32* %4, align 4
  br label %181

64:                                               ; preds = %54
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @ldm_relative(i32* %65, i32 %66, i32 52, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %12, align 4
  %73 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  store i32 0, i32* %4, align 4
  br label %181

74:                                               ; preds = %64
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 18
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @VBLK_FLAG_PART_INDEX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @ldm_relative(i32* %82, i32 %83, i32 52, i32 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load i32, i32* %13, align 4
  %90 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %89)
  store i32 0, i32* %4, align 4
  br label %181

91:                                               ; preds = %81
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %14, align 4
  br label %95

93:                                               ; preds = %74
  store i32 0, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  store i32 %94, i32* %14, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = load i32, i32* %14, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  store i32 0, i32* %4, align 4
  br label %181

101:                                              ; preds = %95
  %102 = load i64, i64* @VBLK_SIZE_PRT3, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 20
  %110 = call i32 @get_unaligned_be32(i32* %109)
  %111 = icmp sgt i32 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %101
  %113 = load i32, i32* %14, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 20
  %116 = call i32 @get_unaligned_be32(i32* %115)
  %117 = call i32 (i8*, i32, ...) @ldm_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %113, i32 %116)
  store i32 0, i32* %4, align 4
  br label %181

118:                                              ; preds = %101
  %119 = load %struct.vblk*, %struct.vblk** %7, align 8
  %120 = getelementptr inbounds %struct.vblk, %struct.vblk* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store %struct.vblk_part* %121, %struct.vblk_part** %15, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 36
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = call i8* @get_unaligned_be64(i32* %126)
  %128 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %129 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 44
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = call i8* @get_unaligned_be64(i32* %134)
  %136 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %137 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 52
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = call i8* @ldm_get_vnum(i32* %142)
  %144 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %145 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %144, i32 0, i32 3
  store i8* %143, i8** %145, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 52
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i8* @ldm_get_vnum(i32* %150)
  %152 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %153 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %152, i32 0, i32 2
  store i8* %151, i8** %153, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 52
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i8* @ldm_get_vnum(i32* %158)
  %160 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %161 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.vblk*, %struct.vblk** %7, align 8
  %163 = getelementptr inbounds %struct.vblk, %struct.vblk* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @VBLK_FLAG_PART_INDEX, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %118
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 53, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %176 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  br label %180

177:                                              ; preds = %118
  %178 = load %struct.vblk_part*, %struct.vblk_part** %15, align 8
  %179 = getelementptr inbounds %struct.vblk_part, %struct.vblk_part* %178, i32 0, i32 0
  store i32 0, i32* %179, align 8
  br label %180

180:                                              ; preds = %177, %168
  store i32 1, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %112, %98, %88, %71, %61, %51, %41, %31
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_relative(i32*, i32, i32, i32) #1

declare dso_local i32 @ldm_error(i8*, i32, ...) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i8* @get_unaligned_be64(i32*) #1

declare dso_local i8* @ldm_get_vnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
