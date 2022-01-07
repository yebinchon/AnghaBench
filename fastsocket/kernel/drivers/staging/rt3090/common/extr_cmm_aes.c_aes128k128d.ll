; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_cmm_aes.c_aes128k128d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt3090/common/extr_cmm_aes.c_aes128k128d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aes128k128d(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca [16 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %24, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 %22
  store i8 %20, i8* %23, align 1
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %12

27:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %84, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 11
  br i1 %30, label %31, label %87

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %36 = load i8*, i8** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @xor_128(i8* %35, i8* %36, i8* %37)
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @next_key(i8* %39, i32 %40)
  br label %83

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %56

45:                                               ; preds = %42
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %48 = call i32 @byte_sub(i8* %46, i8* %47)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %51 = call i32 @shift_row(i8* %49, i8* %50)
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @xor_128(i8* %52, i8* %53, i8* %54)
  br label %82

56:                                               ; preds = %42
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %59 = call i32 @byte_sub(i8* %57, i8* %58)
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %62 = call i32 @shift_row(i8* %60, i8* %61)
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %64 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %65 = call i32 @mix_column(i8* %63, i8* %64)
  %66 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 4
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 4
  %68 = call i32 @mix_column(i8* %66, i8* %67)
  %69 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 8
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 8
  %71 = call i32 @mix_column(i8* %69, i8* %70)
  %72 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 12
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 12
  %74 = call i32 @mix_column(i8* %72, i8* %73)
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @xor_128(i8* %75, i8* %76, i8* %77)
  %79 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @next_key(i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %56, %45
  br label %83

83:                                               ; preds = %82, %34
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %7, align 4
  br label %28

87:                                               ; preds = %28
  ret void
}

declare dso_local i32 @xor_128(i8*, i8*, i8*) #1

declare dso_local i32 @next_key(i8*, i32) #1

declare dso_local i32 @byte_sub(i8*, i8*) #1

declare dso_local i32 @shift_row(i8*, i8*) #1

declare dso_local i32 @mix_column(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
