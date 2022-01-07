; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_axis.c_gpio_event_update_axis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_gpio_axis.c_gpio_event_update_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_axis_state = type { i32, i32, %struct.gpio_event_axis_info* }
%struct.gpio_event_axis_info = type { i32, i32 (%struct.gpio_event_axis_info*, i32)*, i32, i64, i32, i32, i32* }

@GPIOEAF_PRINT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"axis %d-%d raw %x, pos %d -> %d\0A\00", align 1
@EV_REL = common dso_local global i64 0, align 8
@GPIOEAF_PRINT_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"axis %d-%d unknown direction, pos %d -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"axis %d-%d change %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"axis %d-%d now %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_axis_state*, i32)* @gpio_event_update_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_event_update_axis(%struct.gpio_axis_state* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_axis_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_event_axis_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gpio_axis_state* %0, %struct.gpio_axis_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gpio_axis_state*, %struct.gpio_axis_state** %3, align 8
  %12 = getelementptr inbounds %struct.gpio_axis_state, %struct.gpio_axis_state* %11, i32 0, i32 2
  %13 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %12, align 8
  store %struct.gpio_event_axis_info* %13, %struct.gpio_event_axis_info** %5, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.gpio_axis_state*, %struct.gpio_axis_state** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_axis_state, %struct.gpio_axis_state* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %10, align 4
  %17 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %18 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %36, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 1
  %27 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %28 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %27, i32 0, i32 6
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpio_get_value(i32 %33)
  %35 = or i32 %26, %34
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %6, align 4
  br label %21

39:                                               ; preds = %21
  %40 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %41 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %40, i32 0, i32 1
  %42 = load i32 (%struct.gpio_event_axis_info*, i32)*, i32 (%struct.gpio_event_axis_info*, i32)** %41, align 8
  %43 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 %42(%struct.gpio_event_axis_info* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %47 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @GPIOEAF_PRINT_RAW, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %39
  %53 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %54 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %57 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i8*, i64, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %58, i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %52, %39
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %183

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %183

70:                                               ; preds = %66
  %71 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %72 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EV_REL, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %150

76:                                               ; preds = %70
  %77 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %78 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 %81, %82
  %84 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %85 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = srem i32 %83, %86
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %90 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 2
  %93 = icmp sgt i32 %88, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %76
  %95 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %96 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %7, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %94, %76
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %103 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = sdiv i32 %104, 2
  %106 = icmp eq i32 %101, %105
  br i1 %106, label %107, label %125

107:                                              ; preds = %100
  %108 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %109 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @GPIOEAF_PRINT_EVENT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %116 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %119 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 (i8*, i64, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %117, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %114, %107
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %124, %100
  %126 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %127 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @GPIOEAF_PRINT_EVENT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %134 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %137 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 (i8*, i64, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %135, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %132, %125
  %142 = load %struct.gpio_axis_state*, %struct.gpio_axis_state** %3, align 8
  %143 = getelementptr inbounds %struct.gpio_axis_state, %struct.gpio_axis_state* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %146 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @input_report_rel(i32 %144, i32 %147, i32 %148)
  br label %178

150:                                              ; preds = %70
  %151 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %152 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @GPIOEAF_PRINT_EVENT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %150
  %158 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %159 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %158, i32 0, i32 3
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %162 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 (i8*, i64, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %160, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %157, %150
  %167 = load %struct.gpio_axis_state*, %struct.gpio_axis_state** %3, align 8
  %168 = getelementptr inbounds %struct.gpio_axis_state, %struct.gpio_axis_state* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %171 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.gpio_event_axis_info*, %struct.gpio_event_axis_info** %5, align 8
  %174 = getelementptr inbounds %struct.gpio_event_axis_info, %struct.gpio_event_axis_info* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @input_event(i32 %169, i64 %172, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %166, %141
  %179 = load %struct.gpio_axis_state*, %struct.gpio_axis_state** %3, align 8
  %180 = getelementptr inbounds %struct.gpio_axis_state, %struct.gpio_axis_state* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @input_sync(i32 %181)
  br label %183

183:                                              ; preds = %178, %66, %63
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.gpio_axis_state*, %struct.gpio_axis_state** %3, align 8
  %186 = getelementptr inbounds %struct.gpio_axis_state, %struct.gpio_axis_state* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  ret void
}

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @pr_info(i8*, i64, i32, i32, ...) #1

declare dso_local i32 @input_report_rel(i32, i32, i32) #1

declare dso_local i32 @input_event(i32, i64, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
