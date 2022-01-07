; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_do_examine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_do_examine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.format_data = type { i8, i8, i32 }

@next_address = common dso_local global i32 0, align 4
@next_section = common dso_local global i32* null, align 8
@examine_i_type = common dso_local global %struct.type* null, align 8
@examine_b_type = common dso_local global %struct.type* null, align 8
@examine_h_type = common dso_local global %struct.type* null, align 8
@examine_w_type = common dso_local global %struct.type* null, align 8
@examine_g_type = common dso_local global %struct.type* null, align 8
@QUIT = common dso_local global i32 0, align 4
@gdb_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@last_examine_address = common dso_local global i32 0, align 4
@last_examine_value = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32*)* @do_examine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_examine(i64 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.format_data, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = bitcast %struct.format_data* %4 to i64*
  store i64 %0, i64* %13, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i8 0, i8* %7, align 1
  store i32 1, i32* %9, align 4
  store %struct.type* null, %struct.type** %10, align 8
  %14 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 0
  %15 = load i8, i8* %14, align 4
  store i8 %15, i8* %7, align 1
  %16 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  store i8 %17, i8* %8, align 1
  %18 = getelementptr inbounds %struct.format_data, %struct.format_data* %4, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* @next_address, align 4
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** @next_section, align 8
  %22 = load i8, i8* %7, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 115
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i8, i8* %7, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 105
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %3
  store i8 98, i8* %8, align 1
  br label %30

30:                                               ; preds = %29, %25
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 105
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load %struct.type*, %struct.type** @examine_i_type, align 8
  store %struct.type* %35, %struct.type** %10, align 8
  br label %64

36:                                               ; preds = %30
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 98
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load %struct.type*, %struct.type** @examine_b_type, align 8
  store %struct.type* %41, %struct.type** %10, align 8
  br label %63

42:                                               ; preds = %36
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 104
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load %struct.type*, %struct.type** @examine_h_type, align 8
  store %struct.type* %47, %struct.type** %10, align 8
  br label %62

48:                                               ; preds = %42
  %49 = load i8, i8* %8, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 119
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load %struct.type*, %struct.type** @examine_w_type, align 8
  store %struct.type* %53, %struct.type** %10, align 8
  br label %61

54:                                               ; preds = %48
  %55 = load i8, i8* %8, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 103
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load %struct.type*, %struct.type** @examine_g_type, align 8
  store %struct.type* %59, %struct.type** %10, align 8
  br label %60

60:                                               ; preds = %58, %54
  br label %61

61:                                               ; preds = %60, %52
  br label %62

62:                                               ; preds = %61, %46
  br label %63

63:                                               ; preds = %62, %40
  br label %64

64:                                               ; preds = %63, %34
  store i32 8, i32* %12, align 4
  %65 = load i8, i8* %8, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 119
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i32 4, i32* %12, align 4
  br label %69

69:                                               ; preds = %68, %64
  %70 = load i8, i8* %8, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 103
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 2, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i8, i8* %7, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 115
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i8, i8* %7, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 105
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %74
  store i32 1, i32* %12, align 4
  br label %83

83:                                               ; preds = %82, %78
  br label %84

84:                                               ; preds = %131, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %135

87:                                               ; preds = %84
  %88 = load i32, i32* @QUIT, align 4
  %89 = load i32, i32* @next_address, align 4
  %90 = load i32, i32* @gdb_stdout, align 4
  %91 = call i32 @print_address(i32 %89, i32 %90)
  %92 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %126, %87
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp sgt i32 %98, 0
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i1 [ false, %94 ], [ %99, %97 ]
  br i1 %101, label %102, label %131

102:                                              ; preds = %100
  %103 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @next_address, align 4
  store i32 %104, i32* @last_examine_address, align 4
  %105 = load i64, i64* @last_examine_value, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* @last_examine_value, align 8
  %109 = call i32 @value_free(i64 %108)
  br label %110

110:                                              ; preds = %107, %102
  %111 = load %struct.type*, %struct.type** %10, align 8
  %112 = load i32, i32* @next_address, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = call i64 @value_at_lazy(%struct.type* %111, i32 %112, i32* %113)
  store i64 %114, i64* @last_examine_value, align 8
  %115 = load i64, i64* @last_examine_value, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i64, i64* @last_examine_value, align 8
  %119 = call i32 @release_value(i64 %118)
  br label %120

120:                                              ; preds = %117, %110
  %121 = load i64, i64* @last_examine_value, align 8
  %122 = load i8, i8* %7, align 1
  %123 = load i8, i8* %8, align 1
  %124 = load i32, i32* @gdb_stdout, align 4
  %125 = call i32 @print_formatted(i64 %121, i8 signext %122, i8 signext %123, i32 %124)
  br label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* %9, align 4
  br label %94

131:                                              ; preds = %100
  %132 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* @gdb_stdout, align 4
  %134 = call i32 @gdb_flush(i32 %133)
  br label %84

135:                                              ; preds = %84
  ret void
}

declare dso_local i32 @print_address(i32, i32) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @value_free(i64) #1

declare dso_local i64 @value_at_lazy(%struct.type*, i32, i32*) #1

declare dso_local i32 @release_value(i64) #1

declare dso_local i32 @print_formatted(i64, i8 signext, i8 signext, i32) #1

declare dso_local i32 @gdb_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
