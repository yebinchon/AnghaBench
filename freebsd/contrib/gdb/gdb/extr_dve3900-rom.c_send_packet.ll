; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dve3900-rom.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PESC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, i32, i32)* @send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packet(i8 signext %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i8, i8* %5, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 112
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i8, i8* @PESC, align 1
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %28, i8* %29, align 1
  %30 = load i8, i8* %5, align 1
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  store i8 %34, i8* %35, align 1
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 3
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %42 = call i32 @debug_write(i8* %41, i32 4)
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %132

45:                                               ; preds = %27
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @debug_write(i8* %46, i32 %47)
  %49 = load i8, i8* %5, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 112
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %54, i8* %55, align 1
  %56 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %57 = call i32 @debug_write(i8* %56, i32 1)
  br label %58

58:                                               ; preds = %52, %45
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %84, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %87

63:                                               ; preds = %59
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 255
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %83

78:                                               ; preds = %63
  %79 = load i32, i32* %13, align 4
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %78, %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %59

87:                                               ; preds = %59
  %88 = load i8, i8* %5, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 112
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = and i32 %96, 255
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %106

100:                                              ; preds = %91
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, 255
  %103 = shl i32 %102, 8
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %100, %95
  br label %107

107:                                              ; preds = %106, %87
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, 65535
  %110 = load i32, i32* %11, align 4
  %111 = ashr i32 %110, 16
  %112 = and i32 %111, 65535
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = ashr i32 %114, 16
  %116 = and i32 %115, 1
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = xor i32 %119, -1
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %11, align 4
  %122 = ashr i32 %121, 8
  %123 = and i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  store i8 %124, i8* %125, align 1
  %126 = load i32, i32* %11, align 4
  %127 = and i32 %126, 255
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  store i8 %128, i8* %129, align 1
  %130 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %131 = call i32 @debug_write(i8* %130, i32 2)
  br label %132

132:                                              ; preds = %107, %27
  ret void
}

declare dso_local i32 @debug_write(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
