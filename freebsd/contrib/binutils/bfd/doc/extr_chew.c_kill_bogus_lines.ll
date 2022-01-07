; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_kill_bogus_lines.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/doc/extr_chew.c_kill_bogus_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tos = common dso_local global i32* null, align 8
@pc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kill_bogus_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kill_bogus_lines() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = call i32 @init_string(i32* %5)
  br label %7

7:                                                ; preds = %13, %0
  %8 = load i32*, i32** @tos, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call signext i8 @at(i32* %8, i32 %9)
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 10
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %7

16:                                               ; preds = %7
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %3, align 4
  %18 = load i32*, i32** @tos, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call signext i8 @at(i32* %18, i32 %19)
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = call i32 @catchar(i32* %5, i8 signext 10)
  br label %25

25:                                               ; preds = %23, %16
  br label %26

26:                                               ; preds = %31, %25
  %27 = load i32*, i32** @tos, align 8
  %28 = load i32, i32* %2, align 4
  %29 = call signext i8 @at(i32* %27, i32 %28)
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %26

34:                                               ; preds = %26
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %48, %34
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32*, i32** @tos, align 8
  %42 = load i32, i32* %2, align 4
  %43 = call signext i8 @at(i32* %41, i32 %42)
  %44 = call i64 @isspace(i8 zeroext %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %40, %37
  %47 = phi i1 [ false, %37 ], [ %45, %40 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %2, align 4
  br label %37

51:                                               ; preds = %46
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %54

54:                                               ; preds = %129, %51
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %132

58:                                               ; preds = %54
  %59 = load i32*, i32** @tos, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call signext i8 @at(i32* %59, i32 %60)
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %81

64:                                               ; preds = %58
  %65 = load i32*, i32** @tos, align 8
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  %68 = call signext i8 @at(i32* %65, i32 %67)
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 10
  br i1 %70, label %71, label %81

71:                                               ; preds = %64
  %72 = load i32*, i32** @tos, align 8
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 2
  %75 = call signext i8 @at(i32* %72, i32 %74)
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %112

81:                                               ; preds = %71, %64, %58
  %82 = load i32*, i32** @tos, align 8
  %83 = load i32, i32* %3, align 4
  %84 = call signext i8 @at(i32* %82, i32 %83)
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 46
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = load i32, i32* %1, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 2, i32* %4, align 4
  br label %111

91:                                               ; preds = %87, %81
  %92 = load i32*, i32** @tos, align 8
  %93 = load i32, i32* %3, align 4
  %94 = call signext i8 @at(i32* %92, i32 %93)
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %110

97:                                               ; preds = %91
  %98 = load i32*, i32** @tos, align 8
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  %101 = call signext i8 @at(i32* %98, i32 %100)
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %104, %97, %91
  br label %111

111:                                              ; preds = %110, %90
  br label %112

112:                                              ; preds = %111, %78
  %113 = load i32*, i32** @tos, align 8
  %114 = load i32, i32* %3, align 4
  %115 = call signext i8 @at(i32* %113, i32 %114)
  %116 = call i32 @catchar(i32* %5, i8 signext %115)
  %117 = load i32*, i32** @tos, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call signext i8 @at(i32* %117, i32 %118)
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 10
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  store i32 1, i32* %1, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 1, i32* %4, align 4
  br label %127

126:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %125
  br label %129

128:                                              ; preds = %112
  store i32 0, i32* %1, align 4
  br label %129

129:                                              ; preds = %128, %127
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %54

132:                                              ; preds = %54
  %133 = call i32 @catchar(i32* %5, i8 signext 10)
  %134 = load i32, i32* @pc, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @pc, align 4
  %136 = load i32*, i32** @tos, align 8
  %137 = call i32 @delete_string(i32* %136)
  %138 = load i32, i32* %5, align 4
  %139 = load i32*, i32** @tos, align 8
  store i32 %138, i32* %139, align 4
  ret void
}

declare dso_local i32 @init_string(i32*) #1

declare dso_local signext i8 @at(i32*, i32) #1

declare dso_local i32 @catchar(i32*, i8 signext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

declare dso_local i32 @delete_string(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
