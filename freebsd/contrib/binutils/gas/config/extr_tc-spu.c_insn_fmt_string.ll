; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_insn_fmt_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-spu.c_insn_fmt_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_opcode = type { i8*, i32* }

@insn_fmt_string.buf = internal global [64 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@A_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@syntax_error_arg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"REG\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IMM\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"imm\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.spu_opcode*)* @insn_fmt_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @insn_fmt_string(%struct.spu_opcode* %0) #0 {
  %2 = alloca %struct.spu_opcode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.spu_opcode* %0, %struct.spu_opcode** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* @insn_fmt_string.buf, i64 0, i64 %8
  %10 = load %struct.spu_opcode*, %struct.spu_opcode** %2, align 8
  %11 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @sprintf(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %107, %1
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.spu_opcode*, %struct.spu_opcode** %2, align 8
  %21 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %19, %24
  br i1 %25, label %26, label %110

26:                                               ; preds = %18
  %27 = load %struct.spu_opcode*, %struct.spu_opcode** %2, align 8
  %28 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %56

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @A_P, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load %struct.spu_opcode*, %struct.spu_opcode** %2, align 8
  %42 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @A_P, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* @insn_fmt_string.buf, i64 0, i64 %54
  store i8 44, i8* %55, align 1
  br label %56

56:                                               ; preds = %51, %40, %36, %26
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @A_P, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %78

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @A_P, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @syntax_error_arg, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  store i8* %70, i8** %6, align 8
  br label %77

71:                                               ; preds = %61
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @syntax_error_arg, align 4
  %74 = icmp eq i32 %72, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %71, %65
  br label %78

78:                                               ; preds = %77, %60
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i8], [64 x i8]* @insn_fmt_string.buf, i64 0, i64 %80
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @sprintf(i8* %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %3, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %106

90:                                               ; preds = %78
  %91 = load %struct.spu_opcode*, %struct.spu_opcode** %2, align 8
  %92 = getelementptr inbounds %struct.spu_opcode, %struct.spu_opcode* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @A_P, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %90
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds [64 x i8], [64 x i8]* @insn_fmt_string.buf, i64 0, i64 %104
  store i8 41, i8* %105, align 1
  br label %106

106:                                              ; preds = %101, %90, %78
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %4, align 4
  br label %18

110:                                              ; preds = %18
  %111 = load i32, i32* %3, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* @insn_fmt_string.buf, i64 0, i64 %112
  store i8 0, i8* %113, align 1
  ret i8* getelementptr inbounds ([64 x i8], [64 x i8]* @insn_fmt_string.buf, i64 0, i64 0)
}

declare dso_local i64 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
