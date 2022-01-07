; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_read_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/iio/accel/extr_lis3l02dq_ring.c_lis3l02dq_read_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3l02dq_state = type { i32, i32, %struct.TYPE_2__*, i8** }
%struct.TYPE_2__ = type { i32, i32 }
%struct.spi_transfer = type { i32, i32, i32, i32*, i8** }
%struct.spi_message = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@read_all_tx_array = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3l02dq_read_all(%struct.lis3l02dq_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lis3l02dq_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spi_transfer*, align 8
  %7 = alloca %struct.spi_message, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lis3l02dq_state* %0, %struct.lis3l02dq_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %12 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 32
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.spi_transfer* @kzalloc(i32 %19, i32 %20)
  store %struct.spi_transfer* %21, %struct.spi_transfer** %6, align 8
  %22 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %23 = icmp ne %struct.spi_transfer* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %212

27:                                               ; preds = %2
  %28 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %29 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %178, %27
  %32 = load i32, i32* %9, align 4
  %33 = load i8**, i8*** @read_all_tx_array, align 8
  %34 = call i32 @ARRAY_SIZE(i8** %33)
  %35 = sdiv i32 %34, 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %181

37:                                               ; preds = %31
  %38 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %39 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 1, %43
  %45 = and i32 %42, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %177

47:                                               ; preds = %37
  %48 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %49 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %48, i32 0, i32 3
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = mul nsw i32 2, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %50, i64 %53
  %55 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %55, i64 %57
  %59 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %58, i32 0, i32 4
  store i8** %54, i8*** %59, align 8
  %60 = load i8**, i8*** @read_all_tx_array, align 8
  %61 = load i32, i32* %9, align 4
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %60, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %67 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %66, i32 0, i32 3
  %68 = load i8**, i8*** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 2, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %68, i64 %71
  store i8* %65, i8** %72, align 8
  %73 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %74 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %73, i32 0, i32 3
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = mul nsw i32 2, %76
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8*, i8** %75, i64 %79
  store i8* null, i8** %80, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %94

83:                                               ; preds = %47
  %84 = load i32*, i32** %5, align 8
  %85 = load i32, i32* %10, align 4
  %86 = mul nsw i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %89, i64 %91
  %93 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %92, i32 0, i32 3
  store i32* %88, i32** %93, align 8
  br label %94

94:                                               ; preds = %83, %47
  %95 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %95, i64 %97
  %99 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %98, i32 0, i32 0
  store i32 8, i32* %99, align 8
  %100 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %100, i64 %102
  %104 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %103, i32 0, i32 1
  store i32 2, i32* %104, align 4
  %105 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %105, i64 %107
  %109 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %108, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %113 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %112, i32 0, i32 3
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = mul nsw i32 2, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %114, i64 %117
  %119 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %119, i64 %121
  %123 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %122, i32 0, i32 4
  store i8** %118, i8*** %123, align 8
  %124 = load i8**, i8*** @read_all_tx_array, align 8
  %125 = load i32, i32* %9, align 4
  %126 = mul nsw i32 %125, 4
  %127 = add nsw i32 %126, 2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8*, i8** %124, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %132 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %131, i32 0, i32 3
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = mul nsw i32 2, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  store i8* %130, i8** %137, align 8
  %138 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %139 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %138, i32 0, i32 3
  %140 = load i8**, i8*** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = mul nsw i32 2, %141
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %140, i64 %144
  store i8* null, i8** %145, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %159

148:                                              ; preds = %94
  %149 = load i32*, i32** %5, align 8
  %150 = load i32, i32* %10, align 4
  %151 = mul nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  %154 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %154, i64 %156
  %158 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %157, i32 0, i32 3
  store i32* %153, i32** %158, align 8
  br label %159

159:                                              ; preds = %148, %94
  %160 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %160, i64 %162
  %164 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %163, i32 0, i32 0
  store i32 8, i32* %164, align 8
  %165 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %165, i64 %167
  %169 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %168, i32 0, i32 1
  store i32 2, i32* %169, align 4
  %170 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %170, i64 %172
  %174 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %173, i32 0, i32 2
  store i32 1, i32* %174, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %159, %37
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %31

181:                                              ; preds = %31
  %182 = call i32 @spi_message_init(%struct.spi_message* %7)
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %198, %181
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %186 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %185, i32 0, i32 2
  %187 = load %struct.TYPE_2__*, %struct.TYPE_2__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = mul nsw i32 %189, 2
  %191 = icmp slt i32 %184, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %183
  %193 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %193, i64 %195
  %197 = call i32 @spi_message_add_tail(%struct.spi_transfer* %196, %struct.spi_message* %7)
  br label %198

198:                                              ; preds = %192
  %199 = load i32, i32* %10, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %10, align 4
  br label %183

201:                                              ; preds = %183
  %202 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %203 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @spi_sync(i32 %204, %struct.spi_message* %7)
  store i32 %205, i32* %8, align 4
  %206 = load %struct.lis3l02dq_state*, %struct.lis3l02dq_state** %4, align 8
  %207 = getelementptr inbounds %struct.lis3l02dq_state, %struct.lis3l02dq_state* %206, i32 0, i32 0
  %208 = call i32 @mutex_unlock(i32* %207)
  %209 = load %struct.spi_transfer*, %struct.spi_transfer** %6, align 8
  %210 = call i32 @kfree(%struct.spi_transfer* %209)
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %201, %24
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.spi_transfer* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.spi_transfer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
