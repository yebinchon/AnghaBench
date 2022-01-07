; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_tkip_mixing_phase1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_tkip.c_tkip_mixing_phase1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tkip_ctx = type { i32*, i32, i32 }

@PHASE1_LOOP_COUNT = common dso_local global i32 0, align 4
@TKIP_STATE_PHASE1_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.tkip_ctx*, i32*, i32)* @tkip_mixing_phase1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tkip_mixing_phase1(i32* %0, %struct.tkip_ctx* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tkip_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.tkip_ctx* %1, %struct.tkip_ctx** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.tkip_ctx*, %struct.tkip_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.tkip_ctx, %struct.tkip_ctx* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = and i32 %15, 65535
  %17 = load i32*, i32** %11, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %8, align 4
  %20 = ashr i32 %19, 16
  %21 = load i32*, i32** %11, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @get_unaligned_le16(i32* %24)
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 2
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = call i32 @get_unaligned_le16(i32* %29)
  %31 = load i32*, i32** %11, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = call i32 @get_unaligned_le16(i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 4
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %134, %4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PHASE1_LOOP_COUNT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %137

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 1
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @get_unaligned_le16(i32* %53)
  %55 = xor i32 %48, %54
  %56 = call i64 @tkipS(i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 4
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = call i32 @get_unaligned_le16(i32* %70)
  %72 = xor i32 %65, %71
  %73 = call i64 @tkipS(i32 %72)
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %73
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %5, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @get_unaligned_le16(i32* %87)
  %89 = xor i32 %82, %88
  %90 = call i64 @tkipS(i32 %89)
  %91 = load i32*, i32** %11, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 12
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = call i32 @get_unaligned_le16(i32* %104)
  %106 = xor i32 %99, %105
  %107 = call i64 @tkipS(i32 %106)
  %108 = load i32*, i32** %11, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @get_unaligned_le16(i32* %121)
  %123 = xor i32 %116, %122
  %124 = call i64 @tkipS(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load i32*, i32** %11, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 4
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 4
  br label %134

134:                                              ; preds = %42
  %135 = load i32, i32* %9, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %9, align 4
  br label %38

137:                                              ; preds = %38
  %138 = load i32, i32* @TKIP_STATE_PHASE1_DONE, align 4
  %139 = load %struct.tkip_ctx*, %struct.tkip_ctx** %6, align 8
  %140 = getelementptr inbounds %struct.tkip_ctx, %struct.tkip_ctx* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.tkip_ctx*, %struct.tkip_ctx** %6, align 8
  %143 = getelementptr inbounds %struct.tkip_ctx, %struct.tkip_ctx* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 8
  ret void
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i64 @tkipS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
