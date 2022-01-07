; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_read_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i64*, i32, i32, i32, i64, i8**, i32 }

@G729 = common dso_local global i64 0, align 8
@SIG_READ_READY = common dso_local global i64 0, align 8
@POLL_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ixj_read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixj_read_frame(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 9
  %7 = load i8**, i8*** %6, align 8
  %8 = icmp ne i8** %7, null
  br i1 %8, label %9, label %205

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %89, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 2
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %92

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = srem i32 %18, 16
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %39, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %23 = call i32 @IsRxReady(%struct.TYPE_7__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = call i32 @IsRxReady(%struct.TYPE_7__* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = icmp sgt i32 %32, 5
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %38

36:                                               ; preds = %31
  %37 = call i32 @udelay(i32 10)
  br label %26

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38, %21, %17
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @G729, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 10
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 20
  br i1 %53, label %54, label %65

54:                                               ; preds = %51, %48, %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 14
  %59 = call i8* @inb_p(i64 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 15
  %64 = call i8* @inb_p(i64 %63)
  br label %65

65:                                               ; preds = %54, %51, %39
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 8
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 14
  %70 = call i8* @inb_p(i64 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 9
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  store i8* %70, i8** %76, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 8
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 15
  %81 = call i8* @inb_p(i64 %80)
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 9
  %84 = load i8**, i8*** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  store i8* %81, i8** %88, align 8
  br label %89

89:                                               ; preds = %65
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %3, align 4
  br label %10

92:                                               ; preds = %10
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, -1
  br i1 %100, label %101, label %182

101:                                              ; preds = %92
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call %struct.TYPE_7__* @get_ixj(i32 %104)
  %106 = call i64 @IsTxReady(%struct.TYPE_7__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %181

108:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %170, %108
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %113, 2
  %115 = icmp slt i32 %110, %114
  br i1 %115, label %116, label %173

116:                                              ; preds = %109
  %117 = load i32, i32* %3, align 4
  %118 = srem i32 %117, 16
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %138, label %120

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %122 = call i64 @IsTxReady(%struct.TYPE_7__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %125

125:                                              ; preds = %135, %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %127 = call i64 @IsTxReady(%struct.TYPE_7__* %126)
  %128 = icmp ne i64 %127, 0
  %129 = xor i1 %128, true
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  %133 = icmp sgt i32 %131, 5
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %137

135:                                              ; preds = %130
  %136 = call i32 @udelay(i32 10)
  br label %125

137:                                              ; preds = %134, %125
  br label %138

138:                                              ; preds = %137, %120, %116
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 9
  %141 = load i8**, i8*** %140, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call %struct.TYPE_7__* @get_ixj(i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, 12
  %153 = call i32 @outb_p(i8* %145, i64 %152)
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 9
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = getelementptr inbounds i8*, i8** %159, i64 1
  %161 = load i8*, i8** %160, align 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call %struct.TYPE_7__* @get_ixj(i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 8
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 13
  %169 = call i32 @outb_p(i8* %161, i64 %168)
  br label %170

170:                                              ; preds = %138
  %171 = load i32, i32* %3, align 4
  %172 = add nsw i32 %171, 2
  store i32 %172, i32* %3, align 4
  br label %109

173:                                              ; preds = %109
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call %struct.TYPE_7__* @get_ixj(i32 %176)
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %173, %101
  br label %204

182:                                              ; preds = %92
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  store i32 1, i32* %184, align 4
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 6
  %187 = call i32 @wake_up_interruptible(i32* %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  %190 = call i32 @wake_up_interruptible(i32* %189)
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 4
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* @SIG_READ_READY, align 8
  %195 = getelementptr inbounds i64, i64* %193, i64 %194
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %182
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %200 = load i64, i64* @SIG_READ_READY, align 8
  %201 = load i32, i32* @POLL_OUT, align 4
  %202 = call i32 @ixj_kill_fasync(%struct.TYPE_7__* %199, i64 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %182
  br label %204

204:                                              ; preds = %203, %181
  br label %205

205:                                              ; preds = %204, %1
  ret void
}

declare dso_local i32 @IsRxReady(%struct.TYPE_7__*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i8* @inb_p(i64) #1

declare dso_local i64 @IsTxReady(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @get_ixj(i32) #1

declare dso_local i32 @outb_p(i8*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ixj_kill_fasync(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
