; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_firmware.c_usb6fire_fw_ihex_next_record.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/6fire/extr_firmware.c_usb6fire_fw_ihex_next_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ihex_record = type { i32, i32, i32, i8*, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ihex_record*)* @usb6fire_fw_ihex_next_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb6fire_fw_ihex_next_record(%struct.ihex_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ihex_record*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ihex_record* %0, %struct.ihex_record** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %8 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %11 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %14 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %9
  %18 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %19 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %22 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 58
  br label %29

29:                                               ; preds = %17, %9
  %30 = phi i1 [ false, %9 ], [ %28, %17 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %33 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %9

36:                                               ; preds = %29
  %37 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %38 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %41 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %200

45:                                               ; preds = %36
  %46 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %47 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %51 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 8
  %54 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %55 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %60 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %200

61:                                               ; preds = %45
  %62 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %63 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %66 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = call i32 @usb6fire_fw_ihex_hex(i8* %69, i32* %4)
  %71 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %72 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %74 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 2
  store i32 %76, i32* %74, align 4
  %77 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %78 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %81 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %79, i64 %83
  %85 = call i32 @usb6fire_fw_ihex_hex(i8* %84, i32* %4)
  %86 = shl i32 %85, 8
  %87 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %88 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %90 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 2
  store i32 %92, i32* %90, align 4
  %93 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %94 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %97 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = call i32 @usb6fire_fw_ihex_hex(i8* %100, i32* %4)
  %102 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %103 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %107 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %111 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %114 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %112, i64 %116
  %118 = call i32 @usb6fire_fw_ihex_hex(i8* %117, i32* %4)
  store i32 %118, i32* %5, align 4
  %119 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %120 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 2
  store i32 %122, i32* %120, align 4
  %123 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %124 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %127 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  %130 = mul nsw i32 2, %129
  %131 = add nsw i32 %125, %130
  %132 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %133 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %61
  %137 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %138 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  store i32 0, i32* %2, align 4
  br label %200

139:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %140

140:                                              ; preds = %166, %139
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %143 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %146, label %169

146:                                              ; preds = %140
  %147 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %148 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %147, i32 0, i32 3
  %149 = load i8*, i8** %148, align 8
  %150 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %151 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = call i32 @usb6fire_fw_ihex_hex(i8* %154, i32* %4)
  %156 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %157 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %163 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 2
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %146
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %140

169:                                              ; preds = %140
  %170 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %171 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %170, i32 0, i32 3
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %174 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %172, i64 %176
  %178 = call i32 @usb6fire_fw_ihex_hex(i8* %177, i32* %4)
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %169
  %182 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %183 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %182, i32 0, i32 0
  store i32 1, i32* %183, align 8
  store i32 0, i32* %2, align 4
  br label %200

184:                                              ; preds = %169
  %185 = load i32, i32* %5, align 4
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %192, label %187

187:                                              ; preds = %184
  %188 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %189 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %187, %184
  store i32 0, i32* %2, align 4
  br label %200

193:                                              ; preds = %187
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  store i32 1, i32* %2, align 4
  br label %200

197:                                              ; preds = %193
  %198 = load %struct.ihex_record*, %struct.ihex_record** %3, align 8
  %199 = getelementptr inbounds %struct.ihex_record, %struct.ihex_record* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  store i32 0, i32* %2, align 4
  br label %200

200:                                              ; preds = %197, %196, %192, %181, %136, %58, %44
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

declare dso_local i32 @usb6fire_fw_ihex_hex(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
