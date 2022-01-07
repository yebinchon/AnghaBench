; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vgastate.c_restore_vga_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vgastate.c_restore_vga_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgastate = type { i32, i32, i32, i32, i32, i64 }
%struct.regstate = type { i32, i32*, i32*, i32*, i32* }

@VGA_MIS_W = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i64 0, align 8
@VGA_SEQ_RESET = common dso_local global i64 0, align 8
@VGA_ATT_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vgastate*)* @restore_vga_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_vga_mode(%struct.vgastate* %0) #0 {
  %2 = alloca %struct.vgastate*, align 8
  %3 = alloca %struct.regstate*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.vgastate* %0, %struct.vgastate** %2, align 8
  %6 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %7 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.regstate*
  store %struct.regstate* %9, %struct.regstate** %3, align 8
  %10 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %11 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VGA_MIS_W, align 4
  %14 = load %struct.regstate*, %struct.regstate** %3, align 8
  %15 = getelementptr inbounds %struct.regstate, %struct.regstate* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @vga_w(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.regstate*, %struct.regstate** %3, align 8
  %19 = getelementptr inbounds %struct.regstate, %struct.regstate* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i16 976, i16* %4, align 2
  br label %25

24:                                               ; preds = %1
  store i16 944, i16* %4, align 2
  br label %25

25:                                               ; preds = %24, %23
  %26 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %27 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %30 = load %struct.regstate*, %struct.regstate** %3, align 8
  %31 = getelementptr inbounds %struct.regstate, %struct.regstate* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, 32
  %37 = call i32 @vga_wseq(i32 %28, i64 %29, i32 %36)
  %38 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %39 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* @VGA_SEQ_RESET, align 8
  %42 = call i32 @vga_wseq(i32 %40, i64 %41, i32 1)
  %43 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %44 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i16, i16* %4, align 2
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %47, 10
  %49 = trunc i32 %48 to i16
  %50 = call i32 @vga_r(i32 %45, i16 zeroext %49)
  %51 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %52 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VGA_ATT_W, align 4
  %55 = call i32 @vga_w(i32 %53, i32 %54, i32 0)
  store i32 2, i32* %5, align 4
  br label %56

56:                                               ; preds = %76, %25
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %59 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %64 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.regstate*, %struct.regstate** %3, align 8
  %69 = getelementptr inbounds %struct.regstate, %struct.regstate* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @vga_wseq(i32 %65, i64 %67, i32 %74)
  br label %76

76:                                               ; preds = %62
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %56

79:                                               ; preds = %56
  %80 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %81 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load i16, i16* %4, align 2
  %84 = load %struct.regstate*, %struct.regstate** %3, align 8
  %85 = getelementptr inbounds %struct.regstate, %struct.regstate* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 17
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, -129
  %90 = call i32 @vga_wcrtcs(i32 %82, i16 zeroext %83, i32 17, i32 %89)
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %111, %79
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %94 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  %98 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %99 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i16, i16* %4, align 2
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.regstate*, %struct.regstate** %3, align 8
  %104 = getelementptr inbounds %struct.regstate, %struct.regstate* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @vga_wcrtcs(i32 %100, i16 zeroext %101, i32 %102, i32 %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %91

114:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %134, %114
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %118 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %123 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.regstate*, %struct.regstate** %3, align 8
  %127 = getelementptr inbounds %struct.regstate, %struct.regstate* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @vga_wgfx(i32 %124, i32 %125, i32 %132)
  br label %134

134:                                              ; preds = %121
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %5, align 4
  br label %115

137:                                              ; preds = %115
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %165, %137
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %141 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %168

144:                                              ; preds = %138
  %145 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %146 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i16, i16* %4, align 2
  %149 = zext i16 %148 to i32
  %150 = add nsw i32 %149, 10
  %151 = trunc i32 %150 to i16
  %152 = call i32 @vga_r(i32 %147, i16 zeroext %151)
  %153 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %154 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.regstate*, %struct.regstate** %3, align 8
  %158 = getelementptr inbounds %struct.regstate, %struct.regstate* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @vga_wattr(i32 %155, i32 %156, i32 %163)
  br label %165

165:                                              ; preds = %144
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %138

168:                                              ; preds = %138
  %169 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %170 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = load i64, i64* @VGA_SEQ_RESET, align 8
  %173 = call i32 @vga_wseq(i32 %171, i64 %172, i32 3)
  %174 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %175 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %178 = load %struct.regstate*, %struct.regstate** %3, align 8
  %179 = getelementptr inbounds %struct.regstate, %struct.regstate* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, -33
  %185 = call i32 @vga_wseq(i32 %176, i64 %177, i32 %184)
  %186 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %187 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = load i16, i16* %4, align 2
  %190 = zext i16 %189 to i32
  %191 = add nsw i32 %190, 10
  %192 = trunc i32 %191 to i16
  %193 = call i32 @vga_r(i32 %188, i16 zeroext %192)
  %194 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %195 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @VGA_ATT_W, align 4
  %198 = call i32 @vga_w(i32 %196, i32 %197, i32 32)
  ret void
}

declare dso_local i32 @vga_w(i32, i32, i32) #1

declare dso_local i32 @vga_wseq(i32, i64, i32) #1

declare dso_local i32 @vga_r(i32, i16 zeroext) #1

declare dso_local i32 @vga_wcrtcs(i32, i16 zeroext, i32, i32) #1

declare dso_local i32 @vga_wgfx(i32, i32, i32) #1

declare dso_local i32 @vga_wattr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
