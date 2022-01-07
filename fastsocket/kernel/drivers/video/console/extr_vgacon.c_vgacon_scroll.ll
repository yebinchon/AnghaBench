; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_scroll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_vgacon.c_vgacon_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64, i64, i32, i32, i32, i32, i64, i32 }

@vga_is_gfx = common dso_local global i64 0, align 8
@KD_TEXT = common dso_local global i64 0, align 8
@vga_hardscroll_enabled = common dso_local global i32 0, align 4
@SM_UP = common dso_local global i32 0, align 4
@vga_vram_end = common dso_local global i32 0, align 4
@vga_vram_base = common dso_local global i64 0, align 8
@vga_rolled_over = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*, i32, i32, i32, i32)* @vgacon_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vgacon_scroll(%struct.vc_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* @vga_is_gfx, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KD_TEXT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %22, %16, %5
  store i32 0, i32* %6, align 4
  br label %206

32:                                               ; preds = %25
  %33 = load i32, i32* @vga_hardscroll_enabled, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %38 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 2
  %41 = icmp sge i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %32
  store i32 0, i32* %6, align 4
  br label %206

43:                                               ; preds = %35
  %44 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %45 = call i32 @vgacon_restore_screen(%struct.vc_data* %44)
  %46 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %47 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @SM_UP, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %114

57:                                               ; preds = %43
  %58 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @vgacon_scrollback_update(%struct.vc_data* %58, i32 %59, i32 %60)
  %62 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add i32 %64, %65
  %67 = load i32, i32* @vga_vram_end, align 4
  %68 = icmp uge i32 %66, %67
  br i1 %68, label %69, label %89

69:                                               ; preds = %57
  %70 = load i64, i64* @vga_vram_base, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = add i64 %72, %74
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = sub i32 %79, %80
  %82 = call i32 @scr_memcpyw(i32* %71, i32* %76, i32 %81)
  %83 = load i64, i64* @vga_vram_base, align 8
  %84 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %85 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @vga_vram_base, align 8
  %88 = sub i64 %86, %87
  store i64 %88, i64* @vga_rolled_over, align 8
  br label %96

89:                                               ; preds = %57
  %90 = load i32, i32* %13, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %93 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %91
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %89, %69
  %97 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %98 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %101 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 8
  %103 = zext i32 %102 to i64
  %104 = add i64 %99, %103
  %105 = load i32, i32* %13, align 4
  %106 = zext i32 %105 to i64
  %107 = sub i64 %104, %106
  %108 = inttoptr i64 %107 to i32*
  %109 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %110 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @scr_memsetw(i32* %108, i32 %111, i32 %112)
  br label %175

114:                                              ; preds = %43
  %115 = load i64, i64* %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = zext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = load i64, i64* @vga_vram_base, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %147

121:                                              ; preds = %114
  %122 = load i32, i32* @vga_vram_end, align 4
  %123 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = sub i32 %122, %125
  %127 = load i32, i32* %13, align 4
  %128 = add i32 %126, %127
  %129 = zext i32 %128 to i64
  %130 = inttoptr i64 %129 to i32*
  %131 = load i64, i64* %12, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %134 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sub i32 %135, %136
  %138 = call i32 @scr_memmovew(i32* %130, i32* %132, i32 %137)
  %139 = load i32, i32* @vga_vram_end, align 4
  %140 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %141 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 8
  %143 = sub i32 %139, %142
  %144 = zext i32 %143 to i64
  %145 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %146 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  store i64 0, i64* @vga_rolled_over, align 8
  br label %154

147:                                              ; preds = %114
  %148 = load i32, i32* %13, align 4
  %149 = zext i32 %148 to i64
  %150 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %151 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %147, %121
  %155 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %156 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %159 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 8
  %161 = zext i32 %160 to i64
  %162 = add i64 %157, %161
  %163 = trunc i64 %162 to i32
  %164 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %165 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %167 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %171 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @scr_memsetw(i32* %169, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %154, %96
  %176 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %177 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %180 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = zext i32 %181 to i64
  %183 = add i64 %178, %182
  %184 = trunc i64 %183 to i32
  %185 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %186 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %185, i32 0, i32 4
  store i32 %184, i32* %186, align 4
  %187 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %188 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = trunc i64 %189 to i32
  %191 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %192 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 4
  %193 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %194 = call i32 @vga_set_mem_top(%struct.vc_data* %193)
  %195 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %196 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %195, i32 0, i32 7
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %12, align 8
  %199 = sub i64 %197, %198
  %200 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %201 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %199, %202
  %204 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %205 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %204, i32 0, i32 7
  store i64 %203, i64* %205, align 8
  store i32 1, i32* %6, align 4
  br label %206

206:                                              ; preds = %175, %42, %31
  %207 = load i32, i32* %6, align 4
  ret i32 %207
}

declare dso_local i32 @vgacon_restore_screen(%struct.vc_data*) #1

declare dso_local i32 @vgacon_scrollback_update(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @scr_memcpyw(i32*, i32*, i32) #1

declare dso_local i32 @scr_memsetw(i32*, i32, i32) #1

declare dso_local i32 @scr_memmovew(i32*, i32*, i32) #1

declare dso_local i32 @vga_set_mem_top(%struct.vc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
