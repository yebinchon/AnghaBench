; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_deprecated_generic_get_saved_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_deprecated_generic_get_saved_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@target_has_registers = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"No registers.\00", align 1
@DUMMY_FRAME = common dso_local global i64 0, align 8
@not_lval = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@SP_REGNUM = common dso_local global i32 0, align 4
@lval_register = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @deprecated_generic_get_saved_register(i8* %0, i32* %1, i64* %2, %struct.frame_info* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.frame_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store %struct.frame_info* %3, %struct.frame_info** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* @target_has_registers, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %6
  %16 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %6
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32*, i32** %8, align 8
  store i32 0, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %17
  %23 = load i64*, i64** %9, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i64*, i64** %9, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %29 = icmp ne %struct.frame_info* %28, null
  br i1 %29, label %30, label %132

30:                                               ; preds = %27
  %31 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %32 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %31)
  store %struct.frame_info* %32, %struct.frame_info** %10, align 8
  br label %33

33:                                               ; preds = %128, %30
  %34 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %35 = call i64 @frame_relative_level(%struct.frame_info* %34)
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %131

37:                                               ; preds = %33
  %38 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %39 = call i64 @get_frame_type(%struct.frame_info* %38)
  %40 = load i64, i64* @DUMMY_FRAME, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %37
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* @not_lval, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %53 = call i32 @get_frame_pc(%struct.frame_info* %52)
  %54 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %55 = call i32 @get_frame_base(%struct.frame_info* %54)
  %56 = call i32 @deprecated_find_dummy_frame_regcache(i32 %53, i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @regcache_raw_read(i32 %56, i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %51, %48
  br label %152

61:                                               ; preds = %37
  %62 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %63 = call i32 @DEPRECATED_FRAME_INIT_SAVED_REGS(%struct.frame_info* %62)
  %64 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %65 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %64)
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %127

67:                                               ; preds = %61
  %68 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %69 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %68)
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %67
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* @lval_memory, align 4
  %80 = load i32*, i32** %12, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SP_REGNUM, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load i8*, i8** %7, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i8*, i8** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %90)
  %92 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %93 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %92)
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @store_unsigned_integer(i8* %89, i32 %91, i64 %97)
  br label %99

99:                                               ; preds = %88, %85
  br label %126

100:                                              ; preds = %81
  %101 = load i64*, i64** %9, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %100
  %104 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %105 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %104)
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %9, align 8
  store i64 %109, i64* %110, align 8
  br label %111

111:                                              ; preds = %103, %100
  %112 = load i8*, i8** %7, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %111
  %115 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %116 = call i64* @deprecated_get_frame_saved_regs(%struct.frame_info* %115)
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = load i8*, i8** %7, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %122)
  %124 = call i32 @read_memory(i64 %120, i8* %121, i32 %123)
  br label %125

125:                                              ; preds = %114, %111
  br label %126

126:                                              ; preds = %125, %99
  br label %152

127:                                              ; preds = %67, %61
  br label %128

128:                                              ; preds = %127
  %129 = load %struct.frame_info*, %struct.frame_info** %10, align 8
  %130 = call %struct.frame_info* @get_next_frame(%struct.frame_info* %129)
  store %struct.frame_info* %130, %struct.frame_info** %10, align 8
  br label %33

131:                                              ; preds = %33
  br label %132

132:                                              ; preds = %131, %27
  %133 = load i32*, i32** %12, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* @lval_register, align 4
  %137 = load i32*, i32** %12, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i64*, i64** %9, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = call i64 @DEPRECATED_REGISTER_BYTE(i32 %142)
  %144 = load i64*, i64** %9, align 8
  store i64 %143, i64* %144, align 8
  br label %145

145:                                              ; preds = %141, %138
  %146 = load i8*, i8** %7, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* %11, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @deprecated_read_register_gen(i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %60, %126, %148, %145
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.frame_info* @get_next_frame(%struct.frame_info*) #1

declare dso_local i64 @frame_relative_level(%struct.frame_info*) #1

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local i32 @regcache_raw_read(i32, i32, i8*) #1

declare dso_local i32 @deprecated_find_dummy_frame_regcache(i32, i32) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @get_frame_base(%struct.frame_info*) #1

declare dso_local i32 @DEPRECATED_FRAME_INIT_SAVED_REGS(%struct.frame_info*) #1

declare dso_local i64* @deprecated_get_frame_saved_regs(%struct.frame_info*) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @read_memory(i64, i8*, i32) #1

declare dso_local i64 @DEPRECATED_REGISTER_BYTE(i32) #1

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
