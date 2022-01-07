; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_thumb_get_next_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_thumb_get_next_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEPRECATED_REGISTER_SIZE = common dso_local global i64 0, align 8
@ARM_SP_REGNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Infinite loop detected\00", align 1
@ARM_PS_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @thumb_get_next_pc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i16, align 2
  store i32 %0, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call zeroext i16 @read_memory_integer(i32 %14, i32 2)
  store i16 %15, i16* %4, align 2
  %16 = load i32, i32* %2, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %5, align 4
  %18 = load i16, i16* %4, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 65280
  %21 = icmp eq i32 %20, 48384
  br i1 %21, label %22, label %46

22:                                               ; preds = %1
  %23 = load i16, i16* %4, align 2
  %24 = call i32 @bits(i16 zeroext %23, i32 0, i32 7)
  %25 = call i64 @bitcount(i32 %24)
  %26 = load i64, i64* @DEPRECATED_REGISTER_SIZE, align 8
  %27 = mul i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load i32, i32* @ARM_SP_REGNUM, align 4
  %29 = call i8* @read_register(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %6, align 8
  %34 = add i64 %32, %33
  %35 = trunc i64 %34 to i32
  %36 = call zeroext i16 @read_memory_integer(i32 %35, i32 4)
  %37 = zext i16 %36 to i32
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ADDR_BITS_REMOVE(i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %22
  br label %145

46:                                               ; preds = %1
  %47 = load i16, i16* %4, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 61440
  %50 = icmp eq i32 %49, 53248
  br i1 %50, label %51, label %74

51:                                               ; preds = %46
  %52 = load i32, i32* @ARM_PS_REGNUM, align 4
  %53 = call i8* @read_register(i32 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %8, align 8
  %55 = load i16, i16* %4, align 2
  %56 = call i32 @bits(i16 zeroext %55, i32 8, i32 11)
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 15
  br i1 %59, label %60, label %73

60:                                               ; preds = %51
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i64 @condition_true(i64 %61, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = load i64, i64* %3, align 8
  %67 = load i16, i16* %4, align 2
  %68 = call i32 @sbits(i16 zeroext %67, i32 0, i32 7)
  %69 = shl i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = add i64 %66, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %65, %60, %51
  br label %144

74:                                               ; preds = %46
  %75 = load i16, i16* %4, align 2
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 63488
  %78 = icmp eq i32 %77, 57344
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i64, i64* %3, align 8
  %81 = load i16, i16* %4, align 2
  %82 = call i32 @sbits(i16 zeroext %81, i32 0, i32 10)
  %83 = shl i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = add i64 %80, %84
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %143

87:                                               ; preds = %74
  %88 = load i16, i16* %4, align 2
  %89 = zext i16 %88 to i32
  %90 = and i32 %89, 63488
  %91 = icmp eq i32 %90, 61440
  br i1 %91, label %92, label %115

92:                                               ; preds = %87
  %93 = load i32, i32* %2, align 4
  %94 = add nsw i32 %93, 2
  %95 = call zeroext i16 @read_memory_integer(i32 %94, i32 2)
  store i16 %95, i16* %10, align 2
  %96 = load i16, i16* %4, align 2
  %97 = call i32 @sbits(i16 zeroext %96, i32 0, i32 10)
  %98 = shl i32 %97, 12
  %99 = load i16, i16* %10, align 2
  %100 = call i32 @bits(i16 zeroext %99, i32 0, i32 10)
  %101 = shl i32 %100, 1
  %102 = add nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %6, align 8
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* %6, align 8
  %106 = add i64 %104, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %5, align 4
  %108 = load i16, i16* %10, align 2
  %109 = call i32 @bits(i16 zeroext %108, i32 11, i32 12)
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %92
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, -4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %111, %92
  br label %142

115:                                              ; preds = %87
  %116 = load i16, i16* %4, align 2
  %117 = zext i16 %116 to i32
  %118 = and i32 %117, 65280
  %119 = icmp eq i32 %118, 18176
  br i1 %119, label %120, label %141

120:                                              ; preds = %115
  %121 = load i16, i16* %4, align 2
  %122 = call i32 @bits(i16 zeroext %121, i32 3, i32 6)
  %123 = icmp eq i32 %122, 15
  br i1 %123, label %124, label %127

124:                                              ; preds = %120
  %125 = load i64, i64* %3, align 8
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %5, align 4
  br label %132

127:                                              ; preds = %120
  %128 = load i16, i16* %4, align 2
  %129 = call i32 @bits(i16 zeroext %128, i32 3, i32 6)
  %130 = call i8* @read_register(i32 %129)
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %127, %124
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @ADDR_BITS_REMOVE(i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %2, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %132
  br label %141

141:                                              ; preds = %140, %115
  br label %142

142:                                              ; preds = %141, %114
  br label %143

143:                                              ; preds = %142, %79
  br label %144

144:                                              ; preds = %143, %73
  br label %145

145:                                              ; preds = %144, %45
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local zeroext i16 @read_memory_integer(i32, i32) #1

declare dso_local i64 @bitcount(i32) #1

declare dso_local i32 @bits(i16 zeroext, i32, i32) #1

declare dso_local i8* @read_register(i32) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i64 @condition_true(i64, i64) #1

declare dso_local i32 @sbits(i16 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
