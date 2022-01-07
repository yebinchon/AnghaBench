; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_smbencrypt.c_SMBencrypt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cifs/extr_smbencrypt.c_SMBencrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SMBencrypt(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [14 x i8], align 1
  %10 = alloca [16 x i8], align 16
  %11 = alloca [21 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i8 signext 0, i32 14)
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %15 = call i32 @memset(i8* %14, i8 signext 0, i32 16)
  %16 = getelementptr inbounds [21 x i8], [21 x i8]* %11, i64 0, i64 0
  %17 = call i32 @memset(i8* %16, i8 signext 0, i32 21)
  %18 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @memcpy(i8* %18, i8* %19, i32 14)
  %21 = getelementptr inbounds [14 x i8], [14 x i8]* %9, i64 0, i64 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %23 = call i32 @E_P16(i8* %21, i8* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %37

28:                                               ; preds = %3
  %29 = getelementptr inbounds [21 x i8], [21 x i8]* %11, i64 0, i64 0
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %31 = call i32 @memcpy(i8* %29, i8* %30, i32 16)
  %32 = getelementptr inbounds [21 x i8], [21 x i8]* %11, i64 0, i64 0
  %33 = load i8*, i8** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @E_P24(i8* %32, i8* %33, i8* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %28, %26
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @E_P16(i8*, i8*) #1

declare dso_local i32 @E_P24(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
