; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_preserve_temp_slots.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_preserve_temp_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temp_slot = type { i64, i32, %struct.temp_slot*, i64 }

@temp_slot_level = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @preserve_temp_slots(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.temp_slot*, align 8
  %4 = alloca %struct.temp_slot*, align 8
  %5 = alloca %struct.temp_slot*, align 8
  store i64 %0, i64* %2, align 8
  store %struct.temp_slot* null, %struct.temp_slot** %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %1
  %9 = load i64, i64* @temp_slot_level, align 8
  %10 = call %struct.temp_slot** @temp_slots_at_level(i64 %9)
  %11 = load %struct.temp_slot*, %struct.temp_slot** %10, align 8
  store %struct.temp_slot* %11, %struct.temp_slot** %3, align 8
  br label %12

12:                                               ; preds = %29, %8
  %13 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %14 = icmp ne %struct.temp_slot* %13, null
  br i1 %14, label %15, label %31

15:                                               ; preds = %12
  %16 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %17 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %16, i32 0, i32 2
  %18 = load %struct.temp_slot*, %struct.temp_slot** %17, align 8
  store %struct.temp_slot* %18, %struct.temp_slot** %4, align 8
  %19 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %20 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %25 = load i64, i64* @temp_slot_level, align 8
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @move_slot_to_level(%struct.temp_slot* %24, i64 %26)
  br label %28

28:                                               ; preds = %23, %15
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %30, %struct.temp_slot** %3, align 8
  br label %12

31:                                               ; preds = %12
  br label %153

32:                                               ; preds = %1
  %33 = load i64, i64* %2, align 8
  %34 = call i64 @REG_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load i64, i64* %2, align 8
  %38 = call i64 @REG_POINTER(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* %2, align 8
  %42 = call %struct.temp_slot* @find_temp_slot_from_address(i64 %41)
  store %struct.temp_slot* %42, %struct.temp_slot** %3, align 8
  br label %43

43:                                               ; preds = %40, %36, %32
  %44 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %45 = icmp eq %struct.temp_slot* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @MEM_P(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i64, i64* %2, align 8
  %52 = call i64 @XEXP(i64 %51, i32 0)
  %53 = call i64 @CONSTANT_P(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %50, %46
  %56 = load i64, i64* @temp_slot_level, align 8
  %57 = call %struct.temp_slot** @temp_slots_at_level(i64 %56)
  %58 = load %struct.temp_slot*, %struct.temp_slot** %57, align 8
  store %struct.temp_slot* %58, %struct.temp_slot** %3, align 8
  br label %59

59:                                               ; preds = %76, %55
  %60 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %61 = icmp ne %struct.temp_slot* %60, null
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %64 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %63, i32 0, i32 2
  %65 = load %struct.temp_slot*, %struct.temp_slot** %64, align 8
  store %struct.temp_slot* %65, %struct.temp_slot** %4, align 8
  %66 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %67 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %72 = load i64, i64* @temp_slot_level, align 8
  %73 = sub nsw i64 %72, 1
  %74 = call i32 @move_slot_to_level(%struct.temp_slot* %71, i64 %73)
  br label %75

75:                                               ; preds = %70, %62
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %77, %struct.temp_slot** %3, align 8
  br label %59

78:                                               ; preds = %59
  br label %153

79:                                               ; preds = %50, %43
  %80 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %81 = icmp eq %struct.temp_slot* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i64, i64* %2, align 8
  %84 = call i64 @XEXP(i64 %83, i32 0)
  %85 = call %struct.temp_slot* @find_temp_slot_from_address(i64 %84)
  store %struct.temp_slot* %85, %struct.temp_slot** %3, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %88 = icmp ne %struct.temp_slot* %87, null
  br i1 %88, label %89, label %130

89:                                               ; preds = %86
  %90 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %91 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @temp_slot_level, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %89
  %96 = load i64, i64* @temp_slot_level, align 8
  %97 = call %struct.temp_slot** @temp_slots_at_level(i64 %96)
  %98 = load %struct.temp_slot*, %struct.temp_slot** %97, align 8
  store %struct.temp_slot* %98, %struct.temp_slot** %5, align 8
  br label %99

99:                                               ; preds = %120, %95
  %100 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %101 = icmp ne %struct.temp_slot* %100, null
  br i1 %101, label %102, label %122

102:                                              ; preds = %99
  %103 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %104 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %103, i32 0, i32 2
  %105 = load %struct.temp_slot*, %struct.temp_slot** %104, align 8
  store %struct.temp_slot* %105, %struct.temp_slot** %4, align 8
  %106 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %107 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %108 = icmp ne %struct.temp_slot* %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %111 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %109
  %115 = load %struct.temp_slot*, %struct.temp_slot** %5, align 8
  %116 = load i64, i64* @temp_slot_level, align 8
  %117 = sub nsw i64 %116, 1
  %118 = call i32 @move_slot_to_level(%struct.temp_slot* %115, i64 %117)
  br label %119

119:                                              ; preds = %114, %109, %102
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %121, %struct.temp_slot** %5, align 8
  br label %99

122:                                              ; preds = %99
  %123 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %124 = load i64, i64* @temp_slot_level, align 8
  %125 = sub nsw i64 %124, 1
  %126 = call i32 @move_slot_to_level(%struct.temp_slot* %123, i64 %125)
  %127 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %128 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %127, i32 0, i32 3
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %122, %89
  br label %153

130:                                              ; preds = %86
  %131 = load i64, i64* @temp_slot_level, align 8
  %132 = call %struct.temp_slot** @temp_slots_at_level(i64 %131)
  %133 = load %struct.temp_slot*, %struct.temp_slot** %132, align 8
  store %struct.temp_slot* %133, %struct.temp_slot** %3, align 8
  br label %134

134:                                              ; preds = %151, %130
  %135 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %136 = icmp ne %struct.temp_slot* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %139 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %138, i32 0, i32 2
  %140 = load %struct.temp_slot*, %struct.temp_slot** %139, align 8
  store %struct.temp_slot* %140, %struct.temp_slot** %4, align 8
  %141 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %142 = getelementptr inbounds %struct.temp_slot, %struct.temp_slot* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %137
  %146 = load %struct.temp_slot*, %struct.temp_slot** %3, align 8
  %147 = load i64, i64* @temp_slot_level, align 8
  %148 = sub nsw i64 %147, 1
  %149 = call i32 @move_slot_to_level(%struct.temp_slot* %146, i64 %148)
  br label %150

150:                                              ; preds = %145, %137
  br label %151

151:                                              ; preds = %150
  %152 = load %struct.temp_slot*, %struct.temp_slot** %4, align 8
  store %struct.temp_slot* %152, %struct.temp_slot** %3, align 8
  br label %134

153:                                              ; preds = %31, %78, %129, %134
  ret void
}

declare dso_local %struct.temp_slot** @temp_slots_at_level(i64) #1

declare dso_local i32 @move_slot_to_level(%struct.temp_slot*, i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @REG_POINTER(i64) #1

declare dso_local %struct.temp_slot* @find_temp_slot_from_address(i64) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
