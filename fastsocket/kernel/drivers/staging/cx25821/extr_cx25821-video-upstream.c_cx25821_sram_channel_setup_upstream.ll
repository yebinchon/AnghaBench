; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_sram_channel_setup_upstream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_sram_channel_setup_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.sram_channel = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@VID_IQ_SIZE_DW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_sram_channel_setup_upstream(%struct.cx25821_dev* %0, %struct.sram_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca %struct.sram_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %6, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %14 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %19 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @cx_write(i32 %20, i32 0)
  %22 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %23 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cx_write(i32 %24, i32 0)
  %26 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %27 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cx_write(i32 %28, i32 0)
  %30 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %31 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cx_write(i32 %32, i32 0)
  store i32 0, i32* %5, align 4
  br label %180

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 7
  %37 = and i32 %36, -8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %39 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %42 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ugt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 4, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %89, %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %92

58:                                               ; preds = %54
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = mul i32 16, %60
  %62 = add i32 %59, %61
  %63 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %64 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul i32 %66, %67
  %69 = add i32 %65, %68
  %70 = call i32 @cx_write(i32 %62, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul i32 16, %72
  %74 = add i32 %71, %73
  %75 = add i32 %74, 4
  %76 = call i32 @cx_write(i32 %75, i32 0)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul i32 16, %78
  %80 = add i32 %77, %79
  %81 = add i32 %80, 8
  %82 = call i32 @cx_write(i32 %81, i32 0)
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = mul i32 16, %84
  %86 = add i32 %83, %85
  %87 = add i32 %86, 12
  %88 = call i32 @cx_write(i32 %87, i32 0)
  br label %89

89:                                               ; preds = %58
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %54

92:                                               ; preds = %54
  %93 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %94 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 0
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @cx_write(i32 %97, i32 %98)
  %100 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %101 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = call i32 @cx_write(i32 %104, i32 0)
  %106 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %107 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @cx_write(i32 %110, i32 %111)
  %113 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %114 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, 12
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %11, align 4
  %119 = mul i32 %118, 16
  %120 = lshr i32 %119, 3
  %121 = call i32 @cx_write(i32 %117, i32 %120)
  %122 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %123 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 16
  %126 = trunc i64 %125 to i32
  %127 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %128 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @cx_write(i32 %126, i32 %129)
  %131 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %132 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 20
  %135 = trunc i64 %134 to i32
  %136 = load i32, i32* @VID_IQ_SIZE_DW, align 4
  %137 = call i32 @cx_write(i32 %135, i32 %136)
  store i32 24, i32* %10, align 4
  br label %138

138:                                              ; preds = %150, %92
  %139 = load i32, i32* %10, align 4
  %140 = icmp ult i32 %139, 80
  br i1 %140, label %141, label %153

141:                                              ; preds = %138
  %142 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %143 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %10, align 4
  %146 = zext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = trunc i64 %147 to i32
  %149 = call i32 @cx_write(i32 %148, i32 0)
  br label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %10, align 4
  %152 = add i32 %151, 4
  store i32 %152, i32* %10, align 4
  br label %138

153:                                              ; preds = %138
  %154 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %155 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %158 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @cx_write(i32 %156, i32 %159)
  %161 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %162 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @cx_write(i32 %163, i32 %164)
  %166 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %167 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = mul i32 %169, 16
  %171 = lshr i32 %170, 3
  %172 = call i32 @cx_write(i32 %168, i32 %171)
  %173 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %174 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %8, align 4
  %177 = lshr i32 %176, 3
  %178 = sub i32 %177, 1
  %179 = call i32 @cx_write(i32 %175, i32 %178)
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %153, %17
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
