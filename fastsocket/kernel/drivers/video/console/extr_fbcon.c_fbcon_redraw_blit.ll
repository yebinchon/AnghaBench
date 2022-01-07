; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_redraw_blit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon.c_fbcon_redraw_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i64 }
%struct.fb_info = type { %struct.fbcon_ops* }
%struct.fbcon_ops = type { i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32, i32, i32)* }
%struct.fb_info.0 = type opaque
%struct.display = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, %struct.display*, i32, i32, i32)* @fbcon_redraw_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_redraw_blit(%struct.vc_data* %0, %struct.fb_info* %1, %struct.display* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca %struct.display*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca %struct.fbcon_ops*, align 8
  %17 = alloca i16*, align 8
  %18 = alloca i16*, align 8
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store %struct.fb_info* %1, %struct.fb_info** %8, align 8
  store %struct.display* %2, %struct.display** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = mul nsw i32 %21, %24
  store i32 %25, i32* %13, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %28, %34
  %36 = inttoptr i64 %35 to i16*
  store i16* %36, i16** %14, align 8
  %37 = load i16*, i16** %14, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  store i16* %40, i16** %15, align 8
  %41 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = load %struct.fbcon_ops*, %struct.fbcon_ops** %42, align 8
  store %struct.fbcon_ops* %43, %struct.fbcon_ops** %16, align 8
  br label %44

44:                                               ; preds = %167, %6
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %11, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %168

48:                                               ; preds = %44
  %49 = load i16*, i16** %15, align 8
  store i16* %49, i16** %17, align 8
  %50 = load i16*, i16** %15, align 8
  %51 = call i16* @advance_row(i16* %50, i32 1)
  store i16* %51, i16** %18, align 8
  store i32 0, i32* %20, align 4
  br label %52

52:                                               ; preds = %114, %48
  %53 = load i16*, i16** %15, align 8
  %54 = call zeroext i16 @scr_readw(i16* %53)
  store i16 %54, i16* %19, align 2
  %55 = load i16, i16* %19, align 2
  %56 = zext i16 %55 to i32
  %57 = load i16*, i16** %14, align 8
  %58 = call zeroext i16 @scr_readw(i16* %57)
  %59 = zext i16 %58 to i32
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %52
  %62 = load i16*, i16** %15, align 8
  %63 = load i16*, i16** %17, align 8
  %64 = icmp ugt i16* %62, %63
  br i1 %64, label %65, label %99

65:                                               ; preds = %61
  %66 = load %struct.fbcon_ops*, %struct.fbcon_ops** %16, align 8
  %67 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32, i32, i32)** %67, align 8
  %69 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %70 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %71 = bitcast %struct.fb_info* %70 to %struct.fb_info.0*
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %20, align 4
  %78 = load i16*, i16** %15, align 8
  %79 = load i16*, i16** %17, align 8
  %80 = ptrtoint i16* %78 to i64
  %81 = ptrtoint i16* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 2
  %84 = trunc i64 %83 to i32
  %85 = call i32 %68(%struct.vc_data* %69, %struct.fb_info.0* %71, i32 %74, i32 %75, i32 %76, i32 %77, i32 1, i32 %84)
  %86 = load i16*, i16** %15, align 8
  %87 = load i16*, i16** %17, align 8
  %88 = ptrtoint i16* %86 to i64
  %89 = ptrtoint i16* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 2
  %92 = add nsw i64 %91, 1
  %93 = load i32, i32* %20, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %20, align 4
  %97 = load i16*, i16** %15, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 1
  store i16* %98, i16** %17, align 8
  br label %104

99:                                               ; preds = %61
  %100 = load i32, i32* %20, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %20, align 4
  %102 = load i16*, i16** %17, align 8
  %103 = getelementptr inbounds i16, i16* %102, i32 1
  store i16* %103, i16** %17, align 8
  br label %104

104:                                              ; preds = %99, %65
  br label %105

105:                                              ; preds = %104, %52
  %106 = load i16, i16* %19, align 2
  %107 = load i16*, i16** %14, align 8
  %108 = call i32 @scr_writew(i16 zeroext %106, i16* %107)
  %109 = call i32 (...) @console_conditional_schedule()
  %110 = load i16*, i16** %15, align 8
  %111 = getelementptr inbounds i16, i16* %110, i32 1
  store i16* %111, i16** %15, align 8
  %112 = load i16*, i16** %14, align 8
  %113 = getelementptr inbounds i16, i16* %112, i32 1
  store i16* %113, i16** %14, align 8
  br label %114

114:                                              ; preds = %105
  %115 = load i16*, i16** %15, align 8
  %116 = load i16*, i16** %18, align 8
  %117 = icmp ult i16* %115, %116
  br i1 %117, label %52, label %118

118:                                              ; preds = %114
  %119 = load i16*, i16** %15, align 8
  %120 = load i16*, i16** %17, align 8
  %121 = icmp ugt i16* %119, %120
  br i1 %121, label %122, label %143

122:                                              ; preds = %118
  %123 = load %struct.fbcon_ops*, %struct.fbcon_ops** %16, align 8
  %124 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %123, i32 0, i32 0
  %125 = load i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.vc_data*, %struct.fb_info.0*, i32, i32, i32, i32, i32, i32)** %124, align 8
  %126 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %127 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %128 = bitcast %struct.fb_info* %127 to %struct.fb_info.0*
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %20, align 4
  %135 = load i16*, i16** %15, align 8
  %136 = load i16*, i16** %17, align 8
  %137 = ptrtoint i16* %135 to i64
  %138 = ptrtoint i16* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 2
  %141 = trunc i64 %140 to i32
  %142 = call i32 %125(%struct.vc_data* %126, %struct.fb_info.0* %128, i32 %131, i32 %132, i32 %133, i32 %134, i32 1, i32 %141)
  br label %143

143:                                              ; preds = %122, %118
  %144 = call i32 (...) @console_conditional_schedule()
  %145 = load i32, i32* %12, align 4
  %146 = icmp sgt i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %167

150:                                              ; preds = %143
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %10, align 4
  %153 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %154 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i16*, i16** %15, align 8
  %157 = sext i32 %155 to i64
  %158 = sub i64 0, %157
  %159 = getelementptr inbounds i16, i16* %156, i64 %158
  store i16* %159, i16** %15, align 8
  %160 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %161 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i16*, i16** %14, align 8
  %164 = sext i32 %162 to i64
  %165 = sub i64 0, %164
  %166 = getelementptr inbounds i16, i16* %163, i64 %165
  store i16* %166, i16** %14, align 8
  br label %167

167:                                              ; preds = %150, %147
  br label %44

168:                                              ; preds = %44
  ret void
}

declare dso_local i16* @advance_row(i16*, i32) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

declare dso_local i32 @scr_writew(i16 zeroext, i16*) #1

declare dso_local i32 @console_conditional_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
