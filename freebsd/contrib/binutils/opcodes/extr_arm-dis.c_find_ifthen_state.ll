; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_find_ifthen_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/opcodes/extr_arm-dis.c_find_ifthen_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disassemble_info = type { i32 (i64, i32*, i32, %struct.disassemble_info*)*, i64 (i64, %struct.disassemble_info*)* }

@ifthen_address = common dso_local global i64 0, align 8
@ifthen_state = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.disassemble_info*, i64)* @find_ifthen_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_ifthen_state(i64 %0, %struct.disassemble_info* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.disassemble_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [2 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.disassemble_info* %1, %struct.disassemble_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  store i64 %14, i64* @ifthen_address, align 8
  store i32 0, i32* @ifthen_state, align 4
  %15 = load i64, i64* %4, align 8
  store i64 %15, i64* %13, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %115, %3
  %17 = load i64, i64* %13, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16
  %20 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %21 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %20, i32 0, i32 1
  %22 = load i64 (i64, %struct.disassemble_info*)*, i64 (i64, %struct.disassemble_info*)** %21, align 8
  %23 = load i64, i64* %13, align 8
  %24 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %25 = call i64 %22(i64 %23, %struct.disassemble_info* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %116

35:                                               ; preds = %30, %27
  br label %128

36:                                               ; preds = %19
  %37 = load i64, i64* %13, align 8
  %38 = sub nsw i64 %37, 2
  store i64 %38, i64* %13, align 8
  %39 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %40 = getelementptr inbounds %struct.disassemble_info, %struct.disassemble_info* %39, i32 0, i32 0
  %41 = load i32 (i64, i32*, i32, %struct.disassemble_info*)*, i32 (i64, i32*, i32, %struct.disassemble_info*)** %40, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %44 = bitcast i8* %43 to i32*
  %45 = load %struct.disassemble_info*, %struct.disassemble_info** %5, align 8
  %46 = call i32 %41(i64 %42, i32* %44, i32 2, %struct.disassemble_info* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %128

50:                                               ; preds = %36
  %51 = load i64, i64* %6, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 8
  %61 = or i32 %56, %60
  store i32 %61, i32* %8, align 4
  br label %71

62:                                               ; preds = %50
  %63 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = shl i32 %68, 8
  %70 = or i32 %65, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %62, %53
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 63488
  %77 = icmp ult i32 %76, 59392
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* %10, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %116

83:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %74
  br label %85

85:                                               ; preds = %84, %71
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 65280
  %88 = icmp eq i32 %87, 48896
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = and i32 %90, 15
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %10, align 4
  %96 = ashr i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %93, %89, %85
  %98 = load i32, i32* %8, align 4
  %99 = and i32 %98, 63488
  %100 = icmp uge i32 %99, 59392
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %108

104:                                              ; preds = %97
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 2
  %107 = or i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %10, align 4
  %110 = icmp sge i32 %109, 8
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %111
  br label %128

115:                                              ; preds = %111, %108
  br label %16

116:                                              ; preds = %82, %34
  %117 = load i32, i32* %12, align 4
  %118 = and i32 %117, 224
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = shl i32 %119, %120
  %122 = and i32 %121, 31
  %123 = or i32 %118, %122
  store i32 %123, i32* @ifthen_state, align 4
  %124 = load i32, i32* @ifthen_state, align 4
  %125 = and i32 %124, 15
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %116
  store i32 0, i32* @ifthen_state, align 4
  br label %128

128:                                              ; preds = %35, %49, %114, %127, %116
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
