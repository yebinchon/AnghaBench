; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_skip_stub.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_mips-tdep.c_mips_skip_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"__mips16_ret_sf\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"__mips16_ret_df\00", align 1
@RA_REGNUM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"__mips16_call_stub_\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"__fn_stub_\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"etext\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"_etext\00", align 1
@MIPS_INSTLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @mips_skip_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mips_skip_stub(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @find_pc_partial_function(i64 %9, i8** %4, i64* %5, i32* null)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %119

13:                                               ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i8*, i8** %4, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @RA_REGNUM, align 4
  %23 = call i64 @read_signed_register(i32 %22)
  store i64 %23, i64* %2, align 8
  br label %119

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = call i64 @strncmp(i8* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 19)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %118

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 19
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp sge i32 %32, 48
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 19
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sle i32 %38, 57
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = call i64 @read_signed_register(i32 2)
  store i64 %41, i64* %2, align 8
  br label %119

42:                                               ; preds = %34, %28
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 19
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 115
  br i1 %47, label %54, label %48

48:                                               ; preds = %42
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 19
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 100
  br i1 %53, label %54, label %116

54:                                               ; preds = %48, %42
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %114

58:                                               ; preds = %54
  %59 = call i64 @read_signed_register(i32 2)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i64 @find_pc_partial_function(i64 %60, i8** %4, i64* null, i32* null)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i64, i64* %6, align 8
  store i64 %64, i64* %2, align 8
  br label %119

65:                                               ; preds = %58
  %66 = load i8*, i8** %4, align 8
  %67 = call i64 @strncmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 10)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i8*, i8** %4, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %2, align 8
  br label %119

79:                                               ; preds = %73, %69, %65
  store i32 0, i32* %8, align 4
  store i64 0, i64* %3, align 8
  br label %80

80:                                               ; preds = %106, %79
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 20
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @mips_fetch_instruction(i64 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, -65536
  %88 = icmp eq i32 %87, 1006698496
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 %90, 16
  %92 = and i32 %91, -65536
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %3, align 8
  br label %105

94:                                               ; preds = %83
  %95 = load i32, i32* %7, align 4
  %96 = and i32 %95, -65536
  %97 = icmp eq i32 %96, 606142464
  br i1 %97, label %98, label %104

98:                                               ; preds = %94
  %99 = load i64, i64* %3, align 8
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, 65535
  %102 = sext i32 %101 to i64
  %103 = or i64 %99, %102
  store i64 %103, i64* %2, align 8
  br label %119

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  %109 = load i64, i64* @MIPS_INSTLEN, align 8
  %110 = load i64, i64* %6, align 8
  %111 = add nsw i64 %110, %109
  store i64 %111, i64* %6, align 8
  br label %80

112:                                              ; preds = %80
  %113 = load i64, i64* %6, align 8
  store i64 %113, i64* %2, align 8
  br label %119

114:                                              ; preds = %54
  %115 = call i64 @read_signed_register(i32 18)
  store i64 %115, i64* %2, align 8
  br label %119

116:                                              ; preds = %48
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %24
  store i64 0, i64* %2, align 8
  br label %119

119:                                              ; preds = %118, %114, %112, %98, %77, %63, %40, %21, %12
  %120 = load i64, i64* %2, align 8
  ret i64 %120
}

declare dso_local i64 @find_pc_partial_function(i64, i8**, i64*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @read_signed_register(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @mips_fetch_instruction(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
