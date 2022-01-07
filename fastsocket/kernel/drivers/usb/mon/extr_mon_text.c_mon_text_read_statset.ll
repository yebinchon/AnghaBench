; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_read_statset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_text.c_mon_text_read_statset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_reader_text = type { i32 }
%struct.mon_text_ptr = type { i64, i64, i64 }
%struct.mon_event_text = type { i8, i32*, i8 }

@.str = private unnamed_addr constant [28 x i8] c" s %02x %02x %04x %04x %04x\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" %c __ __ ____ ____ ____\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mon_reader_text*, %struct.mon_text_ptr*, %struct.mon_event_text*)* @mon_text_read_statset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_text_read_statset(%struct.mon_reader_text* %0, %struct.mon_text_ptr* %1, %struct.mon_event_text* %2) #0 {
  %4 = alloca %struct.mon_reader_text*, align 8
  %5 = alloca %struct.mon_text_ptr*, align 8
  %6 = alloca %struct.mon_event_text*, align 8
  store %struct.mon_reader_text* %0, %struct.mon_reader_text** %4, align 8
  store %struct.mon_text_ptr* %1, %struct.mon_text_ptr** %5, align 8
  store %struct.mon_event_text* %2, %struct.mon_event_text** %6, align 8
  %7 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %8 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 8
  %10 = sext i8 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %79

12:                                               ; preds = %3
  %13 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %14 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %17 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %21 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %24 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %28 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = trunc i32 %31 to i8
  %33 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %34 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %39 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %45 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %51 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 8
  %56 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %57 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %55, %60
  %62 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %63 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 8
  %68 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %69 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 6
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %67, %72
  %74 = call i64 (i64, i64, i8*, i8, ...) @snprintf(i64 %19, i64 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8 signext %32, i32 %37, i32 %49, i32 %61, i32 %73)
  %75 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %76 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  br label %132

79:                                               ; preds = %3
  %80 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %81 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 8
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 45
  br i1 %84, label %85, label %108

85:                                               ; preds = %79
  %86 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %87 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %90 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %94 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %97 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %95, %98
  %100 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %101 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 8
  %103 = call i64 (i64, i64, i8*, i8, ...) @snprintf(i64 %92, i64 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8 signext %102)
  %104 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %105 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  br label %131

108:                                              ; preds = %79
  %109 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %110 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %113 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %117 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %120 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = sub nsw i64 %118, %121
  %123 = load %struct.mon_event_text*, %struct.mon_event_text** %6, align 8
  %124 = getelementptr inbounds %struct.mon_event_text, %struct.mon_event_text* %123, i32 0, i32 2
  %125 = load i8, i8* %124, align 8
  %126 = call i64 (i64, i64, i8*, i8, ...) @snprintf(i64 %115, i64 %122, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext %125)
  %127 = load %struct.mon_text_ptr*, %struct.mon_text_ptr** %5, align 8
  %128 = getelementptr inbounds %struct.mon_text_ptr, %struct.mon_text_ptr* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %108, %85
  br label %132

132:                                              ; preds = %131, %12
  ret void
}

declare dso_local i64 @snprintf(i64, i64, i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
