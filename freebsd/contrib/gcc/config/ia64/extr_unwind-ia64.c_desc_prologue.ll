; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_prologue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_unwind-ia64.c_desc_prologue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_state_record = type { i32, i64, i64, i64, i32, i32, i8, i32, i64, i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }

@UNW_WHEN_NEVER = common dso_local global i32 0, align 4
@save_order = common dso_local global i64* null, align 8
@UNW_WHERE_GR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8, i8, %struct.unw_state_record*)* @desc_prologue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @desc_prologue(i32 %0, i64 %1, i8 zeroext %2, i8 zeroext %3, %struct.unw_state_record* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.unw_state_record*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  store %struct.unw_state_record* %4, %struct.unw_state_record** %10, align 8
  %12 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %13 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %5
  %17 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %18 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %23 = call i32 @finish_prologue(%struct.unw_state_record* %22)
  br label %24

24:                                               ; preds = %21, %16, %5
  %25 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %26 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %25, i32 0, i32 12
  store i64 0, i64* %26, align 8
  %27 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %28 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %31 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %34 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %40 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %39, i32 0, i32 4
  store i32 1, i32* %40, align 8
  br label %132

41:                                               ; preds = %24
  store i32 0, i32* %11, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %45 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %50 = call i32 @pop(%struct.unw_state_record* %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  br label %42

54:                                               ; preds = %42
  %55 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %56 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %55, i32 0, i32 5
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* @UNW_WHEN_NEVER, align 4
  %58 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %59 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %64 = call i32 @push(%struct.unw_state_record* %63)
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %67 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %70 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %75 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %74, i32 0, i32 3
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %78 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %132, label %81

81:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %119, %81
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %122

85:                                               ; preds = %82
  %86 = load i8, i8* %8, align 1
  %87 = zext i8 %86 to i32
  %88 = and i32 %87, 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %114

90:                                               ; preds = %85
  %91 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %92 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %91, i32 0, i32 10
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64*, i64** @save_order, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %94, %99
  %101 = load i32, i32* @UNW_WHERE_GR, align 4
  %102 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %103 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %106 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = sub nsw i64 %108, 1
  %110 = load i8, i8* %9, align 1
  %111 = add i8 %110, 1
  store i8 %111, i8* %9, align 1
  %112 = zext i8 %110 to i32
  %113 = call i32 @set_reg(i64 %100, i32 %101, i64 %109, i32 %112)
  br label %114

114:                                              ; preds = %90, %85
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i32
  %117 = shl i32 %116, 1
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %8, align 1
  br label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %82

122:                                              ; preds = %82
  %123 = load i8, i8* %9, align 1
  %124 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %125 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %124, i32 0, i32 6
  store i8 %123, i8* %125, align 8
  %126 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %127 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %126, i32 0, i32 9
  store i64 0, i64* %127, align 8
  %128 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %129 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %128, i32 0, i32 8
  store i64 0, i64* %129, align 8
  %130 = load %struct.unw_state_record*, %struct.unw_state_record** %10, align 8
  %131 = getelementptr inbounds %struct.unw_state_record, %struct.unw_state_record* %130, i32 0, i32 7
  store i32 16, i32* %131, align 4
  br label %132

132:                                              ; preds = %38, %122, %65
  ret void
}

declare dso_local i32 @finish_prologue(%struct.unw_state_record*) #1

declare dso_local i32 @pop(%struct.unw_state_record*) #1

declare dso_local i32 @push(%struct.unw_state_record*) #1

declare dso_local i32 @set_reg(i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
