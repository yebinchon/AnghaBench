; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_write_cid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_write_cid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__, i64, i64, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @ixj_write_cid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_write_cid(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca [50 x i8], align 16
  %4 = alloca [50 x i8], align 16
  %5 = alloca [80 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  br label %192

24:                                               ; preds = %17
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 6
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = call i32 @ixj_fsk_alloc(%struct.TYPE_16__* %37)
  %39 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @strcpy(i8* %39, i32 %43)
  %45 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @strcat(i8* %45, i32 %49)
  %51 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @strcat(i8* %51, i32 %55)
  %57 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @strcat(i8* %57, i32 %61)
  %63 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @strcpy(i8* %63, i32 %67)
  %69 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strcpy(i8* %69, i32 %73)
  %75 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %76 = call signext i8 @strlen(i8* %75)
  store i8 %76, i8* %7, align 1
  %77 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %78 = call signext i8 @strlen(i8* %77)
  store i8 %78, i8* %8, align 1
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %80 = call signext i8 @strlen(i8* %79)
  store i8 %80, i8* %9, align 1
  %81 = load i8, i8* %7, align 1
  %82 = sext i8 %81 to i32
  %83 = load i8, i8* %8, align 1
  %84 = sext i8 %83 to i32
  %85 = add nsw i32 %82, %84
  %86 = load i8, i8* %9, align 1
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %85, %87
  %89 = add nsw i32 %88, 6
  %90 = trunc i32 %89 to i8
  store i8 %90, i8* %6, align 1
  br label %91

91:                                               ; preds = %24
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %93 = call i32 @ixj_write_cid_seize(%struct.TYPE_16__* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %94, i8 signext -128)
  store i32 128, i32* %11, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = load i8, i8* %6, align 1
  %98 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %96, i8 signext %97)
  %99 = load i32, i32* %11, align 4
  %100 = load i8, i8* %6, align 1
  %101 = sext i8 %100 to i32
  %102 = add nsw i32 %99, %101
  store i32 %102, i32* %11, align 4
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %103, i8 signext 1)
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %108 = load i8, i8* %7, align 1
  %109 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %107, i8 signext %108)
  %110 = load i32, i32* %11, align 4
  %111 = load i8, i8* %7, align 1
  %112 = sext i8 %111 to i32
  %113 = add nsw i32 %110, %112
  store i32 %113, i32* %11, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %115 = getelementptr inbounds [50 x i8], [50 x i8]* %3, i64 0, i64 0
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @ixj_write_cid_string(%struct.TYPE_16__* %114, i8* %115, i32 %116)
  store i32 %117, i32* %11, align 4
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %119 = call i32 @ixj_hookstate(%struct.TYPE_16__* %118)
  %120 = and i32 %119, 1
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %91
  br label %189

123:                                              ; preds = %91
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %125 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %124, i8 signext 2)
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %11, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %129 = load i8, i8* %8, align 1
  %130 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %128, i8 signext %129)
  %131 = load i32, i32* %11, align 4
  %132 = load i8, i8* %8, align 1
  %133 = sext i8 %132 to i32
  %134 = add nsw i32 %131, %133
  store i32 %134, i32* %11, align 4
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %136 = getelementptr inbounds [50 x i8], [50 x i8]* %4, i64 0, i64 0
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @ixj_write_cid_string(%struct.TYPE_16__* %135, i8* %136, i32 %137)
  store i32 %138, i32* %11, align 4
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %140 = call i32 @ixj_hookstate(%struct.TYPE_16__* %139)
  %141 = and i32 %140, 1
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %123
  br label %189

144:                                              ; preds = %123
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %146 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %145, i8 signext 7)
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 7
  store i32 %148, i32* %11, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %150 = load i8, i8* %9, align 1
  %151 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %149, i8 signext %150)
  %152 = load i32, i32* %11, align 4
  %153 = load i8, i8* %9, align 1
  %154 = sext i8 %153 to i32
  %155 = add nsw i32 %152, %154
  store i32 %155, i32* %11, align 4
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %5, i64 0, i64 0
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @ixj_write_cid_string(%struct.TYPE_16__* %156, i8* %157, i32 %158)
  store i32 %159, i32* %11, align 4
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %161 = call i32 @ixj_hookstate(%struct.TYPE_16__* %160)
  %162 = and i32 %161, 1
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %144
  br label %189

165:                                              ; preds = %144
  %166 = load i32, i32* %11, align 4
  %167 = srem i32 %166, 256
  store i32 %167, i32* %11, align 4
  %168 = load i32, i32* %11, align 4
  %169 = xor i32 %168, 255
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %11, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %11, align 4
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %173 = load i32, i32* %11, align 4
  %174 = trunc i32 %173 to i8
  %175 = call i32 @ixj_write_cid_byte(%struct.TYPE_16__* %172, i8 signext %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = srem i32 %178, 240
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %165
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 240, %183
  store i32 %184, i32* %10, align 4
  br label %185

185:                                              ; preds = %182, %165
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @ixj_pad_fsk(%struct.TYPE_16__* %186, i32 %187)
  br label %189

189:                                              ; preds = %185, %164, %143, %122
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %191 = call i32 @ixj_write_frame(%struct.TYPE_16__* %190)
  br label %192

192:                                              ; preds = %189, %23
  ret void
}

declare dso_local i32 @ixj_fsk_alloc(%struct.TYPE_16__*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @strcat(i8*, i32) #1

declare dso_local signext i8 @strlen(i8*) #1

declare dso_local i32 @ixj_write_cid_seize(%struct.TYPE_16__*) #1

declare dso_local i32 @ixj_write_cid_byte(%struct.TYPE_16__*, i8 signext) #1

declare dso_local i32 @ixj_write_cid_string(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @ixj_hookstate(%struct.TYPE_16__*) #1

declare dso_local i32 @ixj_pad_fsk(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ixj_write_frame(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
