; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_cmp3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/partitions/extr_ldm.c_ldm_parse_cmp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vblk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vblk_comp }
%struct.vblk_comp = type { i32, i8*, i8*, i8*, i32 }

@VBLK_FLAG_COMP_STRIPE = common dso_local global i32 0, align 4
@VBLK_SIZE_CMP3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.vblk*)* @ldm_parse_cmp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldm_parse_cmp3(i32* %0, i32 %1, %struct.vblk* %2) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca %struct.vblk_comp*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vblk* %2, %struct.vblk** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.vblk*, %struct.vblk** %7, align 8
  %21 = icmp ne %struct.vblk* %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %3
  %24 = phi i1 [ true, %3 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ldm_relative(i32* %27, i32 %28, i32 24, i32 0)
  store i32 %29, i32* %8, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ldm_relative(i32* %30, i32 %31, i32 24, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @ldm_relative(i32* %34, i32 %35, i32 24, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ldm_relative(i32* %38, i32 %39, i32 29, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ldm_relative(i32* %42, i32 %43, i32 45, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 18
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VBLK_FLAG_COMP_STRIPE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %23
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @ldm_relative(i32* %53, i32 %54, i32 46, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @ldm_relative(i32* %57, i32 %58, i32 46, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %15, align 4
  br label %64

62:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %15, align 4
  br label %64

64:                                               ; preds = %62, %52
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %131

68:                                               ; preds = %64
  %69 = load i64, i64* @VBLK_SIZE_CMP3, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 20
  %77 = call i32 @get_unaligned_be32(i32* %76)
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %131

80:                                               ; preds = %68
  %81 = load %struct.vblk*, %struct.vblk** %7, align 8
  %82 = getelementptr inbounds %struct.vblk, %struct.vblk* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store %struct.vblk_comp* %83, %struct.vblk_comp** %16, align 8
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 24
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load %struct.vblk_comp*, %struct.vblk_comp** %16, align 8
  %90 = getelementptr inbounds %struct.vblk_comp, %struct.vblk_comp* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ldm_get_vstr(i32* %88, i32 %91, i32 4)
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 24, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.vblk_comp*, %struct.vblk_comp** %16, align 8
  %100 = getelementptr inbounds %struct.vblk_comp, %struct.vblk_comp* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 29
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = call i8* @ldm_get_vnum(i32* %105)
  %107 = load %struct.vblk_comp*, %struct.vblk_comp** %16, align 8
  %108 = getelementptr inbounds %struct.vblk_comp, %struct.vblk_comp* %107, i32 0, i32 3
  store i8* %106, i8** %108, align 8
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 45
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i8* @ldm_get_vnum(i32* %113)
  %115 = load %struct.vblk_comp*, %struct.vblk_comp** %16, align 8
  %116 = getelementptr inbounds %struct.vblk_comp, %struct.vblk_comp* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %80
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = getelementptr inbounds i32, i32* %123, i64 46
  %125 = call i8* @ldm_get_vnum(i32* %124)
  br label %127

126:                                              ; preds = %80
  br label %127

127:                                              ; preds = %126, %119
  %128 = phi i8* [ %125, %119 ], [ null, %126 ]
  %129 = load %struct.vblk_comp*, %struct.vblk_comp** %16, align 8
  %130 = getelementptr inbounds %struct.vblk_comp, %struct.vblk_comp* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  store i32 1, i32* %4, align 4
  br label %131

131:                                              ; preds = %127, %79, %67
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ldm_relative(i32*, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @ldm_get_vstr(i32*, i32, i32) #1

declare dso_local i8* @ldm_get_vnum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
