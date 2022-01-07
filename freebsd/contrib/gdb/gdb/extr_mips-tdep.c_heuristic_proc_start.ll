; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_heuristic_proc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_heuristic_proc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@heuristic_fence_post = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@VM_MIN_ADDRESS = common dso_local global i64 0, align 8
@MIPS16_INSTLEN = common dso_local global i32 0, align 4
@MIPS_INSTLEN = common dso_local global i32 0, align 4
@stop_soon = common dso_local global i64 0, align 8
@NO_STOP_QUIETLY = common dso_local global i64 0, align 8
@heuristic_proc_start.blurb_printed = internal global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Warning: GDB can't find the start of the function at 0x%s.\00", align 1
@.str.1 = private unnamed_addr constant [517 x i8] c"\0A    GDB is unable to find the start of the function at 0x%s\0Aand thus can't determine the size of that function's stack frame.\0AThis means that GDB may be unable to access that stack frame, or\0Athe frames below it.\0A    This problem is most likely caused by an invalid program counter or\0Astack pointer.\0A    However, if you think GDB should simply search farther back\0Afrom 0x%s for code which looks like the beginning of a\0Afunction, you can increase the range of the search using the `set\0Aheuristic-fence-post' command.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @heuristic_proc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heuristic_proc_start(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @ADDR_BITS_REMOVE(i64 %9)
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @heuristic_fence_post, align 8
  %14 = sub nsw i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %133

18:                                               ; preds = %1
  %19 = load i64, i64* @heuristic_fence_post, align 8
  %20 = load i64, i64* @UINT_MAX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @VM_MIN_ADDRESS, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18
  %27 = load i64, i64* @VM_MIN_ADDRESS, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i64, i64* %3, align 8
  %30 = call i64 @pc_is_mips16(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @MIPS16_INSTLEN, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @MIPS_INSTLEN, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %4, align 8
  %41 = sub nsw i64 %40, %39
  store i64 %41, i64* %4, align 8
  br label %42

42:                                               ; preds = %126, %36
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load i64, i64* @stop_soon, align 8
  %48 = load i64, i64* @NO_STOP_QUIETLY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @paddr_nz(i64 %51)
  %53 = call i32 @warning(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @heuristic_proc_start.blurb_printed, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @paddr_nz(i64 %57)
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @paddr_nz(i64 %59)
  %61 = call i32 @printf_filtered(i8* getelementptr inbounds ([517 x i8], [517 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %60)
  store i32 1, i32* @heuristic_proc_start.blurb_printed, align 4
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %46
  store i64 0, i64* %2, align 8
  br label %133

64:                                               ; preds = %42
  %65 = load i64, i64* %4, align 8
  %66 = call i64 @pc_is_mips16(i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = load i64, i64* %4, align 8
  %70 = call zeroext i16 @mips_fetch_instruction(i64 %69)
  store i16 %70, i16* %8, align 2
  %71 = load i16, i16* %8, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %72, 63519
  %74 = icmp eq i32 %73, 59401
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i16, i16* %8, align 2
  %77 = zext i16 %76 to i32
  %78 = and i32 %77, 1792
  %79 = icmp ne i32 %78, 1792
  br i1 %79, label %98, label %80

80:                                               ; preds = %75, %68
  %81 = load i16, i16* %8, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 65408
  %84 = icmp eq i32 %83, 25472
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load i16, i16* %8, align 2
  %87 = zext i16 %86 to i32
  %88 = and i32 %87, 65408
  %89 = icmp eq i32 %88, 64384
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  %91 = load i16, i16* %8, align 2
  %92 = zext i16 %91 to i32
  %93 = and i32 %92, 63504
  %94 = icmp eq i32 %93, 61456
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %85, %80, %75
  br label %131

99:                                               ; preds = %95, %90
  %100 = load i16, i16* %8, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %101, 65280
  %103 = icmp eq i32 %102, 25344
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i16, i16* %8, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %106, 65280
  %108 = icmp eq i32 %107, 64256
  br i1 %108, label %109, label %110

109:                                              ; preds = %104, %99
  store i32 1, i32* %7, align 4
  br label %111

110:                                              ; preds = %104
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %110, %109
  br label %112

112:                                              ; preds = %111
  br label %124

113:                                              ; preds = %64
  %114 = load i64, i64* %4, align 8
  %115 = call i64 @mips_about_to_return(i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* @MIPS_INSTLEN, align 4
  %119 = mul nsw i32 2, %118
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %4, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %4, align 8
  br label %131

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %123, %112
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = load i64, i64* %4, align 8
  %130 = sub nsw i64 %129, %128
  store i64 %130, i64* %4, align 8
  br label %42

131:                                              ; preds = %117, %98
  %132 = load i64, i64* %4, align 8
  store i64 %132, i64* %2, align 8
  br label %133

133:                                              ; preds = %131, %63, %17
  %134 = load i64, i64* %2, align 8
  ret i64 %134
}

declare dso_local i64 @ADDR_BITS_REMOVE(i64) #1

declare dso_local i64 @pc_is_mips16(i64) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @paddr_nz(i64) #1

declare dso_local i32 @printf_filtered(i8*, i32, i32) #1

declare dso_local zeroext i16 @mips_fetch_instruction(i64) #1

declare dso_local i64 @mips_about_to_return(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
